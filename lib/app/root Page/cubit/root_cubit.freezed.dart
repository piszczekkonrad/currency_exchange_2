// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'root_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootState {
  ExchangeModel? get exchangeModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res, RootState>;
  @useResult
  $Res call(
      {ExchangeModel? exchangeModel, Status status, String? errorMessage});

  $ExchangeModelCopyWith<$Res>? get exchangeModel;
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res, $Val extends RootState>
    implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      exchangeModel: freezed == exchangeModel
          ? _value.exchangeModel
          : exchangeModel // ignore: cast_nullable_to_non_nullable
              as ExchangeModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExchangeModelCopyWith<$Res>? get exchangeModel {
    if (_value.exchangeModel == null) {
      return null;
    }

    return $ExchangeModelCopyWith<$Res>(_value.exchangeModel!, (value) {
      return _then(_value.copyWith(exchangeModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$$_RootStateCopyWith(
          _$_RootState value, $Res Function(_$_RootState) then) =
      __$$_RootStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExchangeModel? exchangeModel, Status status, String? errorMessage});

  @override
  $ExchangeModelCopyWith<$Res>? get exchangeModel;
}

/// @nodoc
class __$$_RootStateCopyWithImpl<$Res>
    extends _$RootStateCopyWithImpl<$Res, _$_RootState>
    implements _$$_RootStateCopyWith<$Res> {
  __$$_RootStateCopyWithImpl(
      _$_RootState _value, $Res Function(_$_RootState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchangeModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RootState(
      exchangeModel: freezed == exchangeModel
          ? _value.exchangeModel
          : exchangeModel // ignore: cast_nullable_to_non_nullable
              as ExchangeModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RootState implements _RootState {
  _$_RootState(
      {this.exchangeModel, this.status = Status.loading, this.errorMessage});

  @override
  final ExchangeModel? exchangeModel;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RootState(exchangeModel: $exchangeModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootState &&
            (identical(other.exchangeModel, exchangeModel) ||
                other.exchangeModel == exchangeModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, exchangeModel, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      __$$_RootStateCopyWithImpl<_$_RootState>(this, _$identity);
}

abstract class _RootState implements RootState {
  factory _RootState(
      {final ExchangeModel? exchangeModel,
      final Status status,
      final String? errorMessage}) = _$_RootState;

  @override
  ExchangeModel? get exchangeModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      throw _privateConstructorUsedError;
}
