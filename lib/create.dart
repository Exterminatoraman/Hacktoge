import 'package:flutter/material.dart';
import 'package:hacktoge/profile.dart';

import 'calender.dart';
import 'editprofile.dart';
import 'news.dart';
String post="";
class MyHomePage2 extends StatelessWidget {
  TextEditingController pos=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),

            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(url),
            ),
            Text(
              username,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(10),
          child:TextField(
            controller: pos,
            maxLines: 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Write your post',
              prefixIcon: Icon(Icons.star_border_outlined)
              ),
            ),
        ),
            SizedBox(height: 12),
            Row(
              children: <Widget>[

                IconButton(
                  onPressed: () {getFromGallery();},
                  icon: Icon(Icons.camera_alt),
                ),

                IconButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  CalendarPage()),);
                  },
                  icon: Icon(Icons.calendar_today),
                ),
                SizedBox(width: 12),
                Material(
                  child : Positioned(
                    bottom: 10,
                    right: 100,
                    child: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {post=pos.text;
                        pos.clear();

                        },
                      iconSize: 24,
                      padding: EdgeInsets.all(12),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}