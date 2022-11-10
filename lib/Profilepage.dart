import 'package:flutter/material.dart';



class ProfileHome extends StatefulWidget {
  @override
  State<ProfileHome> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
              actions: const [
                Icon(
                  Icons.menu,
                  color: Colors.grey,
                )
              ],
            ),
            body: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage:NetworkImage(""),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                    ],
                  ),
                  const SizedBox(
                    height: 07,
                  ),
                  const Text("Arjun",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding:
                    const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 30),
                    height: 250,
                    child: ListView(
                      children: [
                        Container(
                          height: 60,
                          child: Card(
                            elevation: 3,
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Expanded(
                                    flex: 5,
                                    child: Text(
                                      "Address",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Container(
                          height: 60,
                          child: Card(
                            elevation: 3,
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [

                                Expanded(
                                    flex: 5,
                                    child: Text(
                                      "phone",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          child: Card(
                            elevation: 3,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Expanded(
                                    flex: 2,
                                    child: Icon(
                                      Icons.logout,
                                      size: 30,
                                    )),
                                Expanded(
                                    flex: 7,
                                    child: Text(
                                      "Logout",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),],
                            ),
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}