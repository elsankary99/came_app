import 'package:camel_app/membership/widget/custom_text_form.dart';
import 'package:camel_app/membership/widget/radio.dart';
import 'package:camel_app/membership/widget/select_file.dart';
import 'package:camel_app/membership/widget/top_text.dart';
import 'package:flutter/material.dart';

class MembershipView extends StatelessWidget {
  const MembershipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4),
          child: Image.asset("assets/image/logo.png"),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.green.withOpacity(0.3),
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              TopText(),
              CustomTextForm(
                hintText: "الاسم بالكامل",
                topTExt: "الاسم",
              ),
              CustomTextForm(
                hintText: "تاريخ الميلاد",
                topTExt: "تاريخ الميلاد",
              ),
              CustomTextForm(
                hintText: "رقم الهوية الوطنية",
                topTExt: "رقم الهوية الوطنية",
              ),
              CustomTextForm(
                hintText: "تاريخها",
                topTExt: "تاريخها",
              ),
              CustomTextForm(
                hintText: "مصدرها",
                topTExt: "مصدرها",
              ),
              CustomTextForm(
                hintText: "مكان الاقامة",
                topTExt: "مكان الاقامة",
              ),
              Text(': ملاك الابل '),
              Text('هل هوا مسجل في وزارة البيئة والمياة والزراعة'),

//!//////////////////!/
              IsRegisterRadio(),
//!//////////////////!/

              CustomTextForm(
                hintText: "رقم الملف",
                topTExt: "اذ كانت الاجابة نعم فرقم الملف",
              ),
              CustomTextForm(
                hintText: "عدد الابل",
                topTExt: "عدد الابل",
              ),
              CustomTextForm(
                hintText: "الوان الابل",
                topTExt: "الوان الابل ",
              ),
              CustomTextForm(
                hintText: "تحديد موقع تواجد الابل",
                topTExt: "   تحديد موقع تواجد الابل",
              ),
              CustomTextForm(
                hintText: "اهتمامات اخري",
                topTExt: "اهتمامات اخري",
              ),
              CustomTextForm(
                hintText: "رقم الجوال",
                topTExt: "رقم الجوال",
              ),
              CustomTextForm(
                hintText: "البريد الالكتروني",
                topTExt: "البريد الايكتروني",
              ),
              SelectFile(topText: "الصورة الشخصية"),
              SelectFile(topText: "الملف الشخصي"),
            ],
          ),
        ),
      ),
    );
  }
}
