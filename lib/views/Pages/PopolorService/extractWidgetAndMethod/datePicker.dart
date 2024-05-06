import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: dateController,
            readOnly: true,
            decoration: InputDecoration(
              hintText: 'Select Date',
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Icon(
            Icons.calendar_today,
            size: 30,
            color: const Color.fromARGB(255, 76, 76, 76),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
