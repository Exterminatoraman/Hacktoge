import 'main.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 25, 5, 5),
                  child: Container(
                    height: 360,
                    width: 360,
                    child: Image.network('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(27, 12, 0, 0),
                    child: Text("Angela",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      )
                      ,),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(27, 10, 0, 0),
                child: Text("profession",
                  style: TextStyle(
                    fontSize: 18,
                  )
                  ,),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("345",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Followers",
                          style: TextStyle(
                            fontSize: 18,
                          )
                          ,),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("345",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Followers",
                          style: TextStyle(
                            fontSize: 18,
                          )
                          ,),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("345",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            )),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Followers",
                        style: TextStyle(
                          fontSize: 18
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Row(

              children: [
                SizedBox(
                  width: 5,
                ),
                Text("BIO",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Flexible(child: Text("You may want to display a circular image from the internet to show the user’s profile picture."))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
            child: Row(

              children: [
                SizedBox(
                  width: 5,
                ),
                Text("Interest",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800
                  ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 100,
                  width: 350,
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: <Widget>[
                        Container(
                          height: 1,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          child:  Center(child: Text("Shooting")),
                        ),
                        Container(
                          height: 1,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          child:  Center(child: Text("Shooting")),
                        ),
                        Container(
                          height: 5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),

                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),

                          child:  Center(
                            child: Text("Shooting",

                            ),
                          ),
                        ),
                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),

                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          child:  Center(child: Text("Shooting")),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),

                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          child:  Text("He'd have you all unravel at the"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),

                            borderRadius: BorderRadius.all(Radius.circular(20)),

                          ),
                          child:  Text("He'd have you all unravel at the"),
                        ),
                      ]),
                )
              ],
            ),
          ),

        ],


      ),
    );
  }
}
