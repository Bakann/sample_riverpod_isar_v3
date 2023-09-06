// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firstname.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetFirstNameCollection on Isar {
  IsarCollection<String, FirstName> get firstNames => this.collection();
}

const FirstNameSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'FirstName',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'firstname',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'firstnameWithoutDiacritics',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'intention',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'sex',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, FirstName>(
    serialize: serializeFirstName,
    deserialize: deserializeFirstName,
    deserializeProperty: deserializeFirstNameProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeFirstName(IsarWriter writer, FirstName object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeString(writer, 2, object.firstname);
  IsarCore.writeString(writer, 3, object.firstnameWithoutDiacritics);
  IsarCore.writeLong(writer, 4, object.intention);
  IsarCore.writeLong(writer, 5, object.sex);
  return Isar.fastHash(object.id);
}

@isarProtected
FirstName deserializeFirstName(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final String _firstname;
  _firstname = IsarCore.readString(reader, 2) ?? '';
  final String _firstnameWithoutDiacritics;
  _firstnameWithoutDiacritics = IsarCore.readString(reader, 3) ?? '';
  final int _intention;
  _intention = IsarCore.readLong(reader, 4);
  final int _sex;
  _sex = IsarCore.readLong(reader, 5);
  final object = FirstName(
    id: _id,
    firstname: _firstname,
    firstnameWithoutDiacritics: _firstnameWithoutDiacritics,
    intention: _intention,
    sex: _sex,
  );
  return object;
}

@isarProtected
dynamic deserializeFirstNameProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readLong(reader, 4);
    case 5:
      return IsarCore.readLong(reader, 5);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _FirstNameUpdate {
  bool call({
    required String id,
    String? firstname,
    String? firstnameWithoutDiacritics,
    int? intention,
    int? sex,
  });
}

class _FirstNameUpdateImpl implements _FirstNameUpdate {
  const _FirstNameUpdateImpl(this.collection);

  final IsarCollection<String, FirstName> collection;

  @override
  bool call({
    required String id,
    Object? firstname = ignore,
    Object? firstnameWithoutDiacritics = ignore,
    Object? intention = ignore,
    Object? sex = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (firstname != ignore) 2: firstname as String?,
          if (firstnameWithoutDiacritics != ignore)
            3: firstnameWithoutDiacritics as String?,
          if (intention != ignore) 4: intention as int?,
          if (sex != ignore) 5: sex as int?,
        }) >
        0;
  }
}

sealed class _FirstNameUpdateAll {
  int call({
    required List<String> id,
    String? firstname,
    String? firstnameWithoutDiacritics,
    int? intention,
    int? sex,
  });
}

class _FirstNameUpdateAllImpl implements _FirstNameUpdateAll {
  const _FirstNameUpdateAllImpl(this.collection);

  final IsarCollection<String, FirstName> collection;

  @override
  int call({
    required List<String> id,
    Object? firstname = ignore,
    Object? firstnameWithoutDiacritics = ignore,
    Object? intention = ignore,
    Object? sex = ignore,
  }) {
    return collection.updateProperties(id, {
      if (firstname != ignore) 2: firstname as String?,
      if (firstnameWithoutDiacritics != ignore)
        3: firstnameWithoutDiacritics as String?,
      if (intention != ignore) 4: intention as int?,
      if (sex != ignore) 5: sex as int?,
    });
  }
}

extension FirstNameUpdate on IsarCollection<String, FirstName> {
  _FirstNameUpdate get update => _FirstNameUpdateImpl(this);

  _FirstNameUpdateAll get updateAll => _FirstNameUpdateAllImpl(this);
}

sealed class _FirstNameQueryUpdate {
  int call({
    String? firstname,
    String? firstnameWithoutDiacritics,
    int? intention,
    int? sex,
  });
}

class _FirstNameQueryUpdateImpl implements _FirstNameQueryUpdate {
  const _FirstNameQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<FirstName> query;
  final int? limit;

