import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';

void main() {
  testWidgets('HomePage menampilkan daftar produk', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: HomePage(onItemTap: (context, item) {})),
    );

    expect(find.text(dummyItems.first.name), findsOneWidget);
  });
}