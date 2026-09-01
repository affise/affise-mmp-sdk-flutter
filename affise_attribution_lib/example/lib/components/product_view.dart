import 'package:affise_attribution_lib/affise.dart';
import 'package:affise_attribution_lib_example/components/affise_button.dart';
import 'package:flutter/material.dart';

typedef BuyCallback = void Function(AffiseProduct);

class ProductView extends StatelessWidget {
  final AffiseProduct product;
  final BuyCallback onBuy;

  const ProductView(this.product, {required this.onBuy, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  product.description,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surfaceTint,
                  ),
                ),
                if ((product.subscription != null))
                  Text(
                    "${product.subscription?.numberOfUnits} ${product.subscription?.timeUnit?.value}",
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
          const SizedBox.square(dimension: 8),
          Text(
            product.price?.formattedPrice ?? "-",
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox.square(dimension: 8),
          AffiseButton(
            onPressed: () {
              onBuy.call(product);
            },
            text: "Buy",
            backgroundColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
