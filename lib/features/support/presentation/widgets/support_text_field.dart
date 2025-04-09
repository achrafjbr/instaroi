import 'package:flutter/material.dart';

class SupportTextField extends StatelessWidget {
  const SupportTextField({
    super.key,
    this.prefix,
    this.hintText,
    required this.textEditingController,
    this.maxLines=1,
  });

  final Widget? prefix;
  final String? hintText;
  final int? maxLines;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: textEditingController,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        //filled: false,
        prefixIcon: prefix,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }
}
