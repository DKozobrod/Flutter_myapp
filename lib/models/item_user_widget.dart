import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import '../trainee_app.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({Key? key, required this.user}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 50.0,
          ),
          Stack(children: [
            const SizedBox(
              height: 1.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ]),
          Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(user.imgUrl),
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "${user.name} ${user.surname}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    user.letters,
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    user.profession,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: "Inter",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.star_border),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          user.dataBD,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "$num лет",
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 195, 195, 198),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.phone_outlined),
            ),
            title: Text(user.telefon,
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold)),
            onTap: () {
              final act = CupertinoActionSheet(
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      // onPressed: () {
                      // launchURL("tel://+7906417827");
                      // },
                      onPressed: () async {
                        FlutterPhoneDirectCaller.callNumber(user.telefon);
                      },
                      child: Text(
                        user.telefon,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Отмена',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      )));
              showCupertinoModalPopup(
                  context: context, builder: (BuildContext context) => act);
            },
          ),
        ],
      ),
    );
  }
}

int a = 2022;
int b = 1996;
int num = a - b;

// var d = "4 июня 1996";
// var numd = int.parse(d);
// print('число: $numd');
