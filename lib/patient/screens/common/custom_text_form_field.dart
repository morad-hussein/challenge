import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';


class CustomTextFormField  extends StatelessWidget {
   CustomTextFormField ({Key? key, required this.text, required this.hint, required this.onSave, required this.validator,required this.IsEmail}) : super(key: key);
  final String text;

  final String hint;

   final String? Function(String?) onSave;
   final String? Function(String?) validator;
   bool IsEmail;





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [


            TextFormField(
              keyboardType: IsEmail ? TextInputType.emailAddress : TextInputType.text,

              onSaved: onSave,
              validator: validator,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.textColor1),
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.textColor1),
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                ),

                hintText: hint,

                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                fillColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}


