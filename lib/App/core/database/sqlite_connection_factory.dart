import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';

class SqliteConnectionFactory {
  static const _VERSION = 1;
  static const _DATABASE_NAME = 'TODO_LIST_MINHASCONTAS';

  static SqliteConnectionFactory? _instance;

  Database? _db;

  //trabalhar com multtreds
  final _lock = Lock();

  //construtor privado
  SqliteConnectionFactory._();

  factory SqliteConnectionFactory() {
    //verifica se nao e nulo "??" se for recebe o SqliteConnectionFactory._()
    _instance ??= SqliteConnectionFactory._();
    return _instance!;
  }

  //vai retornar o banco de dados
  Future<Database> openConnection() async {
    var dataBasePath = await getDatabasesPath();
    var dataBasePathFinal = join(dataBasePath, _DATABASE_NAME);

    if(_db == null){
      await _lock.synchronized(
            () async {
          _db ??= await openDatabase(
              dataBasePathFinal,
              version: _VERSION,
              onConfigure: _onConfigure,
              onCreate: _onCreate,
              onUpgrade: _onUpgrade,
              onDowngrade: _onDowngrade
          );
        },
      );
    }
    return _db!;
  }

  void closeConnection(){
    _db?.close();
    _db = null;
  }

  Future<void> _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_key = ON');
  }
  Future<void> _onCreate(Database db, int version) async {}
  Future<void> _onUpgrade(Database db, int oldversion, int version) async {}
  Future<void> _onDowngrade(Database db, int oldVersion, int newVersion) async {}

}
