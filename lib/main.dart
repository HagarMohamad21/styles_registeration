import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MainPage(),
    ));

class MainPage extends StatelessWidget {
  int tomatoColor = 0xffff6464;
  int greenColor=0xffff6464;
  double radius=15.0;
  double viewsHeight=40.0;
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
                  decoration: BoxDecoration(
                  border: Border.all(color: Color(tomatoColor),width: 2),
                    borderRadius:BorderRadius.all( Radius.circular(radius))
                  ),
                  height: viewsHeight,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(tomatoColor),
                      ),

                    ),
                    cursorColor: Color(tomatoColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius),border: Border.all(color: Color(tomatoColor),width: 2)),
                    height: viewsHeight,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(tomatoColor),
                          ),
                          hintText: 'Email',
                          ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(border:Border.all(color: Color(tomatoColor),width: 2),borderRadius: BorderRadius.circular(radius)),
                  height: viewsHeight,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText: 'Phone',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(tomatoColor),
                        ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius),border: Border.all(color: Color(tomatoColor),width: 2)),
                  height: viewsHeight,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(tomatoColor),
                        ),
                       border: InputBorder.none),
                  ),
                ),
                Flexible(child: Align(child: SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    elevation: 0,
                    onPressed: (){},
                    child: Text("Register",style: TextStyle(color: Colors.white),),
                    color: Colors.green,height: viewsHeight,shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(radius),
                  ),),
                ),alignment: Alignment.bottomCenter,),)
              ],
            ),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
