import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/home_provider.dart';

class HomeSearchBarWidget extends ConsumerWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeSearchBarWidget({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final read = ref.read(homeProvider);
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Expanded(
            child: CupertinoSearchTextField(
              onSuffixTap: () => read.clearSearch(),
              controller: read.searchController,
              placeholder: 'Kitap Ara',
              style: TextStyle(color: Colors.grey.shade200),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () => read.searchBooks(),
            icon: const Icon(CupertinoIcons.search),
            tooltip: 'Ara',
          ),
        ],
      ),
    );
  }
}
