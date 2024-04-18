// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillingInfo _$BillingInfoFromJson(Map<String, dynamic> json) {
  return _BillingInfo.fromJson(json);
}

/// @nodoc
mixin _$BillingInfo {
  num get waterBill => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  num get seniorDiscount => throw _privateConstructorUsedError;
  num get advancePayment => throw _privateConstructorUsedError;
  num get penalty => throw _privateConstructorUsedError;
  List<OtherCharges> get other => throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingInfoCopyWith<BillingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingInfoCopyWith<$Res> {
  factory $BillingInfoCopyWith(
          BillingInfo value, $Res Function(BillingInfo) then) =
      _$BillingInfoCopyWithImpl<$Res, BillingInfo>;
  @useResult
  $Res call(
      {num waterBill,
      String dueDate,
      num seniorDiscount,
      num advancePayment,
      num penalty,
      List<OtherCharges> other,
      num total});
}

/// @nodoc
class _$BillingInfoCopyWithImpl<$Res, $Val extends BillingInfo>
    implements $BillingInfoCopyWith<$Res> {
  _$BillingInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterBill = null,
    Object? dueDate = null,
    Object? seniorDiscount = null,
    Object? advancePayment = null,
    Object? penalty = null,
    Object? other = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      waterBill: null == waterBill
          ? _value.waterBill
          : waterBill // ignore: cast_nullable_to_non_nullable
              as num,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      seniorDiscount: null == seniorDiscount
          ? _value.seniorDiscount
          : seniorDiscount // ignore: cast_nullable_to_non_nullable
              as num,
      advancePayment: null == advancePayment
          ? _value.advancePayment
          : advancePayment // ignore: cast_nullable_to_non_nullable
              as num,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as num,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<OtherCharges>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingInfoImplCopyWith<$Res>
    implements $BillingInfoCopyWith<$Res> {
  factory _$$BillingInfoImplCopyWith(
          _$BillingInfoImpl value, $Res Function(_$BillingInfoImpl) then) =
      __$$BillingInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num waterBill,
      String dueDate,
      num seniorDiscount,
      num advancePayment,
      num penalty,
      List<OtherCharges> other,
      num total});
}

/// @nodoc
class __$$BillingInfoImplCopyWithImpl<$Res>
    extends _$BillingInfoCopyWithImpl<$Res, _$BillingInfoImpl>
    implements _$$BillingInfoImplCopyWith<$Res> {
  __$$BillingInfoImplCopyWithImpl(
      _$BillingInfoImpl _value, $Res Function(_$BillingInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterBill = null,
    Object? dueDate = null,
    Object? seniorDiscount = null,
    Object? advancePayment = null,
    Object? penalty = null,
    Object? other = null,
    Object? total = null,
  }) {
    return _then(_$BillingInfoImpl(
      waterBill: null == waterBill
          ? _value.waterBill
          : waterBill // ignore: cast_nullable_to_non_nullable
              as num,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      seniorDiscount: null == seniorDiscount
          ? _value.seniorDiscount
          : seniorDiscount // ignore: cast_nullable_to_non_nullable
              as num,
      advancePayment: null == advancePayment
          ? _value.advancePayment
          : advancePayment // ignore: cast_nullable_to_non_nullable
              as num,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as num,
      other: null == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<OtherCharges>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingInfoImpl implements _BillingInfo {
  const _$BillingInfoImpl(
      {this.waterBill = -1,
      this.dueDate = "",
      this.seniorDiscount = -1,
      this.advancePayment = -1,
      this.penalty = -1,
      final List<OtherCharges> other = const [],
      this.total = -1})
      : _other = other;

  factory _$BillingInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingInfoImplFromJson(json);

  @override
  @JsonKey()
  final num waterBill;
  @override
  @JsonKey()
  final String dueDate;
  @override
  @JsonKey()
  final num seniorDiscount;
  @override
  @JsonKey()
  final num advancePayment;
  @override
  @JsonKey()
  final num penalty;
  final List<OtherCharges> _other;
  @override
  @JsonKey()
  List<OtherCharges> get other {
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_other);
  }

  @override
  @JsonKey()
  final num total;

  @override
  String toString() {
    return 'BillingInfo(waterBill: $waterBill, dueDate: $dueDate, seniorDiscount: $seniorDiscount, advancePayment: $advancePayment, penalty: $penalty, other: $other, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingInfoImpl &&
            (identical(other.waterBill, waterBill) ||
                other.waterBill == waterBill) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.seniorDiscount, seniorDiscount) ||
                other.seniorDiscount == seniorDiscount) &&
            (identical(other.advancePayment, advancePayment) ||
                other.advancePayment == advancePayment) &&
            (identical(other.penalty, penalty) || other.penalty == penalty) &&
            const DeepCollectionEquality().equals(other._other, this._other) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      waterBill,
      dueDate,
      seniorDiscount,
      advancePayment,
      penalty,
      const DeepCollectionEquality().hash(_other),
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingInfoImplCopyWith<_$BillingInfoImpl> get copyWith =>
      __$$BillingInfoImplCopyWithImpl<_$BillingInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingInfoImplToJson(
      this,
    );
  }
}

abstract class _BillingInfo implements BillingInfo {
  const factory _BillingInfo(
      {final num waterBill,
      final String dueDate,
      final num seniorDiscount,
      final num advancePayment,
      final num penalty,
      final List<OtherCharges> other,
      final num total}) = _$BillingInfoImpl;

  factory _BillingInfo.fromJson(Map<String, dynamic> json) =
      _$BillingInfoImpl.fromJson;

  @override
  num get waterBill;
  @override
  String get dueDate;
  @override
  num get seniorDiscount;
  @override
  num get advancePayment;
  @override
  num get penalty;
  @override
  List<OtherCharges> get other;
  @override
  num get total;
  @override
  @JsonKey(ignore: true)
  _$$BillingInfoImplCopyWith<_$BillingInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
