import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list_app/view_models/items_view_model.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemsViewModel>(builder: (context, viewmodel, child) {
      return Container(
          margin: const EdgeInsets.only(left: 15),
          child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text("Lista de Compras",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: viewmodel.clrlv3)))));
    });
  }
}
