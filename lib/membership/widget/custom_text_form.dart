import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({required this.topTExt, required this.hintText});
  final String topTExt;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 4, top: 8),
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                topTExt,
              )),
        ),
        SizedBox(
          height: 35,
          child: TextFormField(
            cursorColor: Colors.black,
            cursorWidth: 1,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              hintText: hintText,
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Colors.lightBlue, width: 0.7),
              ),
            ),
          ),
        )
      ],
    );
  }
}
