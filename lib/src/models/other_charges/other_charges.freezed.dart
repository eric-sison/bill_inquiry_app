// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_charges.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherCharges _$OtherChargesFromJson(Map<String, dynamic> json) {
  return _OtherCharges.fromJson(json);
}

/// @nodoc
mixin _$OtherCharges {
  String get remarks => throw _privateConstructorUsedError;
  num get monthlyDue => throw _privateConstructorUsedError;
  num get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherChargesCopyWith<OtherCharges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherChargesCopyWith<$Res> {
  factory $OtherChargesCopyWith(
          OtherCharges value, $Res Function(OtherCharges) then) =
      _$OtherChargesCopyWithImpl<$Res, OtherCharges>;
  @useResult
  $Res call({String remarks, num monthlyDue, num balance});
}

/// @nodoc
class _$OtherChargesCopyWithImpl<$Res, $Val extends OtherCharges>
    implements $OtherChargesCopyWith<$Res> {
  _$OtherChargesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remarks = null,
    Object? monthlyDue = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyDue: null == monthlyDue
          ? _value.monthlyDue
          : monthlyDue // ignore: cast_nullable_to_non_nullable
              as num,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherChargesImplCopyWith<$Res>
    implements $OtherChargesCopyWith<$Res> {
  factory _$$OtherChargesImplCopyWith(
          _$OtherChargesImpl value, $Res Function(_$OtherChargesImpl) then) =
      __$$OtherChargesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String remarks, num monthlyDue, num balance});
}

/// @nodoc
class __$$OtherChargesImplCopyWithImpl<$Res>
    extends _$OtherChargesCopyWithImpl<$Res, _$OtherChargesImpl>
    implements _$$OtherChargesImplCopyWith<$Res> {
  __$$OtherChargesImplCopyWithImpl(
      _$OtherChargesImpl _value, $Res Function(_$OtherChargesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remarks = null,
    Object? monthlyDue = null,
    Object? balance = null,
  }) {
    return _then(_$OtherChargesImpl(
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyDue: null == monthlyDue
          ? _value.monthlyDue
          : monthlyDue // ignore: cast_nullable_to_non_nullable
              as num,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherChargesImpl implements _OtherCharges {
  const _$OtherChargesImpl(
      {required this.remarks, required this.monthlyDue, required this.balance});

  factory _$OtherChargesImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherChargesImplFromJson(json);

  @override
  final String remarks;
  @override
  final num monthlyDue;
  @override
  final num balance;

  @override
  String toString() {
    return 'OtherCharges(remarks: $remarks, monthlyDue: $monthlyDue, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherChargesImpl &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.monthlyDue, monthlyDue) ||
                other.monthlyDue == monthlyDue) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, remarks, monthlyDue, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherChargesImplCopyWith<_$OtherChargesImpl> get copyWith =>
      __$$OtherChargesImplCopyWithImpl<_$OtherChargesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherChargesImplToJson(
      this,
    );
  }
}

abstract class _OtherCharges implements OtherCharges {
  const factory _OtherCharges(
      {required final String remarks,
      required final num monthlyDue,
      required final num balance}) = _$OtherChargesImpl;

  factory _OtherCharges.fromJson(Map<String, dynamic> json) =
      _$OtherChargesImpl.fromJson;

  @override
  String get remarks;
  @override
  num get monthlyDue;
  @override
  num get balance;
  @override
  @JsonKey(ignore: true)
  _$$OtherChargesImplCopyWith<_$OtherChargesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
