import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  MessageFieldBox({super.key, required this.onValue});

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
        textController.clear();
        onValue(textValue); // llamar el callback
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
        textController.clear();
        focusNode.requestFocus();
        onValue(value); // llamar el callback
      },
    );
  }
}
