// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartEntity cartEntity) addQuantity,
    required TResult Function(CartEntity cartEntity) subtractQuantity,
    required TResult Function(CartEntity cartEntity) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartEntity cartEntity)? addQuantity,
    TResult? Function(CartEntity cartEntity)? subtractQuantity,
    TResult? Function(CartEntity cartEntity)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartEntity cartEntity)? addQuantity,
    TResult Function(CartEntity cartEntity)? subtractQuantity,
    TResult Function(CartEntity cartEntity)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuantity value) addQuantity,
    required TResult Function(_SubtractQuantity value) subtractQuantity,
    required TResult Function(_DeleteCart value) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuantity value)? addQuantity,
    TResult? Function(_SubtractQuantity value)? subtractQuantity,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuantity value)? addQuantity,
    TResult Function(_SubtractQuantity value)? subtractQuantity,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CartEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartEntity cartEntity) addQuantity,
    required TResult Function(CartEntity cartEntity) subtractQuantity,
    required TResult Function(CartEntity cartEntity) deleteCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartEntity cartEntity)? addQuantity,
    TResult? Function(CartEntity cartEntity)? subtractQuantity,
    TResult? Function(CartEntity cartEntity)? deleteCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartEntity cartEntity)? addQuantity,
    TResult Function(CartEntity cartEntity)? subtractQuantity,
    TResult Function(CartEntity cartEntity)? deleteCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuantity value) addQuantity,
    required TResult Function(_SubtractQuantity value) subtractQuantity,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuantity value)? addQuantity,
    TResult? Function(_SubtractQuantity value)? subtractQuantity,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuantity value)? addQuantity,
    TResult Function(_SubtractQuantity value)? subtractQuantity,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddQuantityCopyWith<$Res> {
  factory _$$_AddQuantityCopyWith(
          _$_AddQuantity value, $Res Function(_$_AddQuantity) then) =
      __$$_AddQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({CartEntity cartEntity});

  $CartEntityCopyWith<$Res> get cartEntity;
}

/// @nodoc
class __$$_AddQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddQuantity>
    implements _$$_AddQuantityCopyWith<$Res> {
  __$$_AddQuantityCopyWithImpl(
      _$_AddQuantity _value, $Res Function(_$_AddQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartEntity = null,
  }) {
    return _then(_$_AddQuantity(
      cartEntity: null == cartEntity
          ? _value.cartEntity
          : cartEntity // ignore: cast_nullable_to_non_nullable
              as CartEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartEntityCopyWith<$Res> get cartEntity {
    return $CartEntityCopyWith<$Res>(_value.cartEntity, (value) {
      return _then(_value.copyWith(cartEntity: value));
    });
  }
}

/// @nodoc

class _$_AddQuantity implements _AddQuantity {
  const _$_AddQuantity({required this.cartEntity});

  @override
  final CartEntity cartEntity;

  @override
  String toString() {
    return 'CartEvent.addQuantity(cartEntity: $cartEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddQuantity &&
            (identical(other.cartEntity, cartEntity) ||
                other.cartEntity == cartEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddQuantityCopyWith<_$_AddQuantity> get copyWith =>
      __$$_AddQuantityCopyWithImpl<_$_AddQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartEntity cartEntity) addQuantity,
    required TResult Function(CartEntity cartEntity) subtractQuantity,
    required TResult Function(CartEntity cartEntity) deleteCart,
  }) {
    return addQuantity(cartEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartEntity cartEntity)? addQuantity,
    TResult? Function(CartEntity cartEntity)? subtractQuantity,
    TResult? Function(CartEntity cartEntity)? deleteCart,
  }) {
    return addQuantity?.call(cartEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartEntity cartEntity)? addQuantity,
    TResult Function(CartEntity cartEntity)? subtractQuantity,
    TResult Function(CartEntity cartEntity)? deleteCart,
    required TResult orElse(),
  }) {
    if (addQuantity != null) {
      return addQuantity(cartEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuantity value) addQuantity,
    required TResult Function(_SubtractQuantity value) subtractQuantity,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return addQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuantity value)? addQuantity,
    TResult? Function(_SubtractQuantity value)? subtractQuantity,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return addQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuantity value)? addQuantity,
    TResult Function(_SubtractQuantity value)? subtractQuantity,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (addQuantity != null) {
      return addQuantity(this);
    }
    return orElse();
  }
}

