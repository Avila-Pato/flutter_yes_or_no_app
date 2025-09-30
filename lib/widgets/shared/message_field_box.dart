import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({super.key});

  final textController =
      TextEditingController(); // controlador del input de texto
  final focusNode = FocusNode(); // controlador del focus

  final outlineInputBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(40),
  );

  late final inputDecoration = InputDecoration(
    focusedBorder: outlineInputBorder,
    filled: true,
    fillColor: Colors.white,
    suffixIcon: IconButton(
      icon: const Icon(Icons.send_outlined, color: Colors.black),
      onPressed: () {
        final textValue = textController.value.text;
        print("textValue: $textValue");
        textController.clear();
      },
    ),
    hintText: 'Escribe tu mensaje aquí',
    hintStyle: const TextStyle(fontSize: 18, color: Colors.black),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18, color: Colors.black),

      onTapOutside: (event) => {
        focusNode.unfocus(),
      }, // cerrar el teclado al tocar fuera

      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,

      onFieldSubmitted: (value) {
        print("onFieldSubmitted: $value");
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
