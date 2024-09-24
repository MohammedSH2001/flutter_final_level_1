import 'package:flutter/material.dart';
import 'package:flutter_final_level_1/model/item.dart';
import 'package:flutter_final_level_1/page/details.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homemy extends StatelessWidget {
  final String emailMy;
  final String username;
  Homemy({super.key, required this.emailMy,required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    child: Text(
                      "8",
                      style: TextStyle(
                          color: Color.fromARGB(255, 23, 23, 23), fontSize: 14),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(180, 245, 242, 242),
                        shape: BoxShape.circle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.white,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "\$ 13",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 63, 62, 62),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 5),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(prodect: items[index]),
                  ),
                );
              },
              child: GridTile(
                child: Stack(children: [
                  Positioned(
                    right: 10,
                    left: 10,
                    top: 10,
                    bottom: 5,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(38),
                        child: Image.asset(items[index].imagePath)),
                  ),
                ]),
                footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                  trailing: IconButton(
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 26,
                      )),

                  leading: Text(
                    items[index].price.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),

                  title: Text(
                    "",
                  ),
                ),
              ),
            );
          }),
      drawer: Drawer(
          child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/test.jpg"),
                        fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/MK.jpg"),
                  ),
                  accountName: Text(
                    "$username",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  accountEmail: Text("$emailMy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)))),
              ListTile(
                  title: Text("Home"), leading: Icon(Icons.home), onTap: () {}),
              ListTile(
                  title: Text("My products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {}),
              ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {}),
              ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  }),
              Container(
                margin: EdgeInsets.only(top: 350),
                child: Text("Developed by Mohammed ALShawish",
                    style: TextStyle(fontSize: 13)),
              )
            ],
          ),
        ],
      )),
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
                    Navigator.pushNamed(context, "Homemy");
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
