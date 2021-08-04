import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kTextFieldStyle = InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white60),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white60),
      ),
    );
    TextEditingController _currentcontroller = TextEditingController();
    TextEditingController _newcontroller = TextEditingController();
    TextEditingController _renewcontroller = TextEditingController();
    String currentpassword;
    String newpassword;
    String renewpassword;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SET NEW PASSWORD",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            PasswordTitle("Enter the code sent here"),
            TextField(
              obscureText: true,
              controller: _currentcontroller,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.white),
              decoration: kTextFieldStyle,
              cursorColor: Colors.white60,
              onChanged: (String value) {
                currentpassword = value;
              },
              // onSubmitted: (value) {
              //   if (!(value?.trim()?.isEmpty ?? true)) {}
              // },
            ),
            SizedBox(
              height: 20,
            ),
            PasswordTitle("New Password"),
            TextField(
              obscureText: true,
              controller: _newcontroller,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.white),
              decoration: kTextFieldStyle,
              cursorColor: Colors.white60,
              onChanged: (String value) {
                currentpassword = value;
              },
              // onSubmitted: (value) {
              //   if (!(value?.trim()?.isEmpty ?? true)) {}
              // },
            ),
            SizedBox(
              height: 20,
            ),
            PasswordTitle("Confirm New Password"),
            TextField(
              obscureText: true,
              controller: _renewcontroller,
              textCapitalization: TextCapitalization.sentences,
              style: TextStyle(color: Colors.white),
              decoration: kTextFieldStyle,
              cursorColor: Colors.white60,
              onChanged: (String value) {
                currentpassword = value;
              },
              // onSubmitted: (value) {
              //   if (!(value?.trim()?.isEmpty ?? true)) {}
              // },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.grey[850],
                    content: Text(
                      "Changes Saved!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(10.0))),
              ),
              child: Container(
                width: 90,
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  "Confirm",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordTitle extends StatelessWidget {
  final String title;
  PasswordTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white38,
        fontSize: 14.0,
        letterSpacing: 2,
      ),
    );
  }
}
