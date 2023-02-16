import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  required String text,
  double width = double.infinity,
  Color background =Colors.blue,
  double radius =15.0,
  Function? function,
}) => Container(
    width: width,
  child:   MaterialButton(

       onPressed: (){
         function!();
       },

      child: Text(
          text,
        style: TextStyle(
              color: Colors.white,
        ),
      ),
  ),
  decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(20.0),
    color: background
  ),
);
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required Function? validate,
  required  String? label,
  required IconData? prefix,
  bool? isPassword= false,
  Function? onChange,
  Function? onSubmit,
  IconData? suffix,
  Function? suffixPassed,
  Function? onTap,
  bool? isClickable = true,
}) =>
    TextFormField(
      controller: controller ,
      keyboardType: type,
      obscureText: isPassword!,
      onFieldSubmitted: (value) {
          onSubmit!();
        },
      enabled: true,
      onChanged: (value){
        onChange!();
      },
      onTap: (){
        onTap!();
      },
      validator: (value){
        return validate!(value);
      },
      decoration: InputDecoration(
      filled: true,
      fillColor:Colors.white,
      hintText: label,
      prefixIcon:Icon(prefix),
      suffixIcon:suffix != null ? IconButton(
          onPressed: () {
            suffixPassed!();
          },
          icon: Icon(
              suffix,
          ),
      ) : null,
        border: OutlineInputBorder(
          borderRadius :BorderRadius.circular(20.0),
        ),

      ),

    );