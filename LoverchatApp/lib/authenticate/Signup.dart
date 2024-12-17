import 'package:affinity/Theme/Color.dart';
import 'package:affinity/authenticate/Signin.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? gender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 900,
            decoration: const BoxDecoration(gradient: AppColors.customGradient),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "LC",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 50,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                              labelText: 'Your Name',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),

                          TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),

                          TextFormField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),

                          const Text(
                            'Gender',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RadioListTile<String>(
                                  title: const Text(
                                    'Male',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  value: 'Male',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile<String>(
                                  title: const Text(
                                    'Female',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  value: 'Female',
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          if (gender == null)
                            const Text(
                              'Please select your gender',
                              style: TextStyle(color: Color.fromARGB(255, 0, 2, 8), fontSize: 12),
                            ),
                          const SizedBox(height: 24),

                          // Create Account Button
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate() &&
                                  gender != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Account Created Successfully!')),
                                );
                              } else if (gender == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Please select your gender')),
                                );
                              }
                            },
                            child: const Text('Create Account'),
                          ),
                          Center(
                              child: GestureDetector(
                            child: const Text("I have account. Sign in ",style: TextStyle(color: Color.fromARGB(255, 2, 9, 93)),),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signin()));
                            },
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
