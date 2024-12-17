import 'package:affinity/Theme/Color.dart';
import 'package:flutter/material.dart';

class PartnerName extends StatelessWidget {
  const PartnerName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.customGradient,
        ),
        child: Column(
          children: [
           
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); 
                    },
                  ),
                ),
              ),
            ),

            // Centered content
            Expanded(
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
                  const SizedBox(height: 50),

                  // Input field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter partner nickname',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Next button
                  ElevatedButton(
                    onPressed: () {
                      print('Next button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
          ],
        ),
      ),
    );
  }
}
