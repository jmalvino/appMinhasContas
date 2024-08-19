import 'package:flutter/material.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_page.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: TextButton(
         onPressed: () => Navigator.of(context).pushNamed('/login'),
          child: Text('IR PARA LOGIN'),
        ),
      ),
    );
  }
}
