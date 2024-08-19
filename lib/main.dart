import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_controller.dart';
import 'package:todo_list_minhas_contas/App/app_module.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginController()),
      ],
      child: const AppModule(),
    ),
  );
}
