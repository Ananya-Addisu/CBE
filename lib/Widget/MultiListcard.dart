import 'package:CBE_CLONE/constants/App_Colors.dart';
import 'package:flutter/material.dart';

class MultiListcard extends StatelessWidget {
  final List<Map<String, dynamic>> datas;
  const MultiListcard({required this.datas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: (context, index) {
        final item = datas[index];
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(
              
          // Set background color to white
              child: ListTile(
                shape: Border(bottom:BorderSide(width: 0.7, color: Color.fromARGB(255, 216, 216, 216))),
                leading: Image.asset(
                  item['icon'],
                  width: 40,
                  height: 40,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                  color: AppColors.primary,
                ),
                title: Text(
                  item['title'],
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  item['subtitle'],
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromARGB(255, 146, 146, 146),
                  ),
                ),
              ),
            
          ),
        );
      },
    );
  }
}

