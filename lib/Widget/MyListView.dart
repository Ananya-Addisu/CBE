import 'package:CBE_CLONE/constants/App_Colors.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  MyListView({required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: Card(
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  
                },
                leading:  item['isDeposit'] ? Icon(Icons.arrow_circle_down_rounded, size: 35, color: Colors.red,) : Icon(Icons.arrow_circle_up_rounded, size: 35, color: Colors.green,),
                title: Text(
                  item['title'],
                  style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 14),
                ),
                subtitle: Text(
                  item['subtitle'],
                  style: TextStyle(color: AppColors.graylight, fontSize: 10),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${item['price']} Br.',
                        style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.primary, fontSize: 14),
                      ),
                      Text(
                        item['paytype'],
                        style: TextStyle(color: AppColors.graylight, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
