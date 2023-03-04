import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list_app/view_models/items_view_model.dart';
import 'package:shopping_list_app/views/shopping_items_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ItemsViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShoppingItemsView(),
    );
  }
}
