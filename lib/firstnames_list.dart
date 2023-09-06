// 1. Declare a Provider
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prenom/firstname.dart';

import 'firstnames_repository.dart';

final currentProductItem =
    Provider<FirstName>((_) => throw UnimplementedError());

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var items = ref.watch(fetchFirstNamesProvider);
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // 2. Add a parent ProviderScope
          return ProviderScope(
            overrides: [
              // 3. Add a dependency override on the index
              currentProductItem.overrideWithValue(items[index]),
            ],
            // 4. return a **const** ProductItem with no constructor arguments
            child: const ProductItem(),
            // This is better for performance because we can create ProductItem as
            // a const widget in the ListView.builder. So even if the ListView
            // rebuilds, our ProductItem will not rebuild unless its index has changed.
          );
        });
  }
}

class ProductItem extends ConsumerWidget {
  // By subclassing ConsumerWidget instead of StatelessWidget, our
  // widget's build method gets an extra ref object (of type WidgetRef) that
  // we can use to watch our provider.

  const ProductItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //All Flutter widgets have a BuildContext object that we can use to access
    // things inside the widget tree (such as Theme.of(context)).
    // But Riverpod providers live outside the widget tree and to read them we
    // need an additional ref object.

    // 5. Access the index via WidgetRef
    final item = ref.watch(currentProductItem);

    // do something with the index
    return ListTile(
      title: Text(item.firstname),
      subtitle: Text(item.sex.toString()),
    );
  }
}
