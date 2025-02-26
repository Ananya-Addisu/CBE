import 'package:CBE_CLONE/Pages/DetailsPages/MultipleDisplayScreens.dart';
import 'package:CBE_CLONE/Widget/BankHeaderWidget.dart';
import 'package:flutter/material.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';

class ServiceItem extends StatelessWidget {
  final String serviceName;
  final String iconData;
  final Function()? onTap;

  const ServiceItem({
    required this.serviceName,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 3,
        color: Color.fromARGB(255, 255, 255, 255),
        shadowColor: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconData,
                width: 35,
                height: 35,
              ),
              // Icon(iconData, size: 35, color: AppColors.primary,),
              SizedBox(height: 10),
              Text(
                serviceName,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  bool showFullAccountNumber = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Map<String, dynamic>> services = [
      {
        'name': 'Transfer',
        'icon': 'assets/icons/i_transfer.png',
        'route': 'Transfer',
      },
      {
        'name': 'Utilities',
        'icon': 'assets/icons/i_utilities.png',
        'route': 'Utilities',
      },
      {
        'name': 'Top up',
        'icon': 'assets/icons/i_Topup.png',
        'route': 'Top up',
      },
      {
        'name': 'Help',
        'icon': 'assets/icons/i_help.png',
        'route': 'Help',
      },
      {
        'name': 'Utility',
        'icon': 'assets/icons/i_utility.png',
        'route': 'Utility',
      },
      {
        'name': 'Government',
        'icon': 'assets/icons/i_help.png',
        'route': 'Government',
      },
      {
        'name': 'Banking',
        'icon': 'assets/icons/i_Banking.png',
        'route': 'Banking',
      },
      {
        'name': 'Travel',
        'icon': 'assets/icons/i_Travel.png',
        'route': 'Travel',
      },
      {
        'name': 'Pay For',
        'icon': 'assets/icons/i_Payfor.png',
        'route': 'Pay For',
      },
    ];
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: size.width * 1,
                height: size.height * 0.29,
                decoration: BoxDecoration(
                  color: AppColors.blacklight,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: BankHeaderWidget()),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Our Services',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ),
          // Add your GridView here
          Expanded(
            child: Container(
              color: AppColors.whitelight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return ServiceItem(
                      serviceName: services[index]['name'],
                      iconData: services[index]['icon'],
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MultipleDisplayScreens(screenmodel: services[index]['route'],)));
                        // Navigator.pushNamed(context, services[index]['route']);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
