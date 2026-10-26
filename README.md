# Praktikum 5: Navigasi dan Rute (Aplikasi Belanja)

**Nama:** (isi nama Anda)
**NIM:** (isi NIM Anda)

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

> Screenshot: `screenshots/01_home.png`
>
> Penjelasan: (tulis dengan kata-kata Anda sendiri)

## Tugas 2: Membaca data dengan ModalRoute

Pada `ItemPage`, data dibaca di dalam `build`:

```dart
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
```

> Screenshot: `screenshots/02_detail.png`
>
> Penjelasan: (tulis dengan kata-kata Anda sendiri)

## Tugas 3: Atribut foto, stok, rating, dan GridView

Model `Item` ditambah `imageUrl`, `stock`, dan `rating`. `HomePage` memakai
`GridView.builder` dengan 2 kolom seperti aplikasi marketplace.

> Screenshot: `screenshots/03_gridview.png`
>
> Penjelasan: (tulis dengan kata-kata Anda sendiri)

## Tugas 4: Hero widget

Gambar produk dibungkus `Hero` dengan tag yang sama (`item-<nama>`) di
`ItemCard` dan `ItemPage`, sehingga gambar beranimasi saat berpindah halaman.

> Screenshot/GIF: `screenshots/04_hero.png`
>
> Penjelasan: (tulis dengan kata-kata Anda sendiri)

## Tugas 5: Poles tampilan dan pecah widget

UI dipecah menjadi widget kecil: `ItemCard` dan `AppFooter`. Footer berisi
Nama dan NIM.

> Screenshot: `screenshots/05_footer.png`
>
> Penjelasan: (tulis dengan kata-kata Anda sendiri)

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

> Screenshot: `screenshots/06_gorouter.png`
>
> Penjelasan: (tulis dengan kata-kata Anda sendiri)
