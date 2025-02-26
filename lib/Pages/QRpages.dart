import 'package:CBE_CLONE/Widget/CustomButton.dart';
import 'package:CBE_CLONE/constants/App_Colors.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRpages extends StatelessWidget {
  const QRpages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String data = "2343423423423";
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: QrImageView(
                  data: data,
                  backgroundColor: AppColors.whitelight,
                  version: QrVersions.auto,
                  size: 300,
                  gapless: true,
                  embeddedImage:
                      AssetImage('assets/Dj6xJ2dX0AADlPv-removebg-preview.png'),
                  embeddedImageStyle: QrEmbeddedImageStyle(size: Size(80, 60)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      text: 'Amount & Reason',
                      onPressed: () {
                        // Add your onPressed logic here
                        _displayAmount(context);
                      },
                      color: AppColors.primary, // Custom background color
                      textColor: Colors.white, // Custom text color
                      borderRadius: 10.0, // Custom border radius
                      paddingVertical: 14.0, // Custom vertical padding
                      paddingHorizontal: 20.0, // Custom horizontal padding
                    ),
                    CustomButton(
                      text: 'Share',
                      onPressed: () {
                        // Add your onPressed logic here
                        _displayAmount(context);
                      },
                      color: AppColors.primary, // Custom background color
                      textColor: Colors.white, // Custom text color
                      borderRadius: 10.0, // Custom border radius
                      paddingVertical: 14.0, // Custom vertical padding
                      paddingHorizontal: 20.0, // Custom horizontal padding
                    )
                  ],
                ),
              ),
            )
          ]),
    );
  }

  Future _displayAmount(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        context: context,
        builder: (context) => SingleChildScrollView(
          child: Container(
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 48.0, left: 15, right: 15),
                      child: Center(
                        child: TextFormField(
          
                          decoration: InputDecoration(
                            hintText: 'Set Amount',
                            border: OutlineInputBorder(),
                            fillColor: AppColors.primary
                          ),
                        ),
                        
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0, left: 15, right: 15),
                          child: Center(
                            child: TextFormField(
                                  
                              decoration: InputDecoration(
                                hintText: 'Reason',
                                border: OutlineInputBorder(),
                                fillColor: AppColors.primary
                              ),
                            ),
                            
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
        ));
  }
}
