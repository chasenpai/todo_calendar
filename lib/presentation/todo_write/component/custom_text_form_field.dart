import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator validator;

  const CustomTextFormField({
    this.hintText,
    required this.onChanged,
    required this.onSaved,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final baseInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
    );
    const baseBorderSide = BorderSide(
      width: 2.0,
    );
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
        errorStyle: const TextStyle(
          fontSize: 0,
        ),
        hintStyle: const TextStyle(
          fontSize: 14.0,
        ),
        fillColor: Theme.of(context).colorScheme.onInverseSurface,
        filled: true,
        enabledBorder: baseInputBorder.copyWith(
          borderSide: baseBorderSide.copyWith(
            color: Theme.of(context).colorScheme.onInverseSurface,
          ),
        ),
        focusedBorder: baseInputBorder.copyWith(
          borderSide: baseBorderSide.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        errorBorder: baseInputBorder.copyWith(
          borderSide: baseBorderSide.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        focusedErrorBorder: baseInputBorder.copyWith(
          borderSide: baseBorderSide.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      ),
    );
  }
}
