import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list_app/view_models/items_view_model.dart';

class ItemInfoView extends StatelessWidget {
  const ItemInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemsViewModel>(builder: (context, viewmodel, child) {
      return Container(
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      color: viewmodel.clrlv2,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              "${viewmodel.numItems}",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: viewmodel.clrlv3),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text("Total de itens",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: viewmodel.clrlv3)),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      color: viewmodel.clrlv2,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              "${viewmodel.remainingItems}",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: viewmodel.clrlv3),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text("Itens restantes",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: viewmodel.clrlv3)),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: FittedBox(
                    child: Icon(
                  Icons.shopping_bag,
                  color: viewmodel.clrlv3,
                  size: 54,
                )),
              ),
            ),
          ],
        ),
      );
    });
  }
}
