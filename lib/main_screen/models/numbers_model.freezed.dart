// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'numbers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NumbersModel {
  List<int> get numbers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumbersModelCopyWith<NumbersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumbersModelCopyWith<$Res> {
  factory $NumbersModelCopyWith(
          NumbersModel value, $Res Function(NumbersModel) then) =
      _$NumbersModelCopyWithImpl<$Res, NumbersModel>;
  @useResult
  $Res call({List<int> numbers});
}

/// @nodoc
class _$NumbersModelCopyWithImpl<$Res, $Val extends NumbersModel>
    implements $NumbersModelCopyWith<$Res> {
  _$NumbersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
  }) {
    return _then(_value.copyWith(
      numbers: null == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumbersModelImplCopyWith<$Res>
    implements $NumbersModelCopyWith<$Res> {
  factory _$$NumbersModelImplCopyWith(
          _$NumbersModelImpl value, $Res Function(_$NumbersModelImpl) then) =
      __$$NumbersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> numbers});
}

/// @nodoc
class __$$NumbersModelImplCopyWithImpl<$Res>
    extends _$NumbersModelCopyWithImpl<$Res, _$NumbersModelImpl>
    implements _$$NumbersModelImplCopyWith<$Res> {
  __$$NumbersModelImplCopyWithImpl(
      _$NumbersModelImpl _value, $Res Function(_$NumbersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
  }) {
    return _then(_$NumbersModelImpl(
      numbers: null == numbers
          ? _value._numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$NumbersModelImpl extends _NumbersModel {
  const _$NumbersModelImpl({final List<int> numbers = const []})
      : _numbers = numbers,
        super._();

  final List<int> _numbers;
  @override
  @JsonKey()
  List<int> get numbers {
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbers);
  }

  @override
  String toString() {
    return 'NumbersModel(numbers: $numbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumbersModelImpl &&
            const DeepCollectionEquality().equals(other._numbers, _numbers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_numbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumbersModelImplCopyWith<_$NumbersModelImpl> get copyWith =>
      __$$NumbersModelImplCopyWithImpl<_$NumbersModelImpl>(this, _$identity);
}

abstract class _NumbersModel extends NumbersModel {
  const factory _NumbersModel({final List<int> numbers}) = _$NumbersModelImpl;
  const _NumbersModel._() : super._();

  @override
  List<int> get numbers;
  @override
  @JsonKey(ignore: true)
  _$$NumbersModelImplCopyWith<_$NumbersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
