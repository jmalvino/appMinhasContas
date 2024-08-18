import 'package:flutter/cupertino.dart';
import 'package:todo_list_minhas_contas/App/core/database/sqlite_connection_factory.dart';

class SqliteAdmConnection with WidgetsBindingObserver{
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    final connection = SqliteConnectionFactory();

    switch(state){

      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        connection.closeConnection();
        break;
    }

    super.didChangeAppLifecycleState(state);
  }
}