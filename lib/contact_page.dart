import 'package:flutter/material.dart';
import 'package:jawadrahimi_contact_app/contact/add_contact.dart';
import 'package:jawadrahimi_contact_app/contact/contact.dart';

import 'contact/custome_box_appbar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFf1f1f1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 68,

          actions: [
            // the first logo place in here:
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  children: [
                    Image.asset(
                      width: 40,
                      height: 40,
                      "assets/icon/app.png",
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                        "MetAI-Contact",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            custome_container(icon: Icons.search, all_padd: 13, raduies: 15),
            custome_container(
              icon: Icons.notifications_none,
              all_padd: 13,
              raduies: 15,
            ),
            custome_container(icon: Icons.add, all_padd: 13, raduies: 15),
            const SizedBox(width: 14),
          ],
          bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            unselectedLabelStyle: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w100,
              fontSize: 10,
            ),

            indicatorAnimation: TabIndicatorAnimation.linear,
            textScaler: TextScaler.noScaling,
            overlayColor: WidgetStatePropertyAll(Colors.grey.shade200),
            tabAlignment: TabAlignment.fill,
            dividerColor: Colors.grey.shade300,
            indicatorWeight: 3,
            splashBorderRadius: BorderRadius.circular(17),
            labelStyle: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            splashFactory: InkRipple.splashFactory,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFF01537B),
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.red,

            tabs: [
              Tab(
                child: Text(
                  "Conversational Contacts",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF01537B),
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Unknown Contacts",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF01537B),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),

              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    // ListTile(
                    //   title: Text(.name),
                    //   subtitle: Text('${contact.phone}\n${contact.email}'),
                    //   isThreeLine: true,
                    // );
                  },
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF01537B),
          elevation: 0.0,
          splashColor: Colors.transparent,
          highlightElevation: 0.5,
          child: Icon(Icons.person_add, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(100),
          ),
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const addcontacts(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      // Example: slide from right
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;

                      var tween = Tween(
                        begin: begin,
                        end: end,
                      ).chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
              ),
            );
          },
        ),
      ),
    );
  }
}
