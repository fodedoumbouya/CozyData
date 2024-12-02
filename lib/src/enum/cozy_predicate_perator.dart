part of cozy_data;

/// {@category Enums}
enum PredicateOperator {
  equals,
  notEquals,
  greaterThan,
  lessThan,
  greaterThanOrEquals,
  lessThanOrEquals,
  isNull,
  isNotNull,
  contains,
  notContains,
  startsWith,
  endsWith,
  matches,
  iEquals,
  iContains,
  iStartsWith,
  iEndsWith,
  between,
  notBetween,
  in_,
  notIn,
  arrayContains,
  arrayContainsAny,
  arrayContainsAll,
  arrayIsEmpty,
  arrayIsNotEmpty,
  dateEquals,
  dateBefore,
  dateAfter,
  dateOnOrBefore,
  dateOnOrAfter,
  dateBetween,
  isEven,
  isOdd,
  isDivisibleBy,
  fullTextMatch,
}