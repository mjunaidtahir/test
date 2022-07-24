import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isDark = false;
  void changeThme() {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  changeThme();
                },
                icon: const Icon(
                  Icons.nightlight_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.orange.shade600,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.brown.shade900,
                    ),
                    child: Icon(
                      Icons.person_outline,
                      size: 50,
                      color: Colors.orange.shade600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Muhammad Junaid Tahir",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "mjunaidtahir@outlook.com",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange.shade600,
                    ),
                    child: const Center(
                      child: Text(
                        "Upgrde to PRO",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTile(
                    onPressed: () {},
                    icon: Icons.privacy_tip,
                    title: "Privacy",
                    traling: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTile(
                    onPressed: () {},
                    icon: Icons.history,
                    title: "Purchace History",
                    traling: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTile(
                    onPressed: () {},
                    icon: Icons.help_outline,
                    title: "Help and Support",
                    traling: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTile(
                    onPressed: () {},
                    icon: Icons.settings_outlined,
                    title: "Help and Support",
                    traling: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomTile(
                    onPressed: () {},
                    icon: Icons.person_add_alt,
                    title: "Invite a Friend",
                    traling: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade900,
                      ),
                      child: const Center(
                        child: Text(
                          "Logout",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ));
  }
}

class CustomTile extends StatelessWidget {
  final String? title;

  final VoidCallback? onPressed;
  final IconData? icon;
  final Widget? traling;

  const CustomTile({
    Key? key,
    this.onPressed,
    this.icon,
    this.title,
    this.traling,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 207, 214, 218),
        ),
        child: ListTile(
          onTap: onPressed,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                icon ?? Icons.person,
                color: Colors.black,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title ?? "",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),
          trailing: traling,
        ));
  }
}
