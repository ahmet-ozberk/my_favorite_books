import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../app/api/model/book_model.dart';
import '../../../app/components/book/book_item.dart';
import '../../home/provider/home_provider.dart';

class FavoriteView extends ConsumerStatefulWidget {
  const FavoriteView({super.key});

  @override
  ConsumerState<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends ConsumerState<FavoriteView> {
  List<BookModel> get favorites => ref.watch(homeProvider).getFavorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favori Kitaplar')),
      body: SafeArea(
        top: false,
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            final item = favorites[index];
            return BookItem(book: item);
          },
        ),
      ),
    );
  }
}
