import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final VoidCallback? onSuffixIconTap;

  const TextFieldCustom({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false, // Por padrão, o texto não é oculto
    this.onSuffixIconTap, // Callback para clique no suffixIcon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white, // Cor do cursor
      style: const TextStyle(color: Colors.white), // Cor do texto
      obscureText: obscureText, // Define se o texto é oculto
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent, // Fundo transparente
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.purple,
          ),
        ),
        prefixIcon: Icon(prefixIcon, color: Colors.white), // Ícone no início
        suffixIcon: suffixIcon != null
            ? GestureDetector(
          onTap: onSuffixIconTap, // Ação ao clicar no ícone
          child: Icon(suffixIcon, color: Colors.white),
        )
            : null, // Ícone no final (opcional)
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white70), // Cor da dica
      ),
    );
  }
}
