// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // late String titleInput;
  // late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void addTransactionCallFct() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTransactionToList(
      titleController.text,
      double.parse(amountController.text),
    );
  }

  final Function addTransactionToList;
  NewTransaction(this.addTransactionToList, {Key? key}) : super(key: key);

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
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Title'),
              onSubmitted: (_) => addTransactionCallFct(),
            ),
            TextField(
              // onChanged: (value) => amountInput = value,
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
              onSubmitted: (_) => addTransactionCallFct(),
            ),
            ElevatedButton(
              onPressed: () {
                addTransactionCallFct();
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
