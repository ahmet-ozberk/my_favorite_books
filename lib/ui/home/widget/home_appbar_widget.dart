import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../favorites/view/favorite_view.dart';
import 'home_search_bar_widget.dart';

class HomeAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const HomeAppbarWidget({Key? key})
      : preferredSize = const Size.fromHeight(56.0 * 2),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Kitaplar"),
      actions: [favoriteAction( context)],
      centerTitle: false,
      bottom: const HomeSearchBarWidget(),
    );
  }

  Widget favoriteAction(BuildContext context) => IconButton(
        onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => const FavoriteView())),
        icon: const Icon(CupertinoIcons.heart_fill),
        tooltip: 'Favori Kitaplarım',
      );
}
