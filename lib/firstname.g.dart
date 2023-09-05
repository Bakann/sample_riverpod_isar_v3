// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firstname.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFirstNameCollection on Isar {
  IsarCollection<FirstName> get firstNames => this.collection();
}

const FirstNameSchema = CollectionSchema(
  name: r'FirstName',
  id: -1575171018193558109,
  properties: {
    r'firstname': PropertySchema(
      id: 0,
      name: r'firstname',
      type: IsarType.string,
    ),
    r'firstnameWithoutDiacritics': PropertySchema(
      id: 1,
      name: r'firstnameWithoutDiacritics',
      type: IsarType.string,
    ),
    r'intention': PropertySchema(
      id: 2,
      name: r'intention',
      type: IsarType.long,
    ),
    r'sex': PropertySchema(
      id: 3,
      name: r'sex',
      type: IsarType.long,
    )
  },
  estimateSize: _firstNameEstimateSize,
  serialize: _firstNameSerialize,
  deserialize: _firstNameDeserialize,
  deserializeProp: _firstNameDeserializeProp,
  idName: r'id',
  indexes: {
    r'firstname': IndexSchema(
      id: 684742378115427321,
      name: r'firstname',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'firstname',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _firstNameGetId,
  getLinks: _firstNameGetLinks,
  attach: _firstNameAttach,
  version: '3.1.0+1',
);

int _firstNameEstimateSize(
  FirstName object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.firstname.length * 3;
  bytesCount += 3 + object.firstnameWithoutDiacritics.length * 3;
  return bytesCount;
}

void _firstNameSerialize(
  FirstName object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.firstname);
  writer.writeString(offsets[1], object.firstnameWithoutDiacritics);
  writer.writeLong(offsets[2], object.intention);
  writer.writeLong(offsets[3], object.sex);
}

FirstName _firstNameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FirstName();
  object.firstname = reader.readString(offsets[0]);
  object.firstnameWithoutDiacritics = reader.readString(offsets[1]);
  object.id = id;
  object.intention = reader.readLong(offsets[2]);
  object.sex = reader.readLong(offsets[3]);
  return object;
}

P _firstNameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _firstNameGetId(FirstName object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _firstNameGetLinks(FirstName object) {
  return [];
}

void _firstNameAttach(IsarCollection<dynamic> col, Id id, FirstName object) {
  object.id = id;
}

extension FirstNameQueryWhereSort
    on QueryBuilder<FirstName, FirstName, QWhere> {
  QueryBuilder<FirstName, FirstName, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FirstNameQueryWhere
    on QueryBuilder<FirstName, FirstName, QWhereClause> {
  QueryBuilder<FirstName, FirstName, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterWhereClause> firstnameEqualTo(
      String firstname) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'firstname',
        value: [firstname],
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterWhereClause> firstnameNotEqualTo(
      String firstname) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [],
              upper: [firstname],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [firstname],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [firstname],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'firstname',
              lower: [],
              upper: [firstname],
              includeUpper: false,
            ));
      }
    });
  }
}

extension FirstNameQueryFilter
    on QueryBuilder<FirstName, FirstName, QFilterCondition> {
  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> firstnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstnameWithoutDiacritics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstnameWithoutDiacritics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstnameWithoutDiacritics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstnameWithoutDiacritics',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstnameWithoutDiacritics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstnameWithoutDiacritics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstnameWithoutDiacritics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstnameWithoutDiacritics',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstnameWithoutDiacritics',
        value: '',
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      firstnameWithoutDiacriticsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstnameWithoutDiacritics',
        value: '',
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> intentionEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intention',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition>
      intentionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intention',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> intentionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intention',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> intentionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intention',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sex',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sex',
        value: value,
      ));
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterFilterCondition> sexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FirstNameQueryObject
    on QueryBuilder<FirstName, FirstName, QFilterCondition> {}

extension FirstNameQueryLinks
    on QueryBuilder<FirstName, FirstName, QFilterCondition> {}

extension FirstNameQuerySortBy on QueryBuilder<FirstName, FirstName, QSortBy> {
  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByFirstname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByFirstnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      sortByFirstnameWithoutDiacritics() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstnameWithoutDiacritics', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      sortByFirstnameWithoutDiacriticsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstnameWithoutDiacritics', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByIntention() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intention', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortByIntentionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intention', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> sortBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }
}

extension FirstNameQuerySortThenBy
    on QueryBuilder<FirstName, FirstName, QSortThenBy> {
  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByFirstname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByFirstnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstname', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      thenByFirstnameWithoutDiacritics() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstnameWithoutDiacritics', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy>
      thenByFirstnameWithoutDiacriticsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstnameWithoutDiacritics', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByIntention() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intention', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenByIntentionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intention', Sort.desc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<FirstName, FirstName, QAfterSortBy> thenBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }
}

extension FirstNameQueryWhereDistinct
    on QueryBuilder<FirstName, FirstName, QDistinct> {
  QueryBuilder<FirstName, FirstName, QDistinct> distinctByFirstname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QDistinct>
      distinctByFirstnameWithoutDiacritics({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstnameWithoutDiacritics',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FirstName, FirstName, QDistinct> distinctByIntention() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intention');
    });
  }

  QueryBuilder<FirstName, FirstName, QDistinct> distinctBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sex');
    });
  }
}

extension FirstNameQueryProperty
    on QueryBuilder<FirstName, FirstName, QQueryProperty> {
  QueryBuilder<FirstName, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FirstName, String, QQueryOperations> firstnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstname');
    });
  }

  QueryBuilder<FirstName, String, QQueryOperations>
      firstnameWithoutDiacriticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstnameWithoutDiacritics');
    });
  }

  QueryBuilder<FirstName, int, QQueryOperations> intentionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intention');
    });
  }

  QueryBuilder<FirstName, int, QQueryOperations> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sex');
    });
  }
}
