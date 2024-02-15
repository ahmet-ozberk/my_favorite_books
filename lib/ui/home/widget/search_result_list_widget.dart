import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../app/components/book/book_item.dart';
import '../provider/home_provider.dart';

class SearchResultListWidget extends ConsumerWidget {
  const SearchResultListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watch = ref.watch(homeProvider);
    return SafeArea(
      top: false,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: watch.books!.length,
        itemBuilder: (context, index) {
          final item = watch.books![index];
          return BookItem(book: item);
        },
      ),
    );
  }
}
