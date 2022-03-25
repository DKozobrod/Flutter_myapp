import 'package:flutter/material.dart';

import 'models/event.dart';

class FlutterTutorialApp extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: "Алексей",
        surname: "Миногаров",
        profession: "Analyst",
        telefon: "+79065785465",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Алиса",
        surname: "Иванова",
        profession: "Designer",
        telefon: "+79081112233",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Андрей",
        surname: "Иванов",
        profession: "Designer",
        telefon: "+79092223344",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Анна",
        surname: "Иванова",
        profession: "Analyst Team Lead",
        telefon: "+79053332211",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Анна",
        surname: "Смирнова",
        profession: "Analyst",
        telefon: "+79090001188",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Влада",
        surname: "Вейн",
        profession: "Manager",
        telefon: "+79043332299",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Дана",
        surname: "Хаматора",
        profession: "Manager",
        telefon: "+79078889933",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/234.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/123.jpg")),
    Event(
        name: "Иван",
        surname: "Андреенко",
        profession: "Analyst",
        telefon: "+79036667755",
        foto: Image.asset("assets/image/234.jpg")),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test task",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home page",
            style: TextStyle(
              fontSize: 45.0,
              fontFamily: "Inter",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(95, 1, 17, 255),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          // scrollDirection: Axis.vertical,
          itemCount: events.length,
          itemBuilder: (_, index) => Card(
            // color: Colors.yellow[300],
            // elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(vertical: 7),
            child: ListTile(
              title: Text(
                "${events[index].name} ${events[index].surname}",
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Inter",
                ),
              ),
              subtitle: Text(
                events[index].profession,
                style: const TextStyle(
                  fontSize: 13,
                  fontFamily: "Inter",
                ),
              ),
              leading: ClipOval(
                child: Image.asset('assets/image/123.jpg',
                    height: 50.0, width: 50.0, fit: BoxFit.fitWidth),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

              // leading: Image.asset('assets/image/123.jpg', height: 50.0, width: 50.0, fit: BoxFit.fitWidth)
              // Icon(
              //   Icons.local_activity,
              //   size: 40,
              //   color: Colors.black38,
              // ),

          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text(
          //     "${events[index].name} ${events[index].surname}",
          //     // events[index].surname,
          //     style: TextStyle(fontSize: 40),
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         Text(
          //           "${events[index].profession}",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //       ],
          //     )
          //   ],
          // ),