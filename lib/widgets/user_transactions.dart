import 'package:fl_budget/widgets/transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Neue Schuhe',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Latte',
      amount: 4.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Netflix Subscription',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Otis\' OnlyFans Subscription',
      amount: 4.20,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransactionToList(
      String transactionTitle, double transactionAmount) {
    final TBATransaction = Transaction(
      title: transactionTitle,
      amount: transactionAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    _userTransactions.add(TBATransaction);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_userTransactions),
      ],
    );
  }
}
