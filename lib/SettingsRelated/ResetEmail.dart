import 'package:flutter/material.dart';

class ResetEmail extends StatefulWidget {
  @override
  _ResetEmailState createState() => _ResetEmailState();
}

class _ResetEmailState extends State<ResetEmail> {
  var kTextFieldStyle = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white60),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white60),
    ),
  );
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late String newTask;
    return Container(
      height: MediaQuery.of(context).viewInsets.bottom + 210,
      padding: EdgeInsets.only(top: 30, right: 30, left: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Enter your Email ID',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              letterSpacing: 2,
            ),
          ),
          TextField(
            controller: _controller,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.white),
            decoration: kTextFieldStyle.copyWith(
              hintText: "example@email.com",
              hintStyle: TextStyle(color: Theme.of(context).highlightColor),
            ),
            cursorColor: Colors.white60,
            onChanged: (String value) {
              newTask = value;
            },
            onSubmitted: (value) {
              if (!(value?.trim()?.isEmpty ?? true)) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.grey[850],
                    content: Text(
                      "Mail Sent \nCheck your inbox!",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    duration: Duration(seconds: 1),
                  ),
                );
              }
            },
            autofocus: true,
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              if (!(newTask?.trim()?.isEmpty ?? true)) {
                Navigator.pop(context);
              } else if (_controller.text.isNotEmpty) {
                Navigator.pop(context);
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.grey[850],
                  content: Text(
                    "Mail Sent \nCheck your inbox!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  duration: Duration(seconds: 1),
                ),
              );

              Navigator.pop(context);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => (NewPassword())));
            },
            child: Text(
              'Confirm',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
