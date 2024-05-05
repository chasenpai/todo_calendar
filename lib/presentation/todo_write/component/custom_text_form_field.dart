import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator validator;

  const CustomTextFormField({
    this.hintText,
    this.errorText,
    required this.onChanged,
    required this.onSaved,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      maxLines: null,
      cursorColor: Theme.of(context).colorScheme.primary,
      autofocus: false,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          fontSize: 14.0,
        ),
        fillColor: Theme.of(context).colorScheme.onInverseSurface,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.onInverseSurface,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
