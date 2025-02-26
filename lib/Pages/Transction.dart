import 'package:flutter/material.dart';
import 'package:CBE_CLONE/Widget/MyListView.dart'; // Importing the MyListView widget
import 'package:CBE_CLONE/constants/App_Colors.dart';

final List<Map<String, dynamic>> listData = [
  {
    'title': 'Withdrawal',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': false,
  },
  {
    'title': 'Deposit',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': true,
  },
  {
    'title': 'Withdrawal',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': false,
  },
    {
    'title': 'Withdrawal',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': false,
  },
  {
    'title': 'Deposit',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': true,
  },
  {
    'title': 'Withdrawal',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': false,
  },
    {
    'title': 'Withdrawal',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': false,
  },
  {
    'title': 'Deposit',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': true,
  },
  {
    'title': 'Withdrawal',
    'subtitle': 'Feb 26, 2024',
    'price': 510.00,
    'paytype': 'Mobile Debit',
    'isDeposit': false,
  },
  // Add more data as needed
];

class Transcation extends StatelessWidget {
  const Transcation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const Text(
                'Recent Transactions',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
          Expanded(
            child: MyListView(data: listData),
          ),
        ],
      ),
    );
  }
}
