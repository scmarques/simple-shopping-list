import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list_app/view_models/items_view_model.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemsViewModel>(builder: (context, viewmodel, child) {
      return Container(
        decoration: BoxDecoration(
            color: viewmodel.clrlv2,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(30))),
        child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  viewmodel.deleteItem(index);
                },
                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: viewmodel.clrlv5,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: const Icon(Icons.delete_forever,
                          color: Colors.white)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: viewmodel.clrlv1,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(width: 2, color: viewmodel.clrlv3),
                        checkColor: viewmodel.clrlv4,
                        activeColor: viewmodel.clrlv3,
                        value: viewmodel.getItemStatus(index),
                        onChanged: (value) {
                          viewmodel.setItemMarked(index, value!);
                        },
                      ),
                      title: Text(
                        viewmodel.getTextTitle(index),
                        style: TextStyle(
                          color: viewmodel.clrlv3,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
            itemCount: viewmodel.numItems),
      );
    });
  }
}
