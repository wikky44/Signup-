
import 'package:flutter/material.dart';
import 'package:signup/signup%20reg.dart';

import 'main.dart';

class pageone extends StatefulWidget {
  @override
  _PageoneState createState() => _PageoneState();
}

class _PageoneState extends State<pageone> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child:ListView(
              children: [
                Column(
                  children: [
                    Image.asset("images/taxi.jpg",width: 300,height: 300,),
                      Text ("Hi,Welcome", style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.blue.shade700),textAlign: TextAlign.left,), Padding(padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text("A carpool is simple.It's arranagement between two or more people to make a regular journey in a single car.",
                        ),
                    )]
                ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top:150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistrationForm()),
                      );
                    },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    minimumSize: Size(20.0, 20.0),
                  ),
                  child: Text('Skip',selectionColor: Colors.white,),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(3, (int index) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index
                            ? Colors.blue
                            : Colors.grey.withOpacity(0.5),
                      ),
                    );
                  }),
                ),
                ElevatedButton(
                  onPressed: () {
                    ( Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationForm())));},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(20.0, 20.0),
                  ),
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
          )
        ]
      )
    );
  }
}
