# testflutter

The basic consept of this project to learn flutter with UI and components.

<b>Project must contsins : </b>
- SplashScreen Setup
- AlertDialog 
- Navigate to one activity to next activity
- Snachbar toast message
- Fluttertoast message with customization
- NetworkImage to load image from internet or any URL
- UI alingn with ROW and COLUMN

<b>For SplashScreen</b>
- From the project open android -> app -> src -> main -> res -> drawable folder
- Now add your splashscreen image here.
- now open style.xml from value folder and add your image name here:
  - <item name="android:windowBackground">@drawable/splashscreen</item>

<b>For AlertDialog : </b>

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
<!--           customMessage(context, "Click on done button...");

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutUs()),   // Redirect one screen to another screen
          ); -->
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

<b>onCLick to nevigate screen</b>

Here, AboutUs() is your next screen class name

  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutUs()),   // Redirect one screen to another screen
          );

<b>Snachbar toast message</b>

Use customMessage method when you : onTap , onPress , onCLick on any button or view
<b>Like this :</b> customMessage(context, "Click on done button...");

 customMessage(BuildContext context, var message){
    // Snackbar Toast Message Show
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
          
<b>Fluttertoast message</b>

Use customMessage method when you : onTap , onPress , onCLick on any button or view
<b>Like this :</b> customMessage(context, "Click on done button...");
<b>Gradle use : </b> fluttertoast: ^8.0.9 gradle

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
  }
  
<b>NetworkImage</b>

When load image from any network or by URL you have to use NetworkImage widget.
image: const DecorationImage(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                        fit: BoxFit.cover,
                      )
          
          

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
