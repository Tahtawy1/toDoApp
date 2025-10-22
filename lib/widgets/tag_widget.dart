import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key, required this.tagText, required this.onTap});
  final String tagText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.center,
          height: 38,
          decoration: BoxDecoration(
            color: Color(0xffCFF7D3),
            border: Border.all(color: Color(0xffE3E3E3)),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  tagText,
                  style: TextStyle(
                    color: Color(0xff34C759),
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: onTap,
                  child: Icon(Icons.close, size: 20, color: Color(0xff34C759)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
