import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/auth/signup_screen.dart';
import 'package:flutter_application_1/user_profile/profile_screen.dart';
import 'package:flutter_application_1/utils/utils.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Utils.getHeight(context),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1622447036013-a7e7367759c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                  ),
                  fit: BoxFit.cover),
              color: Colors.blueAccent,
            ),
            child: Column(
              children: const [
                Icon(
                  Icons.location_city_outlined,
                  size: 50,
                ),
                Text("VISION GO",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Form(
              key: _formKey,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                // margin: const EdgeInsets.only(top: 300),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value!)) {
                              return 'email not valid';
                            }
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.done),
                            hintText: "user name",
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                          controller: passController,
                          validator: (value) {
                            if (value!.length < 3)
                              return "enter valid password";
                          },
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: "Passward",
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text("Accept Tearms And Conditions"),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Forgot Passward?")),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate() &&
                                  isChecked) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Profile(),
                                    ));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Form not vaild")));
                              }
                            },
                            child: const Text('Login'),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Don't have Account? ",
                              style: const TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                              text: "Signup",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const signUp(),
                                      ));
                                },
                            ),
                          ])),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.accessibility_new_sharp,
                                size: 20,
                              )),
                          // Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.accessibility_new_sharp,
                                size: 20,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
