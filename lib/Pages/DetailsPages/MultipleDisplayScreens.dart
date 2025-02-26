import 'package:CBE_CLONE/Widget/MultiListcard.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';
import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> listData = [
  {
    'title': 'Transfer to CBEBirr Wallet',
    'subtitle': 'Bank to CBEBirr Wallet Transfer',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Make Payment to Beneficiary',
    'subtitle': 'Transfer to CBE Account',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Transfer to CBE Account',
    'subtitle': 'Transfer CBE Account',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Local Money Transfer',
    'subtitle': 'Transfer to any to CBE Customer',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Manage beneficiaries',
    'subtitle': 'Add or Delete your Friend Account',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Own Account Transfer',
    'subtitle': 'Transfer between your Account',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Transfer to Own Telebirr Wallet',
    'subtitle': 'Transfer to own Telebirr Wallet',
    'icon': 'assets/icons/i_transfer.png'
  },
  {
    'title': 'Transfer to Other Banks',
    'subtitle': 'Transfer to any to CBE Customer',
    'icon': 'assets/icons/i_transfer.png'
  },
];

final List<Map<String, dynamic>> UtData = [
  {
    'title': 'Utility Payment',
    'icon': 'assets/icons/i_transfer.png',
    'subtitle': 'Utility Payment'
  },
  {
    'title': 'Ethiopian Airlines Services',
    'icon': 'assets/icons/i_transfer.png',
    'subtitle': 'Airlines and e-Staff'
  },
  {
    'title': 'Immigration',
    'icon': 'assets/icons/i_transfer.png',
    'subtitle': 'Passport payment and Origin Id Payment'
  },
  {
    'title': 'DSTV',
    'icon': 'assets/icons/i_transfer.png',
    'subtitle': 'Dstv Payment'
  },
  {
    'title': 'CANAL+',
    'icon': 'assets/icons/i_transfer.png',
    'subtitle': 'CANAL+ Payment',
  }
];

final List<Map<String, dynamic>> topData = [
  {
    'title': 'Airtime',
    'subtitle': 'Airtime TopUP',
    'icon': 'assets/icons/i_Topup.png',
  }
];

final List<Map<String, dynamic>> helpData = [
  {
    'title': 'Gift',
    'subtitle': 'Gift',
    'icon': 'assets/icons/i_help.png',
  }
];

final List<Map<String, dynamic>> UtilityData = [
  {
    'title': 'Nedaj, Water and Electric',
    'subtitle': 'Nedaj, Water, Electric and House Rent Payment',
    'icon': 'assets/icons/i_utility.png',
  },
  {
    'title': 'Ethio Telecom Services',
    'subtitle': 'Ethio Telecom Services',
    'icon': 'assets/icons/i_utility.png',
  },
    {
    'title': 'Safaricom Services',
    'subtitle': 'Safaricom Services',
    'icon': 'assets/icons/i_utility.png',
  },
];

final List<Map<String, dynamic>> govData = [
  {
    'title': 'Tax and Government Services',
    'subtitle': 'Tax and Government Services',
      'icon': 'assets/icons/i_help.png',
  }
];

final List<Map<String, dynamic>> bankData = [
  {
    'title': 'View Locker Amount',
    'subtitle': 'View Locker Amount Details',
    'icon': 'assets/icons/i_utility.png',
  },
  {
    'title': 'Create Standing Order',
    'subtitle': 'Create Standing Order',
    'icon': 'assets/icons/i_utility.png',
  },
    {
    'title': 'ATM/Visa Card',
    'subtitle': 'ATM/Visa Card',
    'icon': 'assets/icons/i_utility.png',
  },
];
final List<Map<String, dynamic>> travelData = [
  {
    'title': 'Air Transport',
    'subtitle': 'Air Transport Payment',
          'icon': 'assets/icons/i_Travel.png',
  },
  {
    'title': 'Land Transport',
    'subtitle': 'Land Transport Payment',
      'icon': 'assets/icons/i_Travel.png',
  },
];

final List<Map<String, dynamic>> payData = [
  {
    'title': 'E-Commernce and Other Payment',
    'subtitle': 'E-Commernce and Other Payment',
          'icon': 'assets/icons/i_Payfor.png'
  },
  {
    'title': 'School Fee',
    'subtitle': 'School Fee Payment',
      'icon': 'assets/icons/i_Payfor.png'
  },
    {
    'title': 'Health',
    'subtitle': 'Hospital and Realated Payment',
      'icon': 'assets/icons/i_Payfor.png'
  },
    {
    'title': 'Donation',
    'subtitle': 'Donation and Fund Raising',
      'icon': 'assets/icons/i_Payfor.png'
  },
];

class MultipleDisplayScreens extends StatelessWidget {
  final screenmodel;
  const MultipleDisplayScreens({Key? key, required this.screenmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? content;
    switch (screenmodel) {
      case 'Transfer':
        content = Center(
          child: MultiListcard(datas: listData),
        );
        break;
      case 'Utilities':
        content = MultiListcard(datas: UtData);
        break;
      case 'Top up':
        content = MultiListcard(datas: topData);
        break;
      case 'Help':
        content = MultiListcard(datas: helpData);
        break;
      case 'Utility':
        content = MultiListcard(datas: UtilityData);
        break;
      case 'Government':
        content = MultiListcard(datas:govData);
        break;
      case 'Banking':
        content = MultiListcard(datas: bankData);
        break;
      case 'Travel':
        content = MultiListcard(datas: travelData);
        break;
      case 'Pay For':
        content = MultiListcard(datas: payData);
        break;
      // Add other cases here as needed
    }
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 20,
        iconTheme: IconThemeData(color: AppColors.primary, size: 27),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'En',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.primary,
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 42,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: const Icon(
                Icons.refresh,
                color: AppColors.primary,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: <Widget>[
          float1(),
          float2(),
          float3(),
        ],
        colorStartAnimation: AppColors.primary,
        colorEndAnimation: AppColors.primary,
        curve: Curves.decelerate,
        animatedIconData: AnimatedIcons.view_list,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                child: Text(
                  screenmodel,
                  style: TextStyle(
                      color: AppColors.blacklight,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Expanded(
            // Ensure content takes all available space
            child: Container(
              child: content ?? SizedBox(), // Use SizedBox if content is null
            ),
          ),
        ],
      ),
    );
  }
}

Widget float1() {
  return FloatingActionButton(
    onPressed: () {
      // Placeholder function for the first button
      print('First button pressed');
    },
    heroTag: "btn1",
    tooltip: 'First button',
    child: Icon(Icons.monetization_on_sharp),
  );
}

Widget float2() {
  return FloatingActionButton(
    onPressed: () {
      // Placeholder function for the second button
      print('Second button pressed');
    },
    heroTag: "btn2",
    tooltip: 'Second button',
    child: Icon(Icons.qr_code),
  );
}

Widget float3() {
  return FloatingActionButton(
    onPressed: () {
      // Placeholder function for the third button
      print('Third button pressed');
    },
    heroTag: "btn3",
    tooltip: 'Third button',
    child: Icon(Icons.receipt_long_outlined),
  );
}
