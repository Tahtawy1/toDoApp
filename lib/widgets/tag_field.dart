import 'package:flutter/material.dart';

class TagField extends StatelessWidget {
  const TagField({super.key, required this.onSubmitted});
  final ValueChanged<String>? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 135,
      child: TextField(
        onSubmitted: onSubmitted,
        autofocus: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: Color(0xff007AFF), width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: Colors.black54, width: 1.5),
          ),
        ),
      ),
    );
  }
}
