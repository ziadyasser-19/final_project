import 'package:bloc/bloc.dart';
import 'package:final_project/core/network/endpoints.dart';
import 'package:final_project/feature/home/data/model/user_model.dart';
import 'package:meta/meta.dart';

import '../../../../core/network/dio_helper.dart';
import '../../data/model/product_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  UserModel? userData;
  String userQuery = '';
  List<ProductModel> products = [];
  List<ProductModel> browsedProducts = [];
  List<ProductModel> filterproducts = [];
  List<ProductModel> filterproducts2 = [];

  void getUserData() async {
    emit(HomeUserLoading());
    DioHelper.getData(url: Endpoints.currentUserDataEndpoint).then((value) {
      if (value.statusCode == 200 && value.data != null) {
        userData = UserModel.fromJson(value.data);
        // print(userData!.name);
        emit(HomeUserLoaded());
      } else {
        emit(HomeUserError("Error"));
      }
    }).catchError((error) {
      emit(HomeUserError(error.toString()));
    });
  }

  void getProducts() async {
    DioHelper.getData(url: Endpoints.allProductsEndPoint).then((value) {
      if (value.statusCode == 200 && value.data != null) {
        products =
            (value.data as List).map((e) => ProductModel.fromJson(e)).toList();

        // print(products.length);
        emit(HomeProductsLoaded());
      } else {
        emit(HomeProductsError("Error"));
      }
    }).catchError((error) {
      // print(error.toString());
      emit(HomeProductsError(error.toString()));
    });
  }

  Future<void> getHomeData() async {
    emit(HomedataLoading());
    try {
      await Future.wait([
        Future(() => getUserData()),
        Future(() => getProducts()),
      ]);
      emit(HomedataLoaded());
    } catch (e) {
      emit(HomedataError());
    }
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
    } else {
      userQuery = query;
      browsedProducts = products
          .where((product) =>
              product.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();
      filterproducts = products
          .where((product) => product.title!
              .split(' ')
              .any((word) => word.toLowerCase().contains(query.toLowerCase())))
          .toList();
      
    }
    emit(HomeProductsLoaded());
  }
  void filterByPrice(double minPrice, double maxPrice) {
   filterproducts = filterproducts.where((product) {
    if (product.price != null) {
      return product.price! >= minPrice && product.price! <= maxPrice;
    }
    return false;
  }).toList();
  emit(HomeProductsLoaded());
}

}
