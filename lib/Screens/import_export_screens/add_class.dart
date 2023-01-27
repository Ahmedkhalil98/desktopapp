import 'package:desktopapp/Screens/Widgets/text_Form_field.dart';
import 'package:desktopapp/Screens/Widgets/title_of_Text_Field.dart';
import 'package:desktopapp/Screens/import_export_screens/widgets/imp_option_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButtonClass extends StatelessWidget {
  const AddButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleOfTextField(title: "Add"),
        SizedBox(
          height: 5.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: DropdownButton(
            items: [],
            onChanged: (val) {},
            hint: TitleOfTextField(title: "Account"),
            isExpanded: true,
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleOfTextField(title: "Bill Number:"),
              SizedBox(
                width: 50.w,
                child: MyTextFormField(),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleOfTextField(title: "Date:"),
              SizedBox(
                width: 50.w,
                child: MyTextFormField(
                  hint: '10/10/2020',
                  icon: const Icon(Icons.date_range_outlined),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleOfTextField(title: "Amount:"),
              SizedBox(
                width: 50.w,
                child: MyTextFormField(),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleOfTextField(title: "Note:"),
              SizedBox(
                width: 50.w,
                child: MyTextFormField(),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleOfTextField(title: "Balance"),
            TitleOfTextField(title: "1000\$"),
          ],
        ),
        SizedBox(
          width: 50.w,
          height: 50.h,
          child: ImpOptionButtonWidget(
            title: "Print",
            icon: Icons.print,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 5.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 40.w,
                child: ImpOptionButtonWidget(
                  title: "Remove",
                  icon: Icons.delete_forever,
                  color: Colors.red,
                )),
            SizedBox(
              width: 40.w,
              child: ImpOptionButtonWidget(
                title: "Save",
                icon: Icons.save,
                color: Colors.green,
              ),
            ),
          ],
        )
      ],
    );
  }
}
// Column(
              //   children: [

              //     TitleOfTextField(title: "Date:"),
              //     TitleOfTextField(title: "Amount:"),
              //     TitleOfTextField(title: "Note:"),
              //   ],
              // ),
              // Column(
              //   children: [
              //     SizedBox(
              //       width: 50.w,
              //       child: MyTextFormField(),
              //     ),
              //     SizedBox(
              //       height: 5.h,
              //     ),
              //     SizedBox(
              //       width: 50.w,
              //       child: MyTextFormField(
              //         hint: "20/20/2023",
              //         icon: Icon(Icons.date_range_outlined),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 50.w,
              //       child: MyTextFormField(),
              //     ),
              //     SizedBox(
              //       height: 5.h,
              //     ),
              //     SizedBox(
              //       width: 50.w,
              //       child: MyTextFormField(),
              //     ),
              //   ],
              // )