import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/app_footer.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {

  final void Function(BuildContext context, Item item) onItemTap;

  HomePage({super.key, required this.onItemTap});

  final List<Item> items = dummyItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Belanja'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(
            item: item,
            onTap: () => onItemTap(context, item),
          );
        },
      ),
      bottomNavigationBar: const AppFooter(),
    );
  }
}
