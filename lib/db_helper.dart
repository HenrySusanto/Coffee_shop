import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'cart_model.dart';

class DBHelper{
  static final DBHelper _instance = new DBHelper.internal();
  factory DBHelper() => _instance;

  static Database? _db ;

  DBHelper.internal();

  Future<Database?> get db async {
    if(_db != null){
      return _db!;
    }

    _db = await initDatabase ();
  }

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "data_flutter.db");

    // Only copy if the database doesn't exist
    //if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound){
    // Load database from asset and copy
    ByteData data = await rootBundle.load(join('data', 'flutter.db'));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    // Save copied asset to documents
    await new File(path).writeAsBytes(bytes);
    //}

    var ourDb = await openDatabase(path);
    return ourDb;
  }


initDatabase() async {
    io.Directory docummentDirectory = await getApplicationDocumentsDirectory();
    String path = join(docummentDirectory.path,'cart.db');
    var db = await openDatabase(path , version: 1 , onCreate: _onCreate );
    return db;
  }

  _onCreate (Database db, int version )async{
    await db.execute(
        'CREATE TABLE cart (id INTEGER PRIMARY KEY, productId VARCHAR UNIQUE, productName TEXT,initialPrice INTEGER,'
            'productPrice INTEGER, quantity INTEGER, unitTag TEXT, image TEXT)');
  }

  Future<Cart> insert(Cart cart)async{
    print(cart.toMap());
    var dbClient = await db;
    await dbClient!.insert('cart', cart.toMap());
    return cart;
  }

  Future<List<Cart>> getCardList()async{
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult = await dbClient!.query('cart');
    return queryResult.map((e) => Cart.fromMap(e)).toList();
  }

  Future<int> delete(int id)async{
    var dbClient = await db;
    return await dbClient!.delete(
        'cart',
        where: 'id = ? ',
        whereArgs: [id]
    );
  }

  Future<int> updateQuantity(Cart cart)async{
    var dbClient = await db;
    return await dbClient!.update(
        'cart',
        cart.toMap(),
        where:  'id = ?',
        whereArgs: [cart.id]

    );
  }
}