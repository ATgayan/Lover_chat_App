import 'package:affinity/Theme/Color.dart';
import 'package:affinity/authenticate/Connect/name.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.customGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LC',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 50), // Add some spacing

            // Email input field
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 20), // Add some spacing

            // Next button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PartnerName()));
                print('Next button pressed');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blueGrey[900],
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