abstract class _AddQuantity implements CartEvent {
  const factory _AddQuantity({required final CartEntity cartEntity}) =
      _$_AddQuantity;

  CartEntity get cartEntity;
  @JsonKey(ignore: true)
  _$$_AddQuantityCopyWith<_$_AddQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubtractQuantityCopyWith<$Res> {
  factory _$$_SubtractQuantityCopyWith(
          _$_SubtractQuantity value, $Res Function(_$_SubtractQuantity) then) =
      __$$_SubtractQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({CartEntity cartEntity});

  $CartEntityCopyWith<$Res> get cartEntity;
}

/// @nodoc
class __$$_SubtractQuantityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_SubtractQuantity>
    implements _$$_SubtractQuantityCopyWith<$Res> {
  __$$_SubtractQuantityCopyWithImpl(
      _$_SubtractQuantity _value, $Res Function(_$_SubtractQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartEntity = null,
  }) {
    return _then(_$_SubtractQuantity(
      cartEntity: null == cartEntity
          ? _value.cartEntity
          : cartEntity // ignore: cast_nullable_to_non_nullable
              as CartEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartEntityCopyWith<$Res> get cartEntity {
    return $CartEntityCopyWith<$Res>(_value.cartEntity, (value) {
      return _then(_value.copyWith(cartEntity: value));
    });
  }
}

/// @nodoc

class _$_SubtractQuantity implements _SubtractQuantity {
  const _$_SubtractQuantity({required this.cartEntity});

  @override
  final CartEntity cartEntity;

  @override
  String toString() {
    return 'CartEvent.subtractQuantity(cartEntity: $cartEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubtractQuantity &&
            (identical(other.cartEntity, cartEntity) ||
                other.cartEntity == cartEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubtractQuantityCopyWith<_$_SubtractQuantity> get copyWith =>
      __$$_SubtractQuantityCopyWithImpl<_$_SubtractQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartEntity cartEntity) addQuantity,
    required TResult Function(CartEntity cartEntity) subtractQuantity,
    required TResult Function(CartEntity cartEntity) deleteCart,
  }) {
    return subtractQuantity(cartEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartEntity cartEntity)? addQuantity,
    TResult? Function(CartEntity cartEntity)? subtractQuantity,
    TResult? Function(CartEntity cartEntity)? deleteCart,
  }) {
    return subtractQuantity?.call(cartEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartEntity cartEntity)? addQuantity,
    TResult Function(CartEntity cartEntity)? subtractQuantity,
    TResult Function(CartEntity cartEntity)? deleteCart,
    required TResult orElse(),
  }) {
    if (subtractQuantity != null) {
      return subtractQuantity(cartEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuantity value) addQuantity,
    required TResult Function(_SubtractQuantity value) subtractQuantity,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return subtractQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuantity value)? addQuantity,
    TResult? Function(_SubtractQuantity value)? subtractQuantity,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return subtractQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuantity value)? addQuantity,
    TResult Function(_SubtractQuantity value)? subtractQuantity,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (subtractQuantity != null) {
      return subtractQuantity(this);
    }
    return orElse();
  }
}

abstract class _SubtractQuantity implements CartEvent {
  const factory _SubtractQuantity({required final CartEntity cartEntity}) =
      _$_SubtractQuantity;

  CartEntity get cartEntity;
  @JsonKey(ignore: true)
  _$$_SubtractQuantityCopyWith<_$_SubtractQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCartCopyWith<$Res> {
  factory _$$_DeleteCartCopyWith(
          _$_DeleteCart value, $Res Function(_$_DeleteCart) then) =
      __$$_DeleteCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartEntity cartEntity});

  $CartEntityCopyWith<$Res> get cartEntity;
}

