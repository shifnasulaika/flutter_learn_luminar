import 'package:hive/hive.dart';
import 'package:ngnfnf/hive%20using%20hive%20adapter/models/user_moder.dart';

class Hivedb{
  Hivedb.internal();
  static Hivedb instance = Hivedb.internal();
  factory Hivedb(){ //factory constructor for creating singletone class the 
  return instance; //(these class have only one instance)
  }
  Future <void> adduser(User user) async{
    final db = await Hive.openBox<User>('user data');
    db.put(user.id, user);

  }
  //read user datas from hive db
   Future <List<User>> getuser() async{
    final db = await Hive.openBox<User>('user data');
   return db.values.toList();
}
}