import 'package:flutter/material.dart';

class MessageTextField extends StatelessWidget {
  const MessageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(15.0),
    );

    final focusNode = FocusNode();

    return Column(children: [
      TextFormField(
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        decoration: InputDecoration(
          hintText: 'Type a message',
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {
              print(textController.value.text);
              textController.clear();
            },
          ),
        ),
        controller: textController,
        focusNode: focusNode,
        onFieldSubmitted: (value) {
          print(value);
          textController.clear();
          focusNode.requestFocus();
        },
        //
      ),
      const SizedBox(height: 10.0),
    ]);
  }
}
