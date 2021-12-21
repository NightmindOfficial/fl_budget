import 'package:fl_budget/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // late String titleInput;
  // late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              // onChanged: (value) => amountInput = value,
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            ElevatedButton(
              onPressed: () {
                addTransactionToList(
                  titleController.text,
                  double.parse(amountController.text),
                );
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
