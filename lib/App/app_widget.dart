import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_minhas_contas/App/core/database/sqlite_adm_connection.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/auth_module.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_controller.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_page.dart';
import 'package:todo_list_minhas_contas/App/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance?.removeObserver(sqliteAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Contas',
      routes: {
        ...AuthModule().routers
      },
      home: SplashPage(),
    );
  }
}
