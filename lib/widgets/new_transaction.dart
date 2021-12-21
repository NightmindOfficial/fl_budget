import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key}) : super(key: key);

  // late String titleInput;
  // late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              // onChanged: (value) => titleInput = value,
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              // onChanged: (value) => amountInput = value,
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            ElevatedButton(
              onPressed: () {
                print(titleController.text + ": " + amountController.text);
              },
              child: Text('Add Transaction'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
