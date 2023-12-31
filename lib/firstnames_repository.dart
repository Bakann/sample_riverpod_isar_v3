import 'package:isar/isar.dart';
import 'package:prenom/firstname.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'firstnames_provider.dart';

part 'firstnames_repository.g.dart';

class FirstNamesRepository {
  final Isar isar;

  FirstNamesRepository({required this.isar});
}

@riverpod
FirstNamesRepository firstNamesRepository(FirstNamesRepositoryRef ref) =>
    FirstNamesRepository(
      isar: ref.watch(isarProvider),
    );

@riverpod
List<FirstName> fetchFirstNames(FetchFirstNamesRef ref) {
  return ref
      .watch(firstNamesRepositoryProvider)
      .isar
      .firstNames
      .where()
      .findAll();
}

@riverpod
int countFirstNames(CountFirstNamesRef ref) {
  print('init or refresh: firstnamesCountFutureProvider');
  return ref.watch(firstNamesRepositoryProvider).isar.firstNames.count();
}

@riverpod
Future<void> deleteAllFirstNames(DeleteAllFirstNamesRef ref) async {
  var isar = ref.watch(firstNamesRepositoryProvider).isar;
  await isar.writeAsync((isar) {
    isar.firstNames.where().deleteAll();
    ref.invalidate(firstNamesRepositoryProvider);
  });
}
