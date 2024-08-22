import 'package:flutter/material.dart';
import 'package:tablet_design/core/colors/main_app_colors.dart';

class CustomerDetailsTable extends StatelessWidget {
  const CustomerDetailsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'ID',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            DataColumn(
              label: Text(
                'Customer Name',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            DataColumn(
              label: Text(
                'Date',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            DataColumn(
              label: Text(
                'Amount',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            DataColumn(
              label: Text(
                'Status',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                )),
                DataCell(
                    Text('John Doe', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('2024-08-22', style: TextStyle(color: Colors.white))),
                DataCell(Text('\$100', style: TextStyle(color: Colors.white))),
                DataCell(Text('paid', style: TextStyle(color: Colors.white))),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('Jane Smith', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('2024-08-21', style: TextStyle(color: Colors.white))),
                DataCell(Text('\$200', style: TextStyle(color: Colors.white))),
                DataCell(
                  Text('delivered', style: TextStyle(color: Colors.green)),
                ),
              ],
            ),
            // Add more rows as needed
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('Jane Smith', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('2024-08-21', style: TextStyle(color: Colors.white))),
                DataCell(Text('\$200', style: TextStyle(color: Colors.white))),
                DataCell(
                  Text('shipped',
                      style: TextStyle(color: MainAppColors.primaryColor)),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('4', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('Jane Smith', style: TextStyle(color: Colors.white))),
                DataCell(
                    Text('2024-08-21', style: TextStyle(color: Colors.white))),
                DataCell(Text('\$200', style: TextStyle(color: Colors.white))),
                DataCell(
                  Text('shipped',
                      style: TextStyle(color: MainAppColors.primaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
