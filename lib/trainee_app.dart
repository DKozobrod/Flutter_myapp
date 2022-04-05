import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/data.dart';
import 'models/data_item_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: Color.fromARGB(255, 255, 255, 255)));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 247, 248),
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Введи имя, тег, почту...",
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 195, 195, 198),
                          fontSize: 15,
                          fontFamily: "Inter",
                        ),
                        icon: Icon(Icons.search,
                            color: Color.fromARGB(255, 195, 195, 198)),
                      ),
                      onChanged: (text) {
                        print("onChanged");
                        print("Введенный текст: $text + 1");
                      },
                      // onSubmitted: (text) {
                      //   print("onSubmitted");
                      //   print("Введенный текст: $text");
                      // },
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: <Widget>[
                        const VerticalDivider(color: Colors.white54),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu,
                              color: Color.fromARGB(255, 195, 195, 198)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            controller: controller,
            indicatorColor: Color.fromARGB(255, 101, 52, 255),
            labelColor: Color.fromARGB(255, 0, 0, 0),
            unselectedLabelColor: Color.fromARGB(255, 195, 195, 198),
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: "Inter",
            ),
            unselectedLabelStyle: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 15,
              fontFamily: "Inter",
            ),
            tabs: <Widget>[
              Center(
                child: Text('Все'),
              ),
              Center(
                child: Text('Designers'),
              ),
              Center(
                child: Text('Analysts'),
              ),
              Center(
                child: Text('Managers'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<DataItem> DataItems = [
    DataItem(
      id: 1,
      name: "Алексей",
      surname: "Миногаров",
      profession: "Analyst",
      telefon: "+7(906)5785465",
      letters: "mi",
      imgUrl: "assets/image/Avatar1.jpg",
      dataBD: "4 июня 1997",
    ),
    DataItem(
      id: 2,
      name: "Алиса",
      surname: "Иванова",
      profession: "Designer",
      telefon: "+7(908)1112233",
      letters: "al",
      imgUrl: "assets/image/Avatar2.jpg",
      dataBD: "6 июня 1998",
    ),
    DataItem(
      id: 3,
      name: "Андрей",
      surname: "Иванов",
      profession: "Designer",
      telefon: "+7(909)2223344",
      letters: "iv",
      imgUrl: "assets/image/Avatar3.jpg",
      dataBD: "3 июня 1993",
    ),
    DataItem(
      id: 4,
      name: "Анна",
      surname: "Иванова",
      profession: "Analyst Team Lead",
      telefon: "+7(905)3332211",
      letters: "an",
      imgUrl: "assets/image/Avatar4.jpg",
      dataBD: "20 июня 1992",
    ),
    DataItem(
      id: 5,
      name: "Анна",
      surname: "Смирнова",
      profession: "Analyst",
      telefon: "+7(909)0001188",
      letters: "sm",
      imgUrl: "assets/image/Avatar5.jpg",
      dataBD: "14 июня 1991",
    ),
    DataItem(
      id: 6,
      name: "Влада",
      surname: "Вейн",
      profession: "Manager",
      telefon: "+7(904)3332299",
      letters: " ",
      imgUrl: "assets/image/Avatar6.jpg",
      dataBD: "30 июня 1990",
    ),
    DataItem(
      id: 7,
      name: "Дана",
      surname: "Хаматора",
      profession: "Manager",
      telefon: "+7(907)8889933",
      letters: " ",
      imgUrl: "assets/image/Avatar7.jpg",
      dataBD: "7 июня 1989",
    ),
    DataItem(
      id: 8,
      name: "Иван",
      surname: "Андреенко",
      profession: "Analyst",
      telefon: "+7(903)6667755",
      letters: "va",
      imgUrl: "assets/image/Avatar8.jpg",
      dataBD: "2 июня 1990",
    ),
    DataItem(
      id: 9,
      name: "Инга",
      surname: "Антонова",
      profession: "Designer",
      telefon: "+7(903)6667755",
      letters: "ai",
      imgUrl: "assets/image/Avatar9.jpg",
      dataBD: "3 июня 1988",
    ),
    DataItem(
      id: 10,
      name: "Ирен",
      surname: "Адлер",
      profession: "Manager",
      telefon: "+7(903)6667755",
      letters: " ",
      imgUrl: "assets/image/Avatar10.jpg",
      dataBD: "9 июня 1987",
    ),
    DataItem(
      id: 11,
      name: "Ольга",
      surname: "Петрова",
      profession: "Analyst",
      telefon: "+7(903)6667755",
      letters: "po",
      imgUrl: "assets/image/Avatar11.jpg",
      dataBD: "6 июня 1986",
    ),
    DataItem(
      id: 12,
      name: "Ольга",
      surname: "Сергеевна",
      profession: "Designer",
      telefon: "+7(903)6667755",
      letters: "so",
      imgUrl: "assets/image/Avatar12.jpg",
      dataBD: "7 июня 1997",
    ),
    DataItem(
      id: 13,
      name: "Павел",
      surname: "Волков",
      profession: "Art-director",
      telefon: "+7(903)6667755",
      letters: "vp",
      imgUrl: "assets/image/Avatar13.jpg",
      dataBD: "17 июня 1980",
    ),
    DataItem(
      id: 14,
      name: "Петр",
      surname: "Сиша",
      profession: "Analyst",
      telefon: "+7(903)6667755",
      letters: "pe",
      imgUrl: "assets/image/Avatar14.jpg",
      dataBD: "1 июня 1981",
    ),
    DataItem(
      id: 15,
      name: "Саймон",
      surname: "Кит",
      profession: "Team Lead",
      telefon: "+7(903)6667755",
      letters: " ",
      imgUrl: "assets/image/Avatar15.jpg",
      dataBD: "15 июня 1985",
    ),
    DataItem(
      id: 16,
      name: "Светлана",
      surname: "Осипова",
      profession: "Analyst",
      telefon: "+7(903)6667755",
      letters: "os",
      imgUrl: "assets/image/Avatar16.jpg",
      dataBD: "12 июня 1986",
    ),
    DataItem(
      id: 17,
      name: "Стас",
      surname: "Петрич",
      profession: "Designer",
      telefon: "+7(903)6667755",
      letters: "ps",
      imgUrl: "assets/image/Avatar17.jpg",
      dataBD: "13 июня 1990",
    ),
    DataItem(
      id: 17,
      name: "Улан",
      surname: "Калелов",
      profession: "Manager",
      telefon: "+7(903)6667755",
      letters: " ",
      imgUrl: "assets/image/Avatar18.jpg",
      dataBD: "11 июня 1991",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: DataItems.map<Widget>((index) {
          return Material(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DataItemPage(
                          index.id,
                          index.name,
                          index.surname,
                          index.profession,
                          index.telefon,
                          index.letters,
                          index.imgUrl,
                          index.dataBD)),
                );
              },
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage(index.imgUrl),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${index.name} ${index.surname}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              index.letters,
                              style: const TextStyle(
                                fontSize: 15,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          index.profession,
                          style: const TextStyle(
                            fontSize: 13,
                            fontFamily: "Inter",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    ));
  }
}
