import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../api/model/book_model.dart';
import '../../constant/book_constant.dart';
import '../../../ui/home/provider/home_provider.dart';

class BookItem extends ConsumerWidget {
  final BookModel book;
  const BookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onDoubleTap: () => ref.read(homeProvider).addFavorite(book),
      onLongPress: () => ref.read(homeProvider).removeFavorite(book),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: _boxDecoration(context, ref),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            if (book.imageLinks?.thumbnail != null) ...{
              CachedNetworkImage(
                imageUrl: book.imageLinks!.thumbnail!,
                width: 80,
                height: 120,
                fit: BoxFit.cover,
              ),
            } else ...{
              SizedBox(
                width: 80,
                height: 120,
                child: BC.emptyBookIcon,
              ),
            },
            const SizedBox(width: 16),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title ?? BC.emptyTitle,
                  style: textTheme.titleLarge,
                ),
                const Divider(),
                if (book.description != null) ...{
                  ...[
                    Text(
                      book.description ?? '',
                      style: textTheme.bodyLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Divider(),
                  ]
                },
                Text(
                  "Yazarlar: ${book.authors?.join(', ') ?? BC.emptyTitle}",
                  style: textTheme.labelSmall,
                ).isNull(book.authors?.join(', ')),
                Text(
                  "Yayınevi: ${book.publisher ?? ''}",
                  style: textTheme.labelSmall,
                ).isNull(book.publisher),
                if (book.publishedDate != null || book.pageCount != null) ...{
                  const Divider(),
                  Wrap(
                    children: [
                      Text(
                        "Yayın Tarihi: ${book.publishedDate ?? BC.emptyTitle}",
                        style: textTheme.labelSmall,
                      ).isNull(book.publishedDate),
                      Text(
                        '  |  ',
                        style: textTheme.labelSmall!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Sayfa Sayısı: ${book.pageCount ?? BC.emptyTitle}",
                        style: textTheme.labelSmall,
                      ).isNull(book.pageCount.toString()),
                    ],
                  ),
                }
              ],
            )),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context, WidgetRef ref) {
    return BoxDecoration(
      color: Colors.grey.shade900.withOpacity(0.8),
      borderRadius: BorderRadius.circular(16),
      border: ref.watch(homeProvider).isFavorite(book)
          ? Border.all(color: Colors.pink.shade900)
          : null,
    );
  }
}

extension BookExtension on Widget {
  Widget isNull(String? value) {
    if (value == null) {
      return const SizedBox.shrink();
    }
    return this;
  }
}
