import 'package:flutter/material.dart';

class ProfileSettingScreen extends StatelessWidget {
  final String userName = "Shasank Periwal";
  final String userEmail = "shasankperiwal@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
              image: DecorationImage(
                image: AssetImage('images/news.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                userName,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              IconButton(
                visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.edit,
                  size: 18.0,
                  color: Colors.white,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext context) => SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).viewInsets.bottom + 200,
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        // child: ChangeName(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          Text(
            userEmail,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
            style: ButtonStyle(visualDensity: VisualDensity(vertical: -4)),
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ChangePassword()));
            },
            child: Text(
              'Change Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10.0))),
            ),
            child: Container(
              width: 140,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                "Sign Out",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
