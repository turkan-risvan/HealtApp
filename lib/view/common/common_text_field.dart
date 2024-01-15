import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;

  const CommonTextField({
    super.key,
    this.controller,
    this.label,
    required Color fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
   filled: true,
                fillColor:const Color.fromARGB(255, 228, 247, 245),
        label: label != null ? Text(label ?? "") : null,
        contentPadding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                border: const OutlineInputBorder(

                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF00D3BE), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide( color:Color(0xFF00D3BE),  width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),

      ),
    );
  }
}
