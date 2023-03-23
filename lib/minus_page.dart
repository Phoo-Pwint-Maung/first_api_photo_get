import 'package:api_photo_get/model/count_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class MinusPage extends StatefulWidget {
  final title;
  const MinusPage({super.key, required this.title});

  @override
  State<MinusPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MinusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<CountModel>(builder: (context, countModel, child) {
                return Text(
                  "${countModel.x}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }),
              const Text(
                "Total",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {
                  // context.read<CountModel>().decrement(); အတူတူပဲ
                  if (Provider.of<CountModel>(context, listen: false).x > 0) {
                    Provider.of<CountModel>(context, listen: false).decrement();
                  }
                },
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("next Page"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
