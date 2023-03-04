import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list_app/model/item.dart';
import 'package:shopping_list_app/view_models/items_view_model.dart';

class AddItemBottomSheetView extends StatelessWidget {
  const AddItemBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    return Consumer<ItemsViewModel>(builder: (context, viewmodel, child) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 80,
          child: Center(
            child: SizedBox(
              height: 60,
              width: 250,
              child: TextField(
                onSubmitted: (value) {
                  if (entryController.text.isNotEmpty) {
                    Item newItem = Item(value, false);
                    viewmodel.addItem(newItem);
                    entryController.clear();
                    Navigator.of(context).pop();
                  }
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 5),
                    filled: true,
                    fillColor: viewmodel.clrlv2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none))),
                autofocus: true,
                autocorrect: false,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: viewmodel.clrlv3,
                style: TextStyle(color: viewmodel.clrlv3),
                controller: entryController,
              ),
            ),
          ),
        ),
      );
    });
  }
}
