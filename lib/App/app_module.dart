import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_minhas_contas/App/app_widget.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => Object(),
        ),
      ],
      child: AppWidget(),
    );
  }
}
