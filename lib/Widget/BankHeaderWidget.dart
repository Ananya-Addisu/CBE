import 'package:flutter/material.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';

class BankHeaderWidget extends StatefulWidget {
  @override
  _BankHeaderWidgetState createState() => _BankHeaderWidgetState();
}

class _BankHeaderWidgetState extends State<BankHeaderWidget> {
  bool showFullAccountNumber = false; // Assuming this is a state variable in your original widget
  DateTime now = DateTime.now();


  String accountNumber = '1000142402614';
  String Balance = '20000';

  @override
  Widget build(BuildContext context) {
      String formattedDateTime =
      "${_getFormattedDate(now)} ${_getFormattedTime(now)}";
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/icons/worldmap-06.png',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/Dj6xJ2dX0AADlPv-removebg-preview.png',
                    height: 80,
                    width: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        'Commercial Bank of Ethiopia',
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'The Bank You can always Rely on!',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 253, 233, 164),
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              'Balance',
              style: TextStyle(
                fontSize: 14,
                color: const Color.fromARGB(255, 233, 231, 231),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  showFullAccountNumber
                      ? Balance
                      : MakeHideNumbers('*****', 0, 0),
                  style: TextStyle(
                    fontSize: 26,
                    color: const Color.fromARGB(255, 233, 231, 231),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Br.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 233, 231, 231),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Color.fromARGB(255, 186, 184, 184),
                  ),
                  onPressed: () {
                    setState(() {
                      showFullAccountNumber = !showFullAccountNumber;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  'Saving - ${showFullAccountNumber ? accountNumber : MakeHideNumbers(accountNumber, 4, 4)}',
                  style: TextStyle(
                      fontSize: 16, color: AppColors.secondary),
                ),
                Text(
                  formattedDateTime,
                  style: TextStyle(
                      fontSize: 11,
                      color: const Color.fromARGB(255, 233, 231, 231)),
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  String _getFormattedDate(DateTime dateTime) {
    return "${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}";
  }

  String _getFormattedTime(DateTime dateTime) {
    return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}";
  }

  String MakeHideNumbers(String label, int visibleStart, int visibleEnd) {
    String MaskedNumber = '*' * (label.length - visibleStart - visibleEnd);
    return label.substring(0, visibleStart) +
        MaskedNumber +
        label.substring(label.length - visibleEnd);
  }
}
