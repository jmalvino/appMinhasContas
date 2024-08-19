import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/login_controller.dart';
import 'package:todo_list_minhas_contas/App/modules/auth/login/tiles/text_field_custom_tile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color corBg = Colors.grey[800]!;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: corBg,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.91,
          color: corBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const Image(
                    image: AssetImage('assets/logo_app_contas.png'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFieldCustom(
                  hintText: 'E-mail',
                  prefixIcon: CupertinoIcons.mail,
                ),
                const SizedBox(
                  height: 15,
                ),
                Consumer<LoginController>(
                  builder: (context, controller, child) {
                    return TextFieldCustom(
                      hintText: 'Pass',
                      prefixIcon: CupertinoIcons.shield,
                      suffixIcon: controller.obscureText
                          ? CupertinoIcons.lock
                          : CupertinoIcons.lock_open,
                      obscureText: controller.obscureText,
                      onSuffixIconTap: () => controller.toggleObscureText(),
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple, // Cor de fundo roxa
                          // Cor do texto branco
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                15), // Bordas arredondadas de 15
                          ),
                        ),
                        child: const Text(
                          'Logar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    height: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
