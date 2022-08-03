import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testflutter/abiut_us.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,    // Removing debug flag from top right screen
        title: "Dialog(s)",
        home: Scaffold(
          appBar: AppBar(
            title: Text("My Dialog Screen"),
            backgroundColor: Colors.blue,
          ),
          body: MyLayoutForDialog(),
        ));
  }
}

class MyLayoutForDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          showAlertDialog01(context);
        },
        child: Text("Show Dialog"),
      ),
    );
  }

  showAlertDialog01(BuildContext context) {
    final String text;
    Widget btnCancel = TextButton(
        onPressed: () {
          Navigator.of(context).pop(); // dismiss dialog
        },
        child: Text("Cancel"));

    Widget btnAboutUs = TextButton(
        onPressed: () {
          Navigator.of(context).pop(); // dismiss dialog
          customMessage(context, "Click on done button...");

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutUs()),   // Redirect one screen to another screen
          );
        },
        child: Text("About Us"));

    Widget btnDisable = TextButton(
        onPressed: null, // If you disable button click =>  onPressed: null
        child: Text("Disable"));

    AlertDialog alertDialog = AlertDialog(
      title: Text("My dialog title here..."), // Add Title here...
      content: Text("Message with details"), // Add Message here...
      // Describe button list here
      // Base on your button requirement you must create TextButton
      actions: [btnCancel, btnAboutUs, btnDisable],
    );

    showDialog(
        context: context,
        barrierDismissible: false,  // which makes dialogs dismissible or not on external click
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  customMessage(BuildContext context, var message){
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

}
