import 'package:flutter/material.dart';

class IsRegisterRadio extends StatefulWidget {
  const IsRegisterRadio({super.key});

  @override
  State<IsRegisterRadio> createState() => _IsRegisterRadioState();
}

class _IsRegisterRadioState extends State<IsRegisterRadio> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("لا"),
            Radio(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("نعم"),
            Radio(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
