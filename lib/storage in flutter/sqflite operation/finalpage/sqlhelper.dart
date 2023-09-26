import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //database creation
  static Future<sql.Database> createDB() async {
    return sql.openDatabase('registration.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  //table for storing values in this db
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE registration(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        username TEXT,
        password TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  // save name and phone number to contacts table
  static Future<int> register_user(String username, String password) async {
    final db = await SQLHelper.createDB(); // open database
    final data = {'username': username, 'password': password};
    // insert to a particular table with values as map
    final id = await db.insert('registration', data);
    return id;
  }

    // save name and phone number to contacts table
  static Future<bool> login_check(String username, String password) async {
    final db = await SQLHelper.createDB();
    final result = await db.query(
    'registration',
    where: 'username = ? AND password = ?', // Adjust this condition as needed
    whereArgs: [username, password],
    );
    return result.isNotEmpty;
  }



  // fetch or read all the contacts from db
  // static Future<List<Map<String, dynamic>>> readContacts() async {
  //   final db = await SQLHelper.createDB();
  //   //read all the values from db
  //   return db.query('contacts', orderBy: 'id');
  // }

  // static Future<int> updateContact(int id, String name, String phone) async {
  //   final db = await SQLHelper.createDB();
  //   final newdata = {
  //     'cname': name,
  //     'cnumber': phone,
  //     'createdAt': DateTime.now().toString()
  //   };
  //   final upid = await db.update('contacts', newdata, where: 'id = ?', whereArgs: [id]);
  //   return upid;
  // }

  // static Future<void> deleteContact(int id) async{
  //   final db = await SQLHelper.createDB();
  //   try{
  //     await db.delete('contacts', where: 'id = ?', whereArgs: [id]);
  //   }catch(e){
  //     throw Exception();
  //   }

  // }
}
