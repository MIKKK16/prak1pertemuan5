# Pertemuan 5: Navigasi dan Rute (Aplikasi Belanja)

**Nama:** David Pratama Tampubolon
**NIM:** 23520001

**Praktek 1 :**
Aplikasi daftar belanja multi halaman dengan Flutter. Data produk dikirim dari
`HomePage` ke `ItemPage` memakai Navigator 1.0 (named route + arguments), lalu
dimigrasikan ke `go_router`.

## Struktur Project

```
lib/
├── main.dart              # Navigator 1.0 (named route)
├── main_gorouter.dart     # Versi go_router
├── models/item.dart       # Model Item + data contoh
├── pages/
│   ├── home_page.dart     # GridView produk
│   └── item_page.dart     # Detail produk
└── widgets/
    ├── item_card.dart     # Kartu produk (dengan Hero)
    └── app_footer.dart    # Footer Nama dan NIM
```

## Cara Menjalankan

```bash
flutter pub get
flutter run                          # versi Navigator
flutter run -t lib/main_gorouter.dart  # versi go_router
```

## Tugas 1: Mengirim data dengan arguments

Pada `main.dart`, `Navigator.pushNamed` ditambah parameter `arguments`:

```dart
Navigator.pushNamed(context, '/item', arguments: item);
```
## Tugas 2: Membaca data dengan ModalRoute

Pada `ItemPage`, data dibaca di dalam `build`:

```dart
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```
## Tugas 3: Atribut foto, stok, rating, dan GridView

Model `Item` ditambah `imageUrl`, `stock`, dan `rating`. `HomePage` memakai
`GridView.builder` dengan 2 kolom seperti aplikasi marketplace.

## Tugas 4: Hero widget

Gambar produk dibungkus `Hero` dengan tag yang sama (`item-<nama>`) di
`ItemCard` dan `ItemPage`, sehingga gambar beranimasi saat berpindah halaman.

## Tugas 5: Poles tampilan dan pecah widget

UI dipecah menjadi widget kecil: `ItemCard` dan `AppFooter`. Footer berisi
Nama dan NIM.

## Tugas 6: Migrasi ke go_router

Package ditambahkan dengan `flutter pub add go_router`. Router didefinisikan di
`main_gorouter.dart` dengan `MaterialApp.router`. Pindah halaman memakai
`context.push('/item', extra: item)`, dan data dibaca lewat `state.extra`.

```dart
GoRoute(
  path: '/item',
  builder: (context, state) => ItemPage(item: state.extra as Item),
),
```

> Screenshot hasil:

<img width="1918" height="1079" alt="Screenshot 2026-10-26 151501" src="https://github.com/user-attachments/assets/a765f80a-14a2-4522-9956-becaa01ccb7c" />

<img width="502" height="887" alt="Screenshot 2026-10-26 151425" src="https://github.com/user-attachments/assets/c02be980-62c4-44e0-9c56-31b33f1b2f00" />

<img width="501" height="891" alt="Screenshot 2026-10-26 151440" src="https://github.com/user-attachments/assets/605c6776-2de8-4254-a46c-363f77396efe" />

**Praktek 2 :**

<img width="1918" height="1033" alt="Screenshot 2026-10-26 154603" src="https://github.com/user-attachments/assets/8d510d0c-a5f2-4ec7-9b45-2a6d1fd5c7c8" />

<img width="1919" height="1032" alt="Screenshot 2026-10-26 154635" src="https://github.com/user-attachments/assets/9af818f0-c1d3-4d8c-a59b-e937e75fa0cd" />

<img width="1919" height="1029" alt="Screenshot 2026-10-26 154703" src="https://github.com/user-attachments/assets/bacb5922-b5e6-4d98-a6c8-cd42c9ac4a41" />

<img width="1919" height="1034" alt="Screenshot 2026-10-26 154732" src="https://github.com/user-attachments/assets/edaa2eac-340f-4d7a-bc2f-716ad3bd8af4" />

