import 'package:flutter/material.dart';
import 'package:shopping_list_app/views/add_item_view.dart';
import 'package:shopping_list_app/views/header_view.dart';
import 'package:shopping_list_app/views/item_info_view.dart';
import 'package:shopping_list_app/views/items_list_view.dart';

class ShoppingItemsView extends StatelessWidget {
  const ShoppingItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: const [
            Expanded(flex: 1, child: HeaderView()),
            Expanded(flex: 1, child: ItemInfoView()),
            Expanded(flex: 6, child: ItemsListView())
          ],
        ),
      ),
      floatingActionButton: const AddItemView(),
    );
  }
}
