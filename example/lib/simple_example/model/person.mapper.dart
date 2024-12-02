// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'person.dart';

class BrandMapper extends EnumMapper<Brand> {
  BrandMapper._();

  static BrandMapper? _instance;
  static BrandMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrandMapper._());
    }
    return _instance!;
  }

  static Brand fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Brand decode(dynamic value) {
    switch (value) {
      case 'Toyota':
        return Brand.Toyota;
      case 'Audi':
        return Brand.Audi;
      case 'BMW':
        return Brand.BMW;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Brand self) {
    switch (self) {
      case Brand.Toyota:
        return 'Toyota';
      case Brand.Audi:
        return 'Audi';
      case Brand.BMW:
        return 'BMW';
    }
  }
}

extension BrandMapperExtension on Brand {
  String toValue() {
    BrandMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Brand>(this) as String;
  }
}

class PersonMapper extends ClassMapperBase<Person> {
  PersonMapper._();

  static PersonMapper? _instance;
  static PersonMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PersonMapper._());
      CarMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Person';

  static int _$id(Person v) => v.id;
  static const Field<Person, int> _f$id = Field('id', _$id);
  static String? _$name(Person v) => v.name;
  static const Field<Person, String> _f$name = Field('name', _$name, opt: true);
  static int? _$age(Person v) => v.age;
  static const Field<Person, int> _f$age = Field('age', _$age, opt: true);
  static Car? _$car(Person v) => v.car;
  static const Field<Person, Car> _f$car = Field('car', _$car, opt: true);

  @override
  final MappableFields<Person> fields = const {
    #id: _f$id,
    #name: _f$name,
    #age: _f$age,
    #car: _f$car,
  };

  static Person _instantiate(DecodingData data) {
    return Person(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        age: data.dec(_f$age),
        car: data.dec(_f$car));
  }

  @override
  final Function instantiate = _instantiate;

  static Person fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Person>(map);
  }

  static Person fromJson(String json) {
    return ensureInitialized().decodeJson<Person>(json);
  }
}

mixin PersonMappable {
  String toJson() {
    return PersonMapper.ensureInitialized().encodeJson<Person>(this as Person);
  }

  Map<String, dynamic> toMap() {
    return PersonMapper.ensureInitialized().encodeMap<Person>(this as Person);
  }

  PersonCopyWith<Person, Person, Person> get copyWith =>
      _PersonCopyWithImpl(this as Person, $identity, $identity);
  @override
  String toString() {
    return PersonMapper.ensureInitialized().stringifyValue(this as Person);
  }

  @override
  bool operator ==(Object other) {
    return PersonMapper.ensureInitialized().equalsValue(this as Person, other);
  }

  @override
  int get hashCode {
    return PersonMapper.ensureInitialized().hashValue(this as Person);
  }
}

extension PersonValueCopy<$R, $Out> on ObjectCopyWith<$R, Person, $Out> {
  PersonCopyWith<$R, Person, $Out> get $asPerson =>
      $base.as((v, t, t2) => _PersonCopyWithImpl(v, t, t2));
}

abstract class PersonCopyWith<$R, $In extends Person, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CarCopyWith<$R, Car, Car>? get car;
  $R call({int? id, String? name, int? age, Car? car});
  PersonCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PersonCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Person, $Out>
    implements PersonCopyWith<$R, Person, $Out> {
  _PersonCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Person> $mapper = PersonMapper.ensureInitialized();
  @override
  CarCopyWith<$R, Car, Car>? get car =>
      $value.car?.copyWith.$chain((v) => call(car: v));
  @override
  $R call(
          {int? id,
          Object? name = $none,
          Object? age = $none,
          Object? car = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != $none) #name: name,
        if (age != $none) #age: age,
        if (car != $none) #car: car
      }));
  @override
  Person $make(CopyWithData data) => Person(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      age: data.get(#age, or: $value.age),
      car: data.get(#car, or: $value.car));

  @override
  PersonCopyWith<$R2, Person, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PersonCopyWithImpl($value, $cast, t);
}

class CarMapper extends ClassMapperBase<Car> {
  CarMapper._();

  static CarMapper? _instance;
  static CarMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CarMapper._());
      BrandMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Car';

  static double _$miles(Car v) => v.miles;
  static const Field<Car, double> _f$miles = Field('miles', _$miles);
  static Brand _$brand(Car v) => v.brand;
  static const Field<Car, Brand> _f$brand = Field('brand', _$brand);

  @override
  final MappableFields<Car> fields = const {
    #miles: _f$miles,
    #brand: _f$brand,
  };

  static Car _instantiate(DecodingData data) {
    return Car(data.dec(_f$miles), data.dec(_f$brand));
  }

  @override
  final Function instantiate = _instantiate;

  static Car fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Car>(map);
  }

  static Car fromJson(String json) {
    return ensureInitialized().decodeJson<Car>(json);
  }
}

mixin CarMappable {
  String toJson() {
    return CarMapper.ensureInitialized().encodeJson<Car>(this as Car);
  }

  Map<String, dynamic> toMap() {
    return CarMapper.ensureInitialized().encodeMap<Car>(this as Car);
  }

  CarCopyWith<Car, Car, Car> get copyWith =>
      _CarCopyWithImpl(this as Car, $identity, $identity);
  @override
  String toString() {
    return CarMapper.ensureInitialized().stringifyValue(this as Car);
  }

  @override
  bool operator ==(Object other) {
    return CarMapper.ensureInitialized().equalsValue(this as Car, other);
  }

  @override
  int get hashCode {
    return CarMapper.ensureInitialized().hashValue(this as Car);
  }
}

extension CarValueCopy<$R, $Out> on ObjectCopyWith<$R, Car, $Out> {
  CarCopyWith<$R, Car, $Out> get $asCar =>
      $base.as((v, t, t2) => _CarCopyWithImpl(v, t, t2));
}

abstract class CarCopyWith<$R, $In extends Car, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? miles, Brand? brand});
  CarCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CarCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Car, $Out>
    implements CarCopyWith<$R, Car, $Out> {
  _CarCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Car> $mapper = CarMapper.ensureInitialized();
  @override
  $R call({double? miles, Brand? brand}) => $apply(FieldCopyWithData(
      {if (miles != null) #miles: miles, if (brand != null) #brand: brand}));
  @override
  Car $make(CopyWithData data) => Car(
      data.get(#miles, or: $value.miles), data.get(#brand, or: $value.brand));

  @override
  CarCopyWith<$R2, Car, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CarCopyWithImpl($value, $cast, t);
}