  @override
  int call({
    Object? firstname = ignore,
    Object? firstnameWithoutDiacritics = ignore,
    Object? intention = ignore,
    Object? sex = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (firstname != ignore) 2: firstname as String?,
      if (firstnameWithoutDiacritics != ignore)
        3: firstnameWithoutDiacritics as String?,
      if (intention != ignore) 4: intention as int?,
      if (sex != ignore) 5: sex as int?,
    });
  }
}

extension FirstNameQueryUpdate on IsarQuery<FirstName> {
  _FirstNameQueryUpdate get updateFirst =>
      _FirstNameQueryUpdateImpl(this, limit: 1);

  _FirstNameQueryUpdate get updateAll => _FirstNameQueryUpdateImpl(this);
}

class _FirstNameQueryBuilderUpdateImpl implements _FirstNameQueryUpdate {
  const _FirstNameQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<FirstName, FirstName, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? firstname = ignore,
    Object? firstnameWithoutDiacritics = ignore,
    Object? intention = ignore,
    Object? sex = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (firstname != ignore) 2: firstname as String?,
        if (firstnameWithoutDiacritics != ignore)
          3: firstnameWithoutDiacritics as String?,
        if (intention != ignore) 4: intention as int?,
        if (sex != ignore) 5: sex as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension FirstNameQueryBuilderUpdate
    on QueryBuilder<FirstName, FirstName, QOperations> {
  _FirstNameQueryUpdate get updateFirst =>
      _FirstNameQueryBuilderUpdateImpl(this, limit: 1);

  _FirstNameQueryUpdate get updateAll => _FirstNameQueryBuilderUpdateImpl(this);
}

extension FirstNameQueryFilter
    on QueryBuilder<FirstName, FirstName, QFilterCondition> {
  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> intentionEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      intentionGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      intentionGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> intentionLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      intentionLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> intentionBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      sexGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      sexLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension FirstNameQueryObject
    on QueryBuilder<FirstName, FirstName, QFilterCondition> {}

extension FirstNameQuerySortBy on QueryBuilder<FirstName, FirstName, QSortBy> {
  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByFirstname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByFirstnameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      sortByFirstnameWithoutDiacritics({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      sortByFirstnameWithoutDiacriticsDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByIntention() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByIntentionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension FirstNameQuerySortThenBy
    on QueryBuilder<FirstName, FirstName, QSortThenBy> {
  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByFirstname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByFirstnameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      thenByFirstnameWithoutDiacritics({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      thenByFirstnameWithoutDiacriticsDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByIntention() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByIntentionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension FirstNameQueryWhereDistinct
    on QueryBuilder<FirstName, FirstName, QDistinct> {
  QueryBuilder<FirstName, FirstName, QAfterDistinct> distinctByFirstname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterDistinct>
      distinctByFirstnameWithoutDiacritics({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterDistinct> distinctByIntention() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterDistinct> distinctBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension FirstNameQueryProperty1
    on QueryBuilder<FirstName, FirstName, QProperty> {
  QueryBuilder<FirstName, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<FirstName, String, QAfterProperty> firstnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<FirstName, String, QAfterProperty>
      firstnameWithoutDiacriticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<FirstName, int, QAfterProperty> intentionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<FirstName, int, QAfterProperty> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension FirstNameQueryProperty2<R>
    on QueryBuilder<FirstName, R, QAfterProperty> {
  QueryBuilder<FirstName, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<FirstName, (R, String), QAfterProperty> firstnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<FirstName, (R, String), QAfterProperty>
      firstnameWithoutDiacriticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<FirstName, (R, int), QAfterProperty> intentionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<FirstName, (R, int), QAfterProperty> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension FirstNameQueryProperty3<R1, R2>
    on QueryBuilder<FirstName, (R1, R2), QAfterProperty> {
  QueryBuilder<FirstName, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<FirstName, (R1, R2, String), QOperations> firstnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<FirstName, (R1, R2, String), QOperations>
      firstnameWithoutDiacriticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<FirstName, (R1, R2, int), QOperations> intentionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<FirstName, (R1, R2, int), QOperations> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
