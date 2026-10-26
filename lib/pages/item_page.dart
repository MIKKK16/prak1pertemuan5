import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/app_footer.dart';

class ItemPage extends StatelessWidget {
  final Item? item;

  const ItemPage({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    final itemArgs =
        item ?? ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'item-${itemArgs.name}',
              child: Image.network(
                itemArgs.imageUrl,
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => const SizedBox(
                  height: 260,
                  child: Center(child: Icon(Icons.image_not_supported)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemArgs.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Rp ${itemArgs.price}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text('${itemArgs.rating}'),
                      const SizedBox(width: 24),
                      const Icon(Icons.inventory_2_outlined),
                      const SizedBox(width: 4),
                      Text('Stok: ${itemArgs.stock}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppFooter(),
    );
  }
}
