import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'event.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Table(
                  border: TableBorder.all(),
                  children: List.generate(6, (rowIndex) {
                    return TableRow(
                      children: List.generate(7, (colIndex) {
                        DateTime date = DateTime(_selectedDate.year, _selectedDate.month, 1);
                        int dayOfWeek = date.weekday - 1;
                        int offset = rowIndex * 7 + colIndex - dayOfWeek;
                        DateTime cellDate = date.add(Duration(days: offset));

                        return Container(
                          height: 50.0,
                          alignment: Alignment.center,
                          color: cellDate.month == _selectedDate.month ? Colors.white : Colors.grey[300],
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedDate = cellDate;
                              });
                            },
                            child: Text(
                              DateFormat('d').format(cellDate),
                              style: TextStyle(
                                color: cellDate.month == _selectedDate.month ? Colors.black : Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
            ),
            Container(
              width: 250,
              child: Padding(
                padding:  EdgeInsets.all(10),
                child: ElevatedButton(
                    child: (
                        Text("Create an Event")
                    ),
                    onPressed:() async {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  eventpage()),
                      );

                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}