import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list_app/view_models/items_view_model.dart';
import 'package:shopping_list_app/views/bottomsheets/add_item_bottom_sheet_views.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemsViewModel>(builder: (context, viewModel, child) {
      return SizedBox(
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: viewModel.clrlv3,
                foregroundColor: viewModel.clrlv1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              viewModel.bottomSheetBuilder(
                  const AddItemBottomSheetView(), context);
            },
            child: const Icon(Icons.add, size: 30)),
      );
    });
  }
}
