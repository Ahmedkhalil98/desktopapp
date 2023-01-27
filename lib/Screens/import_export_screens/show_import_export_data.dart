import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowImportExportData extends StatelessWidget {
  const ShowImportExportData({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.blue[300]),
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
                fontWeight: FontWeight.w500,
              ),
            )),
            DataColumn(
                label: Text(
              'Account',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
            DataColumn(
                label: Text(
              'Date',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
            DataColumn(
                label: Text(
              'Amount',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
            DataColumn(
                label: Text(
              'Note',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
            DataColumn(
                label: Text(
              'Employee Name',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
            DataColumn(
                label: Text(
              'Balance',
              style: TextStyle(
                fontSize: 3.sp,
                fontWeight: FontWeight.w500,
              ),
            )),
          ],
          rows: const []),
    );
  }
}
