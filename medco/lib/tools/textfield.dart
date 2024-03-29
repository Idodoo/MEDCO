import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:medco/tools/constants.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final Color color;
  final Color hintColor;
  final Color cursorColor;
  final validator;
  final onSaved;
  final TextEditingController controller;
  final TextInputAction inputAction;

  CustomTextField({
    Key? key,
    required this.hintText,
    required this.color,
    required this.hintColor,
    required this.controller,
    required this.cursorColor,
    required this.inputAction,
    required this.validator,
    required this.onSaved,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            color: widget.color,
            border: Border.all(
              color: black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: TextFormField(
            validator: widget.validator,
            onSaved: widget.onSaved,
            textInputAction: widget.inputAction,
            controller: widget.controller,
            cursorColor: widget.cursorColor,
            decoration: InputDecoration(
              // prefixIcon: widget.prefixicon,
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: widget.hintColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
