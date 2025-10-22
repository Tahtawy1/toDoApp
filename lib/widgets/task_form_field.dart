import 'package:flutter/material.dart';
import 'package:to_do_list_app/utils/outline_input_border.dart';

class TaskFormField extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController taskController = TextEditingController();
  TaskFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SizedBox(
        height: 40,
        child: TextFormField(
          controller: taskController,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Field is required !';
            }
            return null;
          },
          decoration: InputDecoration(
            hint: Text(
              'e.g. Finish Design system',
              style: TextStyle(color: Color(0xffB3B3B3)),
            ),
            border: outLineInputBorder(color: Color(0xffD9D9D9)),
            focusedBorder: outLineInputBorder(color: Color(0xff007AFF)),
            enabledBorder: outLineInputBorder(color: Color(0xffD9D9D9)),
            errorBorder: outLineInputBorder(color: Colors.red),
            focusedErrorBorder: outLineInputBorder(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
