import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transation_item.dart';
import '../models/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  TransactionList(this.transactions, this.deleteTx);
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return transactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constrains) {
            return Column(children: <Widget>[
              Text(
                'No transactions added yet!!',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: constrains.maxHeight * 0.6,
                child: Image.asset(
                  'assets/image/waiting.png',
                  fit: BoxFit.cover,
                ),
              ),
            ]);
          })
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return TransationItem(
                transaction: transactions[index],
                mediaQuery: mediaQuery, 
                deleteTx: deleteTx
              );
            },
            itemCount: transactions.length,
          );
  }
}


