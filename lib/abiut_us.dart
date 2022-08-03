import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   // Removing debug flag from top right screen
      home: Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  onBackScreen(context);
                },
                child: Text("Back"))
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Title 1",
                        style: TextStyle(
                            color: Colors.white,
                            // backgroundColor: Colors.green,  //this color set around the text ONLY
                            fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Title 2",
                        style: TextStyle(
                            color: Colors.white,
                            // backgroundColor: Colors.black,
                            fontSize: 25)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Title 3",
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        // color: Colors.black,
                        width: 8,
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Title 4",
                        style: TextStyle(
                            color: Colors.white,
                            // backgroundColor: Colors.black,
                            fontSize: 25)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Title 5",
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                        color: const Color(0xff1049a2),
                        // color set when image not load
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          color: Colors.blue,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Title 6 Click Me",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              // backgroundColor: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    onTap: () {
                      customMessage(context, "Title 6");
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Move to back screen from current screen
void onBackScreen(BuildContext context) {
  Navigator.pop(context);
}

customMessage(BuildContext context, var message) {
  // Flutter Custom Toast Message Show to use fluttertoast: ^8.0.9 gradle
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);

  // Snackbar Toast Message Show
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}
