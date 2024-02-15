import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../provider/home_provider.dart';
import '../widget/home_appbar_widget.dart';
import '../widget/home_body.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(homeProvider).init(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppbarWidget(),
      body: HomeBody(),
    );
  }
}
