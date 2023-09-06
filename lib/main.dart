import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:prenom/firstname.dart';
import 'package:prenom/loadNames.dart';

import 'firstnames_list.dart';
import 'firstnames_provider.dart';
import 'firstnames_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Isar.initialize();

  final Isar isar = Isar.open(
      schemas: [FirstNameSchema],
      directory: Isar.sqliteInMemory,
      engine: IsarEngine.sqlite);

  usePathUrlStrategy();
  runApp(
    ProviderScope(
      overrides: [
        isarProvider.overrideWithValue(isar),
        // The advantage of initializing isar before calling
        // runApp() is that we can watch the isarProvider object
        // anywhere without using any Future-based APIs.
      ],
      //ProviderScope is a widget that stores the state of all the providers we create.
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const title = 'Long List';

    var goRouter = GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ProductsListPage(),
      )
    ]);
    return MaterialApp.router(
      title: title,
      routerConfig: goRouter,
      // home: ProductsListPage(),
    );
  }
}

class ProductsListPage extends ConsumerWidget {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? count = ref.watch(countFirstNamesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(count.toString()),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.trash),
            tooltip: 'delete all',
            onPressed: () async {
              ref.watch(deleteAllFirstNamesProvider);
            },
          ),
        ],
      ),
      body: count == 0
          ? const LoadFirstNames()
          : const SafeArea(child: ProductList()),
    );
  }
}
