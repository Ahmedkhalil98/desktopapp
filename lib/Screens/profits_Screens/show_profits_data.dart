import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowProfitsData extends StatelessWidget {
  const ShowProfitsData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.blue[200]),
          dataRowColor: MaterialStateProperty.all(Colors.white),
          border: TableBorder.all(
            width: 1,
          ),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,
              ),
            ),
          ),
          columns: [
            DataColumn(
                label: Text(
              'Bill Number',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Date',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Totla of Bill',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Cost of Bill',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Profit',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
            DataColumn(
                label: Text(
              'Employe Name',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
          rows: const []),
    );
  }
}
