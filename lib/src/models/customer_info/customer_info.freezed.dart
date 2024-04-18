// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerInfo _$CustomerInfoFromJson(Map<String, dynamic> json) {
  return _CustomerInfo.fromJson(json);
}

/// @nodoc
mixin _$CustomerInfo {
  String get account => throw _privateConstructorUsedError;
  String get consumer => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get meterNo => throw _privateConstructorUsedError;
  int get checkDigit => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  num get averageUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerInfoCopyWith<CustomerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerInfoCopyWith<$Res> {
  factory $CustomerInfoCopyWith(
          CustomerInfo value, $Res Function(CustomerInfo) then) =
      _$CustomerInfoCopyWithImpl<$Res, CustomerInfo>;
  @useResult
  $Res call(
      {String account,
      String consumer,
      String address,
      String meterNo,
      int checkDigit,
      String description,
      String status,
      num averageUsage});
}

/// @nodoc
class _$CustomerInfoCopyWithImpl<$Res, $Val extends CustomerInfo>
    implements $CustomerInfoCopyWith<$Res> {
  _$CustomerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? consumer = null,
    Object? address = null,
    Object? meterNo = null,
    Object? checkDigit = null,
    Object? description = null,
    Object? status = null,
    Object? averageUsage = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      consumer: null == consumer
          ? _value.consumer
          : consumer // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      meterNo: null == meterNo
          ? _value.meterNo
          : meterNo // ignore: cast_nullable_to_non_nullable
              as String,
      checkDigit: null == checkDigit
          ? _value.checkDigit
          : checkDigit // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      averageUsage: null == averageUsage
          ? _value.averageUsage
          : averageUsage // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerInfoImplCopyWith<$Res>
    implements $CustomerInfoCopyWith<$Res> {
  factory _$$CustomerInfoImplCopyWith(
          _$CustomerInfoImpl value, $Res Function(_$CustomerInfoImpl) then) =
      __$$CustomerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String account,
      String consumer,
      String address,
      String meterNo,
      int checkDigit,
      String description,
      String status,
      num averageUsage});
}

/// @nodoc
class __$$CustomerInfoImplCopyWithImpl<$Res>
    extends _$CustomerInfoCopyWithImpl<$Res, _$CustomerInfoImpl>
    implements _$$CustomerInfoImplCopyWith<$Res> {
  __$$CustomerInfoImplCopyWithImpl(
      _$CustomerInfoImpl _value, $Res Function(_$CustomerInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? consumer = null,
    Object? address = null,
    Object? meterNo = null,
    Object? checkDigit = null,
    Object? description = null,
    Object? status = null,
    Object? averageUsage = null,
  }) {
    return _then(_$CustomerInfoImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      consumer: null == consumer
          ? _value.consumer
          : consumer // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      meterNo: null == meterNo
          ? _value.meterNo
          : meterNo // ignore: cast_nullable_to_non_nullable
              as String,
      checkDigit: null == checkDigit
          ? _value.checkDigit
          : checkDigit // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      averageUsage: null == averageUsage
          ? _value.averageUsage
          : averageUsage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerInfoImpl implements _CustomerInfo {
  const _$CustomerInfoImpl(
      {this.account = "",
      this.consumer = "",
      this.address = "",
      this.meterNo = "",
      this.checkDigit = -1,
      this.description = "",
      this.status = "",
      this.averageUsage = -1});

  factory _$CustomerInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerInfoImplFromJson(json);

  @override
  @JsonKey()
  final String account;
  @override
  @JsonKey()
  final String consumer;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String meterNo;
  @override
  @JsonKey()
  final int checkDigit;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final num averageUsage;

  @override
  String toString() {
    return 'CustomerInfo(account: $account, consumer: $consumer, address: $address, meterNo: $meterNo, checkDigit: $checkDigit, description: $description, status: $status, averageUsage: $averageUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerInfoImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.consumer, consumer) ||
                other.consumer == consumer) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.meterNo, meterNo) || other.meterNo == meterNo) &&
            (identical(other.checkDigit, checkDigit) ||
                other.checkDigit == checkDigit) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.averageUsage, averageUsage) ||
                other.averageUsage == averageUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, consumer, address,
      meterNo, checkDigit, description, status, averageUsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerInfoImplCopyWith<_$CustomerInfoImpl> get copyWith =>
      __$$CustomerInfoImplCopyWithImpl<_$CustomerInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerInfoImplToJson(
      this,
    );
  }
}

abstract class _CustomerInfo implements CustomerInfo {
  const factory _CustomerInfo(
      {final String account,
      final String consumer,
      final String address,
      final String meterNo,
      final int checkDigit,
      final String description,
      final String status,
      final num averageUsage}) = _$CustomerInfoImpl;

  factory _CustomerInfo.fromJson(Map<String, dynamic> json) =
      _$CustomerInfoImpl.fromJson;

  @override
  String get account;
  @override
  String get consumer;
  @override
  String get address;
  @override
  String get meterNo;
  @override
  int get checkDigit;
  @override
  String get description;
  @override
  String get status;
  @override
  num get averageUsage;
  @override
  @JsonKey(ignore: true)
  _$$CustomerInfoImplCopyWith<_$CustomerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
