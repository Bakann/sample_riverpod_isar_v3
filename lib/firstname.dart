import 'package:isar/isar.dart';

part 'firstname.g.dart';

@Collection()
class FirstName {
  Id? id;

  @Index(type: IndexType.hash)
  late String firstname;
  late String firstnameWithoutDiacritics;
  late int intention;
  late int sex;

}

