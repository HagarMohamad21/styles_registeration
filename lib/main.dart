import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MainPage(),
    ));

class MainPage extends StatelessWidget {
  int tomatoColor = 0xffff6464;
  int greenColor=0xffff6464;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3a4750),
        title: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Color(tomatoColor),
                ),
                Text(
                  "Register",
                  style: TextStyle(color: Color(tomatoColor)),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.menu,
                color: Color(tomatoColor),
                size: 40,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox.expand(
          child: Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xffd6cfc9),
                      radius: 60,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 40,
                      child: CircleAvatar(
                        backgroundColor: Color(tomatoColor),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'Full name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(tomatoColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(tomatoColor), width: 2),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                    cursorColor: Color(tomatoColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(tomatoColor),
                          ),
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(tomatoColor), width: 2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ))),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Phone',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(tomatoColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                width: 2, color: Color(tomatoColor)))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(tomatoColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(tomatoColor)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                  ),
                ),
                Flexible(child: Align(child: MaterialButton(
                  elevation: 0,
                  onPressed: (){},
                  child: Text("Register",style: TextStyle(color: Colors.white),),
                  color: Colors.green,height: 40,shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                ),),alignment: Alignment.bottomCenter,),)
              ],
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
