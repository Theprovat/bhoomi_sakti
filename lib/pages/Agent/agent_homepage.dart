import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:dsi_pro/dsi_pro.dart';
import 'package:original/pages/Agent/agent_explorepage.dart';
import 'package:original/pages/Agent/agent_order.dart';
import 'package:original/pages/Agent/agent_profilepage.dart';
import 'package:original/pages/Agent/agent_search.dart';
import 'package:original/pages/Agent/my_earning.dart';
import 'package:original/pages/Agent/product_inventory.dart';
import 'package:original/pages/Agent/test_list.dart';
import 'package:original/pages/Agent/test_report.dart';
import 'package:original/pages/Agent/test_request.dart';

class AgentHomepage extends StatefulWidget {
  const AgentHomepage({super.key});

  @override
  State<AgentHomepage> createState() => _HomePageState();
}

class _HomePageState extends State<AgentHomepage> {
  final pages = [
    const AgentExplorepage(),
    // const AgentSearch(),
    const AgentOrder(),
    const AgentProfilepage()
  ];
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              child: UserAccountsDrawerHeader(
                accountName: Text("Bhuban ruidas"),
                accountEmail: Text("9647457831"),
                currentAccountPicture: CircleAvatar(
                  child: Text(HelloDevsecit().getProfilePhoto("Mr. Provat")),
                ),
              ),
            ),
            Container(
              height: DSIheightWidth(context, 100, true) - 200,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text("Home"),
                    onTap: () {
                      go(context, AgentHomepage());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.radar_sharp),
                    title: Text("Test Requests "),
                    onTap: () {
                      go(context, TestRequest());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.radar_sharp),
                    title: Text("Test Reports"),
                    onTap: () {
                      go(context, TestList());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => TestList()),
                      // );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text("Product & Inventory"),
                    onTap: () {
                      // setState(() {
                      //   currentPageIndex = 2;
                      //   goBack(context);
                      // });
                      go(context, ProductInventory());
                    },
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.ads_click_sharp),
                  //   title: Text("My Order History"),
                  //   onTap: () {},
                  // ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("My Earning"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewEarnings()),
                      );
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("About us"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_outlined),
                    title: Text("Terms and Conditions"),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton.filledTonal(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bhuban Ruidas",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Lets grow our Business",
                style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: badges.Badge(
                badgeContent: const Text(
                  '7',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                position: badges.BadgePosition.topEnd(top: -15, end: -12),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.green),
                // badgeColor: Colors.blue),
                child: const Icon(IconlyBroken.notification),
              ),
            ),
          ),
        ],
      ),
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
            label: "Home",
            activeIcon: Icon(IconlyBold.home),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(IconlyLight.search),
          //   label: "Search",
          //   activeIcon: Icon(IconlyBold.search),
          // ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.graph),
            label: "Orders",
            activeIcon: Icon(IconlyBold.graph),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.profile),
            label: "Profile",
            activeIcon: Icon(IconlyBold.profile),
          ),
        ],
      ),
    );
  }
}
