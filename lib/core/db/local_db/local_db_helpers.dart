import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqflite.dart';

class SQLHelper {
  static Future<Database> initDb() async {
    return sql.openDatabase(
      'products.db',
      version: 2,
      onCreate: (Database database, int version) async {
        await createCartTable(database);
        await createWishlistTable(database);
      },
    );
  }

  static Future<void> createCartTable(Database database) async {
    await database.execute("""
      CREATE TABLE cart(
        id TEXT PRIMARY KEY NOT NULL,
        title TEXT NOT NULL,
        description TEXT,
        image TEXT,
        quantity INTEGER NOT NULL,
        price REAL NOT NULL
      )
    """);
    debugPrint("Cart Table Created");
  }

  static Future<void> createWishlistTable(Database database) async {
    await database.execute("""
      CREATE TABLE wishlist(
        id TEXT PRIMARY KEY NOT NULL,
        title TEXT NOT NULL,
        description TEXT,
        image TEXT,
        quantity INTEGER NOT NULL,
        price REAL NOT NULL
      )
    """);
    debugPrint("Wishlist Table Created");
  }

  // ============================ CART FUNCTIONS ============================

  static Future<int> add(String productId, String name, String description, String imageUrl, int quantity, double price) async {
    final db = await SQLHelper.initDb();
    final data = {
      'id': productId,
      'title': name,
      'description': description,
      'image': imageUrl,
      'quantity': quantity,
      'price': price
    };
    final id = await db.insert('cart', data, conflictAlgorithm: ConflictAlgorithm.replace);
    debugPrint("Product Added to Cart");
    return id;
  }

  static Future<List<Map<String, dynamic>>> get() async {
    final db = await SQLHelper.initDb();
    return db.query('cart', orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getByProductId(String productId) async {
    final db = await SQLHelper.initDb();
    return db.query('cart', where: "id = ?", whereArgs: [productId]);
  }

  static Future<int> update(String productId, String name, String description, String imageUrl, int quantity, double price) async {
    final db = await SQLHelper.initDb();
    final data = {
      'title': name,
      'description': description,
      'image': imageUrl,
      'quantity': quantity,
      'price': price
    };
    final result = await db.update('cart', data, where: "id = ?", whereArgs: [productId]);
    return result;
  }

  static Future<void> delete(String productId) async {
    final db = await SQLHelper.initDb();
    try {
      await db.delete("cart", where: "id = ?", whereArgs: [productId]);
    } catch (err) {
      debugPrint("Error deleting cart product: $err");
    }
  }

  // ============================ WISHLIST FUNCTIONS ============================

  static Future<int> addWishlist(String productId, String name, String description, String imageUrl, int quantity, double price) async {
    final db = await SQLHelper.initDb();
    final data = {
      'id': productId,
      'title': name,
      'description': description,
      'image': imageUrl,
      'quantity': quantity,
      'price': price
    };
    final id = await db.insert('wishlist', data, conflictAlgorithm: ConflictAlgorithm.replace);
    debugPrint("Product Added to Wishlist");
    return id;
  }

  static Future<List<Map<String, dynamic>>> getWishlist() async {
    final db = await SQLHelper.initDb();
    return db.query('wishlist', orderBy: "id");
  }

  static Future<int> updateWishlist(String productId, String name, String description, String imageUrl, int quantity, double price) async {
    final db = await SQLHelper.initDb();
    final data = {
      'title': name,
      'description': description,
      'image': imageUrl,
      'quantity': quantity,
      'price': price
    };
    final result = await db.update('wishlist', data, where: "id = ?", whereArgs: [productId]);
    return result;
  }

  static Future<void> deleteWishlist(String productId) async {
    final db = await SQLHelper.initDb();
    try {
      await db.delete("wishlist", where: "id = ?", whereArgs: [productId]);
    } catch (err) {
      debugPrint("Error deleting wishlist product: $err");
    }
  }
}
