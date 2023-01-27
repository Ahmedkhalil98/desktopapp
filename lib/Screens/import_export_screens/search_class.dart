import 'package:desktopapp/Screens/Widgets/text_Form_field.dart';
import 'package:desktopapp/Screens/Widgets/title_of_Text_Field.dart';
import 'package:desktopapp/Screens/import_export_screens/widgets/imp_option_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchButtonClass extends StatelessWidget {
  const SearchButtonClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleOfTextField(title: "Search"),
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
        SizedBox(
          height: 10.h,
        ),
        //! Bill Number :
        TitleOfTextField(title: "Bill Number"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleOfTextField(title: "From:"),
            SizedBox(
              width: 25.w,
              child: MyTextFormField(),
            ),
            TitleOfTextField(title: "TO:"),
            SizedBox(
              width: 25.w,
              child: MyTextFormField(),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        TitleOfTextField(title: "Date"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TitleOfTextField(title: "From:"),
                SizedBox(
                  height: 5.h,
                ),
                TitleOfTextField(title: "To:"),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 50.w,
                  child: MyTextFormField(
                    hint: "20/20/2023",
                    icon: const Icon(Icons.date_range_outlined),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 50.w,
                  child: MyTextFormField(
                    hint: "20/20/2023",
                    icon: Icon(Icons.date_range_outlined),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleOfTextField(title: "Ballance:"),
            TitleOfTextField(title: "1000\$"),
          ],
        ),
        SizedBox(
          width: 50.w,
          height: 50.h,
          child: ImpOptionButtonWidget(
            title: "Print",
            icon: Icons.print,
            color: Colors.blue ,
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
