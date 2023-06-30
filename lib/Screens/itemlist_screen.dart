import 'package:flutter/material.dart';
import 'package:getxassignment/Models/Todo/item_model.dart';

// ignore: must_be_immutable
class ItemList extends StatelessWidget {
  String? title;
  String? description;

  ItemList({super.key, required ItemModel itemlist}) {
    title = itemlist.title;
    description = itemlist.description;
    super.key;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: Center(
        // child: ElevatedButton(
        //   child: Text('Go Back'),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Text(
              '$title $description',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
