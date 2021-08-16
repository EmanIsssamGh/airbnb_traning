import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Mainscreen(),
    );
  }
}



class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  State<Mainscreen> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<Mainscreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.only(left: 7.0),
                // color: Colors.white,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.black),

                  color: Colors.white,
                ),
                child: TextFormField(

                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    hintText: 'Where are you going ',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12.0,
                    ),

                  ),
                ),
              ),
              Container(

                  child:
                  Stack(

                    children:<Widget>[

                      Container(

                        //margin: EdgeInsets.only(right: 20.0,left: 20.0),
                        child: Image(image:AssetImage('images/ff.jpg'),
                          fit: BoxFit.cover,
                          height: 270,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(40.0),
                        padding: EdgeInsets.only(left:40.0),
                        child: Text(
                            'Not sure where to go? Perfect.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),
                      ),
                      Container(

                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(left:120.0,top:80.0),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(color: Colors.black),

                        color: Colors.white,
                      ),
                      child: Expanded(
                        child: FlatButton(
                          onPressed: () {  },
                          child: Text(
                            ' Im Flexable',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),

                        ),
                      ),
                    ),
                  ],),

              ),
             Container(
               alignment: Alignment.topLeft,
               child: Text(
                  ' Live anywhere',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
             ),
              SingleChildScrollView(
                scrollDirection:Axis.horizontal ,
                child: Row(
                  children: <Widget>[
                    BoxOfImages(
                      'Outdoor getways',
                      'images/out.jpg',
                    ),
                    BoxOfImages(
                      'Unique stays ',
                      'images/uniqe.jpg',
                    ),
                    BoxOfImages(
                      'Entire homes',
                      'images/entire.jpg',
                    ),

                  ],
                ),
              ),

              Container(

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.black),
                  color: Colors.black,


                ),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Column(

                  children:<Widget>[ Stack(
                    alignment: Alignment.topCenter,
                    children:<Widget>[

                      Container(

                        // margin: EdgeInsets.only(top: 60,left:100),
                        // padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          'Try hosting',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.only(top: 30,left:100),
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          'Eran extra income and unlock new '
                              'opportunities by sharing your space.',
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),
                      ),
                      Container(

                        margin: EdgeInsets.all(100.0),
                        padding: EdgeInsets.only(left: 7.0),
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(color: Colors.black),

                          color: Colors.white,
                        ),
                        child: Expanded(
                          child: FlatButton(
                            onPressed: () {  },
                            child: Text(
                              ' Learn more ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],),
                    Image(image: AssetImage('images/host.jpg'))
                ],
                ),

              ),

              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  ' Discover things to do  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: <Widget>[

                    BoxOfImages2(
                      ' Experiences ',
                      'Find unforgettable ativities near you.',
                      'images/activiities.jpg',


                    ),
                    BoxOfImages2(
                        'Online Experiences ',
                        'Live, interactive activities led by Hosts.',
                      'images/online.jpg',


                    ),
                    BoxOfImages2(
                        'Olympians & Paralympians ',
                        'On;ine activities hosted by athletes.',
                            'images/opiympians.png',
                    ),
                  ],
                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                alignment: Alignment.topLeft,
                child: Text(
                  ' Stay informed  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),

              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: <Widget>[
                informedBox(' For gusts','Our COVId-19 respose','Health an safety updates','Cancellation options',
                    'Learn whats covered','Help center','Get support'),
                    informedBox('For hosts', 'Message from Brain Chesky', 'Hear from our CEo',
                        'Resources for hosting ', 'Whats impacted by COVID-19', 'Providing frontline stays', 'Learn how to help '),
                    informedBox('ForCOVID-19 responders', 'Frontline stays', 'Learn about our program',
                        'Sign up', 'check for hoousing options', 'Make a donation', 'Support nonprofit organization'),

                    informedBox('More', 'Airbnb Newsroom ', 'Lastest announcements', 'Watch Made possible by Hosts',
                        'Short films about Airbnb trips','Airbnb 2021', 'introducing 100+ upgrades'),

  ],)
    ), ],

          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.search),
            label: 'Explore',


            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlists',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airport_shuttle),
            label: 'Trips',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: 'Profile',
            backgroundColor: Colors.blueAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap
            :
        _onItemTapped
        ,
      )
      ,

    );
  }

  Container informedBox( String label,String t1,String t2,String t3,
      String t4, String t5, String t6) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(.2),
      ),
      child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 300,
                      child: Text(label,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),

                      ),
                    ),
                    Container(

                      height: 100,
                      width: 300,
                      child: FlatButton(
                        onPressed: () {  },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(t1,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),


                            ),
                            Text(t2,
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),),],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 300,
                      child: FlatButton(
                        onPressed: () {  },
                        child: Column(
                          children: <Widget>[
                            Text(t3,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),


                            ),
                            Text(t4,
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,

                              ),),],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 300,
                      child: FlatButton(
                        onPressed: () {  },
                        child: Column(
                          children: <Widget>[
                            Text(t5,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),


                            ),
                            Text(t6,
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,

                              ),),],
                        ),
                      ),
                    ),
                  ],

                ),
    );
  }
//This method to draw the second row of the screen
  FlatButton BoxOfImages2( String text1 ,String text2,String imageUrl) {
    return FlatButton(
      onPressed: () {  },
      child: Container(

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.black),
                        color: Colors.blueGrey.withOpacity(.3),





                      ),
                        height: 290,
                      width: 290,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(right: 0.0,top:12.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image(image: AssetImage(imageUrl),
                              width: 400,
                              height: 200,


                            ),
                          ),
                          Text(text1,
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                          Text(text2),
                        ],
                      ),
                    ),
    );
  }
// this method to draw the first row in the screen
  FlatButton BoxOfImages(  String text , String imagUrl ) {
    return FlatButton(
      onPressed: () {  },
      child: Container(
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black),
          color: Colors.blueGrey.withOpacity(.3),


        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(right: 0.0,top:12.0),
        child: Stack(
          alignment: Alignment.bottomLeft,

          children:<Widget> [
            Image(image: AssetImage(imagUrl),

fit:BoxFit.cover,
              height: 270.0,
              width: 290.0,
            ),
            Container(

              width: 200.0,
              color: Colors.blueGrey.withOpacity(.7),
              child: Text(text,
style:TextStyle(
  fontWeight: FontWeight.bold,
              ),
            ),

   ),],
        ),
      ),
    );
  }



}