/// @nodoc
class __$$_DeleteCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_DeleteCart>
    implements _$$_DeleteCartCopyWith<$Res> {
  __$$_DeleteCartCopyWithImpl(
      _$_DeleteCart _value, $Res Function(_$_DeleteCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartEntity = null,
  }) {
    return _then(_$_DeleteCart(
      cartEntity: null == cartEntity
          ? _value.cartEntity
          : cartEntity // ignore: cast_nullable_to_non_nullable
              as CartEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartEntityCopyWith<$Res> get cartEntity {
    return $CartEntityCopyWith<$Res>(_value.cartEntity, (value) {
      return _then(_value.copyWith(cartEntity: value));
    });
  }
}

/// @nodoc

class _$_DeleteCart implements _DeleteCart {
  const _$_DeleteCart({required this.cartEntity});

  @override
  final CartEntity cartEntity;

  @override
  String toString() {
    return 'CartEvent.deleteCart(cartEntity: $cartEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCart &&
            (identical(other.cartEntity, cartEntity) ||
                other.cartEntity == cartEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCartCopyWith<_$_DeleteCart> get copyWith =>
      __$$_DeleteCartCopyWithImpl<_$_DeleteCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CartEntity cartEntity) addQuantity,
    required TResult Function(CartEntity cartEntity) subtractQuantity,
    required TResult Function(CartEntity cartEntity) deleteCart,
  }) {
    return deleteCart(cartEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CartEntity cartEntity)? addQuantity,
    TResult? Function(CartEntity cartEntity)? subtractQuantity,
    TResult? Function(CartEntity cartEntity)? deleteCart,
  }) {
    return deleteCart?.call(cartEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CartEntity cartEntity)? addQuantity,
    TResult Function(CartEntity cartEntity)? subtractQuantity,
    TResult Function(CartEntity cartEntity)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(cartEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuantity value) addQuantity,
    required TResult Function(_SubtractQuantity value) subtractQuantity,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return deleteCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuantity value)? addQuantity,
    TResult? Function(_SubtractQuantity value)? subtractQuantity,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return deleteCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuantity value)? addQuantity,
    TResult Function(_SubtractQuantity value)? subtractQuantity,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteCart implements CartEvent {
  const factory _DeleteCart({required final CartEntity cartEntity}) =
      _$_DeleteCart;

  CartEntity get cartEntity;
  @JsonKey(ignore: true)
  _$$_DeleteCartCopyWith<_$_DeleteCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartEntity> listCart) loaded,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartEntity> listCart)? loaded,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartEntity> listCart)? loaded,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartEntity> listCart) loaded,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartEntity> listCart)? loaded,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartEntity> listCart)? loaded,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartEntity> listCart});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listCart = null,
  }) {
    return _then(_$_Loaded(
      listCart: null == listCart
          ? _value._listCart
          : listCart // ignore: cast_nullable_to_non_nullable
              as List<CartEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<CartEntity> listCart})
      : _listCart = listCart;

  final List<CartEntity> _listCart;
  @override
  List<CartEntity> get listCart {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCart);
  }

  @override
  String toString() {
    return 'CartState.loaded(listCart: $listCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._listCart, _listCart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listCart));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartEntity> listCart) loaded,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
  }) {
    return loaded(listCart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartEntity> listCart)? loaded,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
  }) {
    return loaded?.call(listCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartEntity> listCart)? loaded,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(listCart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded({required final List<CartEntity> listCart}) = _$_Loaded;

  List<CartEntity> get listCart;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartEntity> listCart) loaded,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartEntity> listCart)? loaded,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartEntity> listCart)? loaded,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Failed(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CartState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CartEntity> listCart) loaded,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CartEntity> listCart)? loaded,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CartEntity> listCart)? loaded,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CartState {
  const factory _Failed({required final Failure failure}) = _$_Failed;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
