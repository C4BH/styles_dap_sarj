import 'package:flutter/material.dart';
import 'colors.dart';
import 'others.dart';


import 'package:flutter/services.dart'; 
class Textfields extends StatefulWidget {
  
  const Textfields({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    required this.isPassword,
    this.maxLength,
    this.keyboardType,
  });
  final String label;
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool isPassword;
  final int? maxLength;
  final TextInputType? keyboardType;
  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
  bool isPasswordVisible = false;
  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ProjectPaddings.paddingMedium),
      child: TextField(
        inputFormatters: [
          if (widget.keyboardType == TextInputType.number)
            FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: widget.keyboardType,
        maxLength: widget.maxLength,
        obscureText: widget.isPassword && !isPasswordVisible,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon:
              widget.isPassword
                  ? IconButton(
                    onPressed: () {
                      togglePasswordVisibility();
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    color: ProjectColors.primaryColor,
                  )
                  : null,
          fillColor: ProjectColors.thirdColor,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: ProjectColors.primaryColor,
          ),
          hintText: widget.hintText,
          label: Text(widget.label),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              ProjectBorderRadius.borderRadiusLarge,
            ),
            borderSide: BorderSide(color: ProjectColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
