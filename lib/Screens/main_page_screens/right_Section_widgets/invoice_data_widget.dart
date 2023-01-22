import 'package:desktopapp/Models/invoiceDataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceDataWidget extends StatelessWidget {
  InvoiceDataWidget({super.key});

  List tempData = [
    InvoiceDataModel(itemName: "pizza margherita", price: "7", count: 1),
    InvoiceDataModel(itemName: "Pepsi 200 ml", price: "3", count: 2),
    InvoiceDataModel(itemName: "hamburger", price: "5", count: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      width: double.infinity,
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.blue),
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
            'item Name',
            style: TextStyle(
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Price',
            style: TextStyle(
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
          )),
          DataColumn(
              label: Text(
            'Stack',
            style: TextStyle(
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
        rows: [
          ...tempData.map((e) => DataRow(cells: [
                DataCell(
                  Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        e.itemName,
                      )),
                ),
                DataCell(
                  Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        "${e.price} \$",
                      )),
                ),
                DataCell(Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.do_not_disturb_on, size: 8.w),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          e.count.toString(),
                        )),
                    Icon(Icons.add_circle, size: 8.w),
                  ],
                )),
              ])),
        ],
      ),
    );
  }
}
