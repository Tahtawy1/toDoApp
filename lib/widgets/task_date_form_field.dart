import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/utils/outline_input_border.dart';

// ignore: must_be_immutable
class TaskDateFormField extends StatelessWidget {
  final GlobalKey<FormState> dateFormKey;
  DateTime? taskCreatedDate;
  TaskDateFormField({
    super.key,
    required this.dateFormKey,
    required this.taskCreatedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: dateFormKey,

      child: DateTimeFormField(
        validator: (value) {
          if (value?.toString().isEmpty ?? true) {
            return 'Field is required !';
          }
          return null;
        },
        onSaved: (value) {
          taskCreatedDate = value;
        },
        mode: DateTimeFieldPickerMode.date,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          hint: Text('mm/dd/yyyy'),
          suffixIcon: Image.asset('assets/images/calendar.png'),
          border: outLineInputBorder(color: Color(0xffD9D9D9)),
          focusedBorder: outLineInputBorder(color: Color(0xff007AFF)),
          enabledBorder: outLineInputBorder(color: Color(0xffD9D9D9)),
          errorBorder: outLineInputBorder(color: Colors.red),
          focusedErrorBorder: outLineInputBorder(color: Colors.red),
        ),
      ),
    );
  }
}
