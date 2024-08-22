import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC Flutter"),
              backgroundColor: Colors.green,
            ),
            body: Builder(builder:(context)=> Center(
                child: Column(children: [
              Text(
                'Hello Flutter',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              Text(
                'Discover the flutter',
                style: TextStyle(fontSize: 20, color: Colors.redAccent),
              ),
                  Image.network('https://www.shutterstock.com/image-vector/computer-cat-animal-meme-pixel-260nw-2415076223.jpg',
                  height: 350,
                  ),
                ElevatedButton(
                    child: Text('Contact Us'),
                    onPressed: () => contactUs(context), // onpressed changed to call the contactUs context
                ),
            ]
                )))));
  }
}


void contactUs (BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext) {
       return AlertDialog(
           title: Text('Contact Us'),
           content: Text('mail us at totoy@gmail.com'),
           actions: <Widget>[
            TextButton (
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),

            ) //Textbutton
          ], //actions
      ); //return
   } //builder
  ); //showdialog
} //void contactus
