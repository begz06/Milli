import 'package:flutter/material.dart';
import 'package:milli/assets/constants/app_colors.dart';

class DeleteAccPage extends StatelessWidget {
  const DeleteAccPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Удаление аккаунта',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Почему хотите уходить?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ведите причину удаление (от 10 до 300 слов)',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: primaryColor,
                  fixedSize: Size(345.0, 45.0)),
              child: Text(
                'Продолжить',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF9F9F9),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
