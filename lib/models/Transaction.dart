import 'package:flutter/foundation.dart';

class Transaction {

// we add final to make sure these properties should never change after
// this means they get their values when they are created
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    @required this.id, 
    @required this.title,
    @required this.amount, 
    @required this.date
  });
}