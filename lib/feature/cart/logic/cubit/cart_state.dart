part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class CartLoading extends CartState {}
final class CartLoaded extends CartState {}
final class CartError extends CartState {
  final String message;
  CartError(this.message);
}

final class CartProductDeleted extends CartState {}
final class CartProductAdded extends CartState {}
final class CartProductUpdated extends CartState {}
final class CartProductQuantityChange extends CartState {}

// ============================ Wishlist States ============================

final class WishListInitial extends CartState {}
final class WishListLoading extends CartState {}
final class WishListLoaded extends CartState {}

final class WishListProductAdded extends CartState {}
final class WishListProductDeleted extends CartState {}
