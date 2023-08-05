import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1622447036013-a7e7367759c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
                  fit: BoxFit.fill),
              color: Colors.blueAccent,
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.location_city_outlined,
                  size: 50,
                ),
                const Text("VISION GO",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "create Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                            decoration: InputDecoration(
                          suffixIcon: Icon(Icons.done),
                          hintText: "Name",
                        ))),
                    const Padding(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                            decoration: InputDecoration(
                          suffixIcon: Icon(Icons.done),
                          hintText: "Email",
                        ))),
                    const Padding(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                            decoration: InputDecoration(
                          suffixIcon: Icon(Icons.done),
                          hintText: "Password",
                        ))),
                    const Padding(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                            decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: "Conform Passward",
                        ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Signup'),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "You have an account? ",
                            style: const TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                            text: "Login",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              },
                          ),
                        ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: ImageIcon(NetworkImage(
                              "https://static.vecteezy.com/system/resources/previews/012/871/371/original/google-search-icon-google-product-illustration-free-png.png")),
                          onPressed: () {},
                        ),
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
          )
        ],
      ),
    );
  }
}
