import 'package:flutter/material.dart';

class TestDataTable extends StatelessWidget {
  const TestDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DataTable(
        //border: TableBorder.all(width: 0),
        columnSpacing: 10,
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              flex: 2,
              child: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('19')),
              DataCell(Text('Student xxxxxxxxxxxx sssssssssssssssssssssssssss')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janine')),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('270')),
              DataCell(Text('Associate Professor')),
            ],
          ),
        ],
      )
    );
  }
}