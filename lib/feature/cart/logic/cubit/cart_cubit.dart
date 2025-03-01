import 'package:final_project/core/db/local_db/local_db_helpers.dart';
import 'package:final_project/feature/cart/data/model/product_card_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  double totalPrice = 0;
  List<ProductCartModel> products = [];
  List<ProductCartModel> wishListProducts = [];

  Future<void> getCartData() async {
    emit(CartLoading());
    try {
      await SQLHelper.get().then((value) {
        products = value.map((e) => ProductCartModel.fromJson(e)).toList();
      });
      calculateTotalPrice();
      emit(CartLoaded());
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  Future<void> deleteProduct(String id, int index) async {
    emit(CartLoading());
    try {
      await SQLHelper.delete(id);
      products.removeAt(index);
      calculateTotalPrice();
      emit(CartProductDeleted());
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  void addProductQuantity(String id) {
    for (var product in products) {
      if (id == product.id) {
        product.quantity = product.quantity! + 1;
      }
    }
    calculateTotalPrice();
    emit(CartProductQuantityChange());
  }

  void calculateTotalPrice() {
    totalPrice = 0;
    for (var product in products) {
      totalPrice += product.quantity! * product.price!.toDouble();
    }
  }

  // ============================ Wishlist Logic ============================

  Future<void> getWishlistData() async {
    emit(WishListLoading());
    try {
      await SQLHelper.getWishlist().then((value) {
        wishListProducts =
            value.map((e) => ProductCartModel.fromJson(e)).toList();
      });
      emit(WishListLoaded());
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  Future<void> deleteWishlistProduct(String id, int index) async {
    emit(WishListLoading());
    try {
      await SQLHelper.deleteWishlist(id);
      wishListProducts.removeAt(index);
      emit(WishListProductDeleted());
    } catch (e) {
      emit(CartError(e.toString()));
    }
  }

  bool isFoundinWishList(String id) {
    for (var product in products) {
      if (product.id == id) {
        return true;
      }
    }
    return false;
  }
}
