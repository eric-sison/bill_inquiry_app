// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillDetails _$BillDetailsFromJson(Map<String, dynamic> json) {
  return _BillDetails.fromJson(json);
}

/// @nodoc
mixin _$BillDetails {
  CustomerInfo get info => throw _privateConstructorUsedError;
  BillingInfo get billing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillDetailsCopyWith<BillDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDetailsCopyWith<$Res> {
  factory $BillDetailsCopyWith(
          BillDetails value, $Res Function(BillDetails) then) =
      _$BillDetailsCopyWithImpl<$Res, BillDetails>;
  @useResult
  $Res call({CustomerInfo info, BillingInfo billing});

  $CustomerInfoCopyWith<$Res> get info;
  $BillingInfoCopyWith<$Res> get billing;
}

/// @nodoc
class _$BillDetailsCopyWithImpl<$Res, $Val extends BillDetails>
    implements $BillDetailsCopyWith<$Res> {
  _$BillDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? billing = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CustomerInfo,
      billing: null == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as BillingInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerInfoCopyWith<$Res> get info {
    return $CustomerInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingInfoCopyWith<$Res> get billing {
    return $BillingInfoCopyWith<$Res>(_value.billing, (value) {
      return _then(_value.copyWith(billing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillDetailsImplCopyWith<$Res>
    implements $BillDetailsCopyWith<$Res> {
  factory _$$BillDetailsImplCopyWith(
          _$BillDetailsImpl value, $Res Function(_$BillDetailsImpl) then) =
      __$$BillDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerInfo info, BillingInfo billing});

  @override
  $CustomerInfoCopyWith<$Res> get info;
  @override
  $BillingInfoCopyWith<$Res> get billing;
}

/// @nodoc
class __$$BillDetailsImplCopyWithImpl<$Res>
    extends _$BillDetailsCopyWithImpl<$Res, _$BillDetailsImpl>
    implements _$$BillDetailsImplCopyWith<$Res> {
  __$$BillDetailsImplCopyWithImpl(
      _$BillDetailsImpl _value, $Res Function(_$BillDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? billing = null,
  }) {
    return _then(_$BillDetailsImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CustomerInfo,
      billing: null == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as BillingInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillDetailsImpl implements _BillDetails {
  const _$BillDetailsImpl({required this.info, required this.billing});

  factory _$BillDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillDetailsImplFromJson(json);

  @override
  final CustomerInfo info;
  @override
  final BillingInfo billing;

  @override
  String toString() {
    return 'BillDetails(info: $info, billing: $billing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillDetailsImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.billing, billing) || other.billing == billing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, info, billing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillDetailsImplCopyWith<_$BillDetailsImpl> get copyWith =>
      __$$BillDetailsImplCopyWithImpl<_$BillDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillDetailsImplToJson(
      this,
    );
  }
}

abstract class _BillDetails implements BillDetails {
  const factory _BillDetails(
      {required final CustomerInfo info,
      required final BillingInfo billing}) = _$BillDetailsImpl;

  factory _BillDetails.fromJson(Map<String, dynamic> json) =
      _$BillDetailsImpl.fromJson;

  @override
  CustomerInfo get info;
  @override
  BillingInfo get billing;
  @override
  @JsonKey(ignore: true)
  _$$BillDetailsImplCopyWith<_$BillDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
