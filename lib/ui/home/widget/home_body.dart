import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../assets.dart';
import '../provider/home_provider.dart';
import 'empty_search_result.dart';
import 'loading_widget.dart';
import 'search_result_list_widget.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watch = ref.watch(homeProvider);
    if (watch.isLoading) return const LoadingWidget();
    if (watch.books?.isEmpty == true) return const EmptySearchResult();
    if (watch.books?.isNotEmpty == true) return const SearchResultListWidget();
    return Center(child: Lottie.asset(Assets.lottie.lottieSearchingAnimJSON));
  }
}
