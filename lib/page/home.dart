import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 119, 65, 245),
            Color.fromARGB(75, 239, 243, 6),
            Color.fromARGB(102, 7, 18, 233)
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Container(
                height: 480,
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Text(
                      "Profiles",
                      style: TextStyle(fontSize: 30, fontFamily: "myfont"),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/signup_top.png"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                color: const Color.fromARGB(37, 96, 94, 88),
                              )),
                          SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                color: const Color.fromARGB(37, 96, 94, 88),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                color: const Color.fromARGB(37, 96, 94, 88),
                                child: Column(
                                  children: [
                                    Text(
                                      "Profile",
                                      style: TextStyle(fontFamily: "myfont"),
                                    ),
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/MK.jpg"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "gr@gmail.com",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                              height: 120,
                              width: 120,
                              child: Container(
                                color: const Color.fromARGB(37, 96, 94, 88),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(60)),
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                Color.fromARGB(209, 94, 40, 221),
                Color.fromARGB(136, 29, 226, 217),
                Color.fromARGB(59, 195, 75, 206)
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: GNav(
              padding: EdgeInsets.all(16),
              duration: Duration(milliseconds: 500),
              haptic: true,
              tabBorderRadius: 90,
              curve: Curves.easeInExpo,
              tabBackgroundColor: Colors.grey,
              color: Colors.black,
              activeColor: const Color.fromARGB(255, 246, 248, 250),
              gap: 10,
              onTabChange: (Index) {},
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Homemy");
                  },
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.favorite_rounded,
                  text: "Like",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                ),
                GButton(
                    onPressed: () {
                    Navigator.pushNamed(context, "/Home");
                  },
                  icon: Icons.person,
                  text: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
