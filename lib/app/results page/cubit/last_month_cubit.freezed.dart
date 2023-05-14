// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_month_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LastMonthState {
  List<ExchangeModel>? get results => throw _privateConstructorUsedError;
  ViewType get viewType => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LastMonthStateCopyWith<LastMonthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastMonthStateCopyWith<$Res> {
  factory $LastMonthStateCopyWith(
          LastMonthState value, $Res Function(LastMonthState) then) =
      _$LastMonthStateCopyWithImpl<$Res, LastMonthState>;
  @useResult
  $Res call(
      {List<ExchangeModel>? results, ViewType viewType, String? errorMessage});
}

/// @nodoc
class _$LastMonthStateCopyWithImpl<$Res, $Val extends LastMonthState>
    implements $LastMonthStateCopyWith<$Res> {
  _$LastMonthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? viewType = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ExchangeModel>?,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LastMonthStateCopyWith<$Res>
    implements $LastMonthStateCopyWith<$Res> {
  factory _$$_LastMonthStateCopyWith(
          _$_LastMonthState value, $Res Function(_$_LastMonthState) then) =
      __$$_LastMonthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ExchangeModel>? results, ViewType viewType, String? errorMessage});
}

/// @nodoc
class __$$_LastMonthStateCopyWithImpl<$Res>
    extends _$LastMonthStateCopyWithImpl<$Res, _$_LastMonthState>
    implements _$$_LastMonthStateCopyWith<$Res> {
  __$$_LastMonthStateCopyWithImpl(
      _$_LastMonthState _value, $Res Function(_$_LastMonthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? viewType = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LastMonthState(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ExchangeModel>?,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LastMonthState implements _LastMonthState {
  _$_LastMonthState(
      {final List<ExchangeModel>? results,
      this.viewType = ViewType.current,
      this.errorMessage})
      : _results = results;

  final List<ExchangeModel>? _results;
  @override
  List<ExchangeModel>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final ViewType viewType;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LastMonthState(results: $results, viewType: $viewType, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastMonthState &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), viewType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastMonthStateCopyWith<_$_LastMonthState> get copyWith =>
      __$$_LastMonthStateCopyWithImpl<_$_LastMonthState>(this, _$identity);
}

abstract class _LastMonthState implements LastMonthState {
  factory _LastMonthState(
      {final List<ExchangeModel>? results,
      final ViewType viewType,
      final String? errorMessage}) = _$_LastMonthState;

  @override
  List<ExchangeModel>? get results;
  @override
  ViewType get viewType;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_LastMonthStateCopyWith<_$_LastMonthState> get copyWith =>
      throw _privateConstructorUsedError;
}
