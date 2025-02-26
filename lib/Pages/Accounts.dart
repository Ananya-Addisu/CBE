import 'package:CBE_CLONE/Widget/BankHeaderWidget.dart';
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
  // Add more data as needed
];

class Accounts extends StatelessWidget {
  const Accounts({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const Text(
                'Accounts',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
                    Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: size.width * 1,
              height: size.height * 0.29,
              decoration: BoxDecoration(
                color: AppColors.blacklight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: BankHeaderWidget()
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
