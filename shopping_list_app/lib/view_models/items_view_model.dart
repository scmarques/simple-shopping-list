import 'package:flutter/material.dart';

import '../model/item.dart';

class ItemsViewModel extends ChangeNotifier {
  List<Item> items = <Item>[];

  int get numItems => items.length;

  bool getItemStatus(int taskIndex) {
    return items[taskIndex].isMarked;
  }

  int get remainingItems => items.where((item) => !item.isMarked).length;

  Color clrlv1 = Colors.grey.shade50;
  Color clrlv2 = Colors.grey.shade300;
  Color clrlv3 = Colors.grey.shade900;
  Color clrlv4 = Color.fromARGB(31, 10, 12, 29);
  Color clrlv5 = Color.fromARGB(255, 209, 70, 70);

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }

  void addItem(Item newItem) {
    items.add(newItem);
    notifyListeners();
  }

  void setItemMarked(int index, bool isMarked) {
    items[index].isMarked = isMarked;
    notifyListeners();
  }

  String getTextTitle(int index) {
    return items[index].name;
  }

  void deleteItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
