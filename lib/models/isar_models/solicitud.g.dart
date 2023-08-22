// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitud.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSolicitudCollection on Isar {
  IsarCollection<Solicitud> get solicituds => this.collection();
}

const SolicitudSchema = CollectionSchema(
  name: r'Solicitud',
  id: 5430262380351338944,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'isClose': PropertySchema(
      id: 1,
      name: r'isClose',
      type: IsarType.bool,
    ),
    r'serie': PropertySchema(
      id: 2,
      name: r'serie',
      type: IsarType.string,
    )
  },
  estimateSize: _solicitudEstimateSize,
  serialize: _solicitudSerialize,
  deserialize: _solicitudDeserialize,
  deserializeProp: _solicitudDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _solicitudGetId,
  getLinks: _solicitudGetLinks,
  attach: _solicitudAttach,
  version: '3.1.0+1',
);

int _solicitudEstimateSize(
  Solicitud object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.serie;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _solicitudSerialize(
  Solicitud object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeBool(offsets[1], object.isClose);
  writer.writeString(offsets[2], object.serie);
}

Solicitud _solicitudDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Solicitud();
  object.createdAt = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.isClose = reader.readBoolOrNull(offsets[1]);
  object.serie = reader.readStringOrNull(offsets[2]);
  return object;
}

P _solicitudDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _solicitudGetId(Solicitud object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _solicitudGetLinks(Solicitud object) {
  return [];
}

void _solicitudAttach(IsarCollection<dynamic> col, Id id, Solicitud object) {
  object.id = id;
}

extension SolicitudQueryWhereSort
    on QueryBuilder<Solicitud, Solicitud, QWhere> {
  QueryBuilder<Solicitud, Solicitud, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SolicitudQueryWhere
    on QueryBuilder<Solicitud, Solicitud, QWhereClause> {
  QueryBuilder<Solicitud, Solicitud, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Solicitud, Solicitud, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterWhereClause> idBetween(
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
}

extension SolicitudQueryFilter
    on QueryBuilder<Solicitud, Solicitud, QFilterCondition> {
  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> isCloseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isClose',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> isCloseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isClose',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> isCloseEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isClose',
        value: value,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serie',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serie',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serie',
        value: '',
      ));
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterFilterCondition> serieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serie',
        value: '',
      ));
    });
  }
}

extension SolicitudQueryObject
    on QueryBuilder<Solicitud, Solicitud, QFilterCondition> {}

extension SolicitudQueryLinks
    on QueryBuilder<Solicitud, Solicitud, QFilterCondition> {}

extension SolicitudQuerySortBy on QueryBuilder<Solicitud, Solicitud, QSortBy> {
  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> sortByIsClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isClose', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> sortByIsCloseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isClose', Sort.desc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> sortBySerie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serie', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> sortBySerieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serie', Sort.desc);
    });
  }
}

extension SolicitudQuerySortThenBy
    on QueryBuilder<Solicitud, Solicitud, QSortThenBy> {
  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenByIsClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isClose', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenByIsCloseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isClose', Sort.desc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenBySerie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serie', Sort.asc);
    });
  }

  QueryBuilder<Solicitud, Solicitud, QAfterSortBy> thenBySerieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serie', Sort.desc);
    });
  }
}

extension SolicitudQueryWhereDistinct
    on QueryBuilder<Solicitud, Solicitud, QDistinct> {
  QueryBuilder<Solicitud, Solicitud, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Solicitud, Solicitud, QDistinct> distinctByIsClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isClose');
    });
  }

  QueryBuilder<Solicitud, Solicitud, QDistinct> distinctBySerie(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serie', caseSensitive: caseSensitive);
    });
  }
}

extension SolicitudQueryProperty
    on QueryBuilder<Solicitud, Solicitud, QQueryProperty> {
  QueryBuilder<Solicitud, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Solicitud, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Solicitud, bool?, QQueryOperations> isCloseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isClose');
    });
  }

  QueryBuilder<Solicitud, String?, QQueryOperations> serieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serie');
    });
  }
}
