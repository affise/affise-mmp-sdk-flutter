import 'package:affise_attribution_lib/affise.dart';
import 'package:flutter/material.dart';

import '../../components/affise_button.dart';
import '../../components/product_view.dart';
import '../../components/show_alert.dart';

class AffiseStore extends StatefulWidget {
  const AffiseStore({super.key});

  @override
  State<StatefulWidget> createState() => _AffiseStoreState();
}

// Product Id and corresponding product type
const storeData = <String, AffiseProductType>{
  "com.test.invalid": AffiseProductType.CONSUMABLE,
  "com.test.prod_1": AffiseProductType.CONSUMABLE,
  "com.test.prod_2": AffiseProductType.CONSUMABLE,
  "com.test.prod_3": AffiseProductType.NON_CONSUMABLE,
  "com.test.sub_1": AffiseProductType.NON_RENEWABLE_SUBSCRIPTION,
  "com.test.sub_2": AffiseProductType.RENEWABLE_SUBSCRIPTION,
  "com.test.sub_3": AffiseProductType.RENEWABLE_SUBSCRIPTION,
};


class _AffiseStoreState extends State<AffiseStore> {
  List<String> invalidIds = [];
  List<AffiseProduct> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AffiseButton(
            onPressed: () {
              fetchProducts(skipCheck: false);
            },
            text: 'Fetch Products',
          ),
          const SizedBox(height: 8),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(.05),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(.1),
                  thickness: 2,
                  height: 1,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductView(
                    products[index],
                    onBuy: (product) {
                      purchase(
                        product,
                        storeData[product.productId] ?? AffiseProductType.CONSUMABLE
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void fetchProducts({bool skipCheck = true}) {
    Affise.module.fetchProducts(storeData.keys.toList(), (result) {
      if (result.isSuccess) {
        var value = result.asSuccess;
        setState(() {
          products = value.products;
          products.sort((a, b) => a.productId.compareTo(b.productId));
          invalidIds = value.invalidIds;
          if (skipCheck == false && invalidIds.isNotEmpty) {
            alert(title: "Invalid Ids", text: invalidIds.join("\n"));
          }
        });
      } else {
        alert(title: "Error", text: result.asFailure);
      }
    });
  }

  void purchase(AffiseProduct product, AffiseProductType type) {
    Affise.module.purchase(product, type, (result) {
      if (result.isSuccess) {
        var purchasedInfo = result.asSuccess;
        setState(() {
          alert(
              title: "Purchased",
              text: purchasedInfo.product?.title ?? purchasedInfo.purchase ?? "$product");
        });
      } else {
        alert(title: "Error", text: result.asFailure);
      }
    });
  }

  void alert({required String title, required String text}) {
    showAlert(context, title: title, text: text);
  }
}
