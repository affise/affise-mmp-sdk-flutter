import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../components/affise_button.dart';
import '../../components/show_alert.dart';
import '../../factories/api_factory.dart';

class ApiView extends StatefulWidget {
  final ValueNotifier<String> output;

  const ApiView(this.output, {super.key});

  @override
  State<StatefulWidget> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  TextEditingController output = TextEditingController();
  ApiFactory factory = ApiFactory();
  Map<String, Function> apis = {};

  @override
  void initState() {
    super.initState();
    widget.output.addListener(() {
      setOutput(widget.output.value);
    });
    factory.output = setOutput;
    factory.context = context;
    factory.alert = alert;
    apis = factory.create();
  }

  @override
  void dispose() {
    output.dispose();
    super.dispose();
  }

  void setOutput(String data) {
    output.text = data;

    if (kDebugMode) {
      print(data);
    }
  }

  void alert({required String title, required String text}) {
    showAlert(context, title: title, text: text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: TextField(
            readOnly: true,
            minLines: 1,
            maxLines: 3,
            controller: output,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            decoration: InputDecoration(
              // isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  output.clear();
                },
                icon: Icon(
                  Icons.clear,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 8, right: 8),
            itemCount: apis.length,
            itemBuilder: (context, index) {
              var key = apis.keys.elementAt(index);
              return AffiseButton(
                onPressed: () => {apis[key]?.call()},
                text: key,
              );
            },
          ),
        ),
      ],
    );
  }
}
