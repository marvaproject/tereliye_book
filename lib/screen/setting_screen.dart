import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 243, 244),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  launch(
                      'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcRzBxnWkPNmDrgJDGKNQLKSGGgdJpMqRsvRKPrZMMQFKgwnpbZtxZhJBxNtGBcczFxnHlcpr');
                },
                child: Container(
                  width: 200,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.email_rounded,
                        color: Color.fromARGB(255, 37, 89, 101)
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Contact Developer',
                          style: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 10,
                            color: Color.fromARGB(255, 37, 89, 101),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'v 1.0.0',
                style: TextStyle(
                    fontSize: 14, color: Colors.black, fontFamily: 'Lora'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
