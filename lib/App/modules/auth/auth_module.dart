import 'package:provider/provider.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_controller.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_page.dart';
import 'package:todo_list_minhas_contas/App/modules/modules/todo_list_module.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(bindings: [
          ChangeNotifierProvider(
            create: (_) => LoginController(),
          ),
        ], routers: {
          '/login': (context) => const LoginPage(),
        });
}
