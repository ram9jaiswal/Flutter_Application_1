import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Colors.cyan,
          // decoration: BoxDecoration(),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/021/548/095/original/default-profile-picture-avatar-user-avatar-icon-person-icon-head-icon-profile-picture-icons-default-anonymous-user-male-and-female-businessman-photo-placeholder-social-network-avatar-portrait-free-vector.jpg"),
                radius: 100,
              ),
              const Text("Ram jaiswal"),
              const Text("ram9jaiswal@gmail.com"),
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
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    const ListTile(
                      title: Text("Profile"),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text("Contact us"),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text("Privacy"),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text("Share App"),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                    const Divider(),
                    const ListTile(
                      title: Text("Passward"),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                    const Divider(),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Logout'),
                        )),
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
