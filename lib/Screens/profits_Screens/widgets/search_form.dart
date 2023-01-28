import 'package:desktopapp/Screens/Widgets/set_date_text_field.dart';
import 'package:desktopapp/Screens/Widgets/text_Form_field.dart';
import 'package:desktopapp/Screens/Widgets/title_of_Text_Field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchForm extends StatelessWidget {
  SearchForm({super.key});

  TextEditingController fromdate = TextEditingController();
  TextEditingController todate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            alignment: Alignment.center,
            height: 50.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: const Text(textAlign: TextAlign.center, "Profits"),
              leading: Icon(
                Icons.show_chart,
                size: 14.w,
                color: Colors.black,
              ),
            )),
        SizedBox(
          height: 12.h,
        ),
        //! => account text field
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          height: 50.h,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        //! => bill number

        TitleOfTextField(title: "number : "),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("From: "),
            Container(
                height: 50.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: MyTextFormField(
                  hint: "Number",
                )),
            const Text("To: "),
            Container(
                height: 50.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: MyTextFormField(
                  hint: "Number",
                )),
          ],
        ),
        //! date
        TitleOfTextField(title: "By Date : "),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleOfTextField(title: "From : "),
            SetDateTextField(datecontroller: fromdate),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleOfTextField(title: "  To :  "),
            SetDateTextField(
              datecontroller: todate,
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        //! total
        TitleOfTextField(title: "Total Of Profits :"),
        const Text("1,239,00 \$"),
        SizedBox(
          height: 12.h,
        ),
        //! => shart
        Container(
          height: 150.h,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(border: Border.all()),
        ),
        //! button
        Container(
            alignment: Alignment.center,
            height: 50.h,
            margin: EdgeInsets.only(
              top: 18.h,
              right: 2.w,
              left: 4.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: Colors.grey,
            ),
            child: ListTile(
              title: const Text(
                textAlign: TextAlign.center,
                "Print",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              leading: Icon(
                Icons.print,
                size: 8.w,
              ),
            )),
      ],
    );
  }
}
