
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {

  bool found = false;
  final formKey = GlobalKey<FormState>();

  bool isLoading = false;
  QuerySnapshot userInfoSnapshot;

  up() async{
    if (formKey.currentState.validate()) {

      setState(() {
        isLoading = true;
      });

      try {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        FirebaseFirestore.instance.collection('time').doc('time').update({'flag': 1});








      } catch (e) {
        print(e);
        setState(() {
          isLoading = false;
        });
      }

//
    }
  }



  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[

    SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Card(



              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Plant-2  Name - yyy'),

                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Image(image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPBRX9xJGLhlbJ8Gz5_aJjr8E0CnWydjxZrQ&usqp=CAU"),)
                  )
                  ,
                  ButtonTheme
                      .bar( // make buttons use the appropriate styles for cards
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Temperature : 34°C',
                            style: TextStyle(color: Colors.green),),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        FlatButton(
                          child: const Text('Humidity : 71%',
                            style: TextStyle(color: Colors.green),),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                        FlatButton(
                          child: const Text('Soil Moisture: True',
                            style: TextStyle(color: Colors.green),),
                          onPressed: () {
                            /* ... */
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),

    Column(children: [
      Card(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Feed Plant-1 xxx'),
            ),
            ButtonTheme
                .bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('8:30am - 9:40am',
                      style: TextStyle(color: Colors.green),),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  FlatButton(
                    child: const Text('6:30pm - 7:40pm',
                      style: TextStyle(color: Colors.green),),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  FlatButton(
                    child: const Text('          '),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      Card(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Feed Plant-2 yyy'),
            ),
            ButtonTheme
                .bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('8:30am - 9:40am',
                      style: TextStyle(color: Colors.green),),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  FlatButton(
                    child: const Text('6:30pm - 7:40pm',
                      style: TextStyle(color: Colors.green),),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  FlatButton(
                    child: const Text('          '),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20.0,),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
       child:Card(
          child: new InkWell(
            onTap: () {
              FirebaseFirestore.instance.collection('time').doc('time').update({'flag': 1});
            },
            child: Container(
              width: 100.0,
              height: 80.0,
              child:Center(
                child: Text(
                  "Now"
                  , style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400
                ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],),
    Column(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/photos/tree-growth-three-steps-in-nature-and-beautiful-morning-lighting-picture-id956366756?k=6&m=956366756&s=612x612&w=0&h=sqi3kTfxi02Y-6xyyGmOjp9LI5ES_gipovhXenzaPPo="
                ),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          width: double.infinity,
          height: 200,
          child: Container(
            alignment: Alignment(0.0, 2.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://st.focusedcollection.com/14026668/i/650/focused_172055922-stock-photo-man-planting-flowers.jpg"
              ),
              radius: 60.0,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 90,
      ),
      Text(
        "Karthikeyan"
        , style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          letterSpacing: 2.0,
          fontWeight: FontWeight.w400
      ),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "9962723050"
        , style: TextStyle(
          fontSize: 18.0,
          color: Colors.black87,
          letterSpacing: 2.0,
          fontWeight: FontWeight.w300
      ),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "ktv0303@gmail.com"
        , style: TextStyle(
          fontSize: 15.0,
          color: Colors.black87,
          letterSpacing: 2.0,
          fontWeight: FontWeight.w300
      ),
      ),
      SizedBox(
        height: 20,
      ),
      Card(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          elevation: 2.0,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Text("Details", style: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300
              ),))
      ),
      SizedBox(
        height: 10,
      ),
      Card(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text("Plants",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600
                      ),),
                    SizedBox(
                      height: 7,
                    ),
                    Text("2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300
                      ),)
                  ],
                ),
              ),
              Expanded(
                child:
                Column(
                  children: [
                    Text("Duration",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600
                      ),),
                    SizedBox(
                      height: 7,
                    ),
                    Text("65 Days",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300
                      ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('IOT'),
          backgroundColor: Colors.green
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.lightGreen
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notification'),
                backgroundColor: Colors.lightGreenAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.green,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}