import 'package:flutter/material.dart';

class AddTags extends StatelessWidget {
  const AddTags({super.key, required this.isActive, required this.onTap});
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 38,
          width: 135,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Icon(Icons.add, size: 20, color: Colors.grey.shade800),
                SizedBox(width: 8),
                Text(
                  'Add Tags',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
