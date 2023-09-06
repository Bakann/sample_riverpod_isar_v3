import 'package:isar/isar.dart';

part 'firstname.g.dart';

@Collection()
class FirstName {

  FirstName({
    required this.id,
    required this.firstname,
    required this.firstnameWithoutDiacritics,
    required this.intention,
    required this.sex
  });

  // String get id => '$firstname$sex';
  final String id;

  final String firstname;
  final String firstnameWithoutDiacritics;
  final int intention;
  final int sex;

}

