import 'package:sqflite/sqlite_api.dart';
import 'package:todo_list_minhas_contas/App/core/database/migrations/migration.dart';

class MigrationV1 implements Migration{
  void create(Batch batch){
    batch.execute('''
    create tble todo(
      id Integer primary key autoincrement,
      descricao varchar(500) not null,
      data_hora datatime,
      finalizado integer,
    )
    ''');
  }
  void update(Batch batch){

  }
}