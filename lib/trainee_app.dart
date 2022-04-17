import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/models/item_user_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 1,
        ),
      ),
      home: MainScreenWidget(),
    );
  }
}

class User {
  int id;
  String name;
  String surname;
  String profession;
  String telefon;
  String letters;
  String imgUrl;
  String dataBD;

  User(
      {required this.id,
      required this.name,
      required this.surname,
      required this.profession,
      required this.telefon,
      required this.letters,
      required this.imgUrl,
      required this.dataBD});
}

final _users = [
  User(
    id: 1,
    name: "Алексей",
    surname: "Миногаров",
    profession: "Analyst",
    telefon: "+7(906)5785465",
    letters: "mi",
    imgUrl: "assets/image/Avatar1.jpg",
    dataBD: "4 июня 1997",
  ),
  User(
    id: 2,
    name: "Алиса",
    surname: "Иванова",
    profession: "Designer",
    telefon: "+7(908)1112233",
    letters: "al",
    imgUrl: "assets/image/Avatar2.jpg",
    dataBD: "6 июня 1998",
  ),
  User(
    id: 3,
    name: "Андрей",
    surname: "Иванов",
    profession: "Designer",
    telefon: "+7(909)2223344",
    letters: "iv",
    imgUrl: "assets/image/Avatar3.jpg",
    dataBD: "3 июня 1993",
  ),
  User(
    id: 4,
    name: "Анна",
    surname: "Иванова",
    profession: "Analyst Team Lead",
    telefon: "+7(905)3332211",
    letters: "an",
    imgUrl: "assets/image/Avatar4.jpg",
    dataBD: "20 июня 1992",
  ),
  User(
    id: 5,
    name: "Анна",
    surname: "Смирнова",
    profession: "Analyst",
    telefon: "+7(909)0001188",
    letters: "sm",
    imgUrl: "assets/image/Avatar5.jpg",
    dataBD: "14 июня 1991",
  ),
  User(
    id: 6,
    name: "Влада",
    surname: "Вейн",
    profession: "Manager",
    telefon: "+7(904)3332299",
    letters: " ",
    imgUrl: "assets/image/Avatar6.jpg",
    dataBD: "30 июня 1990",
  ),
  User(
    id: 7,
    name: "Дана",
    surname: "Хаматора",
    profession: "Manager",
    telefon: "+7(907)8889933",
    letters: " ",
    imgUrl: "assets/image/Avatar7.jpg",
    dataBD: "7 июня 1989",
  ),
  User(
    id: 8,
    name: "Иван",
    surname: "Андреенко",
    profession: "Analyst",
    telefon: "+7(903)6667755",
    letters: "va",
    imgUrl: "assets/image/Avatar8.jpg",
    dataBD: "2 июня 1990",
  ),
  User(
    id: 9,
    name: "Инга",
    surname: "Антонова",
    profession: "Designer",
    telefon: "+7(903)6667755",
    letters: "ai",
    imgUrl: "assets/image/Avatar9.jpg",
    dataBD: "3 июня 1988",
  ),
  User(
    id: 10,
    name: "Ирен",
    surname: "Адлер",
    profession: "Manager",
    telefon: "+7(903)6667755",
    letters: " ",
    imgUrl: "assets/image/Avatar10.jpg",
    dataBD: "9 июня 1987",
  ),
  User(
    id: 11,
    name: "Ольга",
    surname: "Петрова",
    profession: "Analyst",
    telefon: "+7(903)6667755",
    letters: "po",
    imgUrl: "assets/image/Avatar11.jpg",
    dataBD: "6 июня 1986",
  ),
  User(
    id: 12,
    name: "Ольга",
    surname: "Сергеевна",
    profession: "Designer",
    telefon: "+7(903)6667755",
    letters: "so",
    imgUrl: "assets/image/Avatar12.jpg",
    dataBD: "7 июня 1997",
  ),
  User(
    id: 13,
    name: "Павел",
    surname: "Волков",
    profession: "Art-director",
    telefon: "+7(903)6667755",
    letters: "vp",
    imgUrl: "assets/image/Avatar13.jpg",
    dataBD: "17 июня 1980",
  ),
  User(
    id: 14,
    name: "Петр",
    surname: "Сиша",
    profession: "Analyst",
    telefon: "+7(903)6667755",
    letters: "pe",
    imgUrl: "assets/image/Avatar14.jpg",
    dataBD: "1 июня 1981",
  ),
  User(
    id: 15,
    name: "Саймон",
    surname: "Кит",
    profession: "Team Lead",
    telefon: "+7(903)6667755",
    letters: " ",
    imgUrl: "assets/image/Avatar15.jpg",
    dataBD: "15 июня 1985",
  ),
  User(
    id: 16,
    name: "Светлана",
    surname: "Осипова",
    profession: "Analyst",
    telefon: "+7(903)6667755",
    letters: "os",
    imgUrl: "assets/image/Avatar16.jpg",
    dataBD: "12 июня 1986",
  ),
  User(
    id: 17,
    name: "Стас",
    surname: "Петрич",
    profession: "Designer",
    telefon: "+7(903)6667755",
    letters: "ps",
    imgUrl: "assets/image/Avatar17.jpg",
    dataBD: "13 июня 1990",
  ),
  User(
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

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  var _filteredUsers = <User>[];

  final _searchController = TextEditingController();

  void _searchUsers() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredUsers = _users.where((User user) {
        return user.name.toLowerCase().contains(query.toLowerCase()) ||
            user.surname.toLowerCase().contains(query.toLowerCase()) ||
            user.profession.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredUsers = _users;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _filteredUsers = _users;
    _searchController.addListener(_searchUsers);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: const Color.fromARGB(255, 255, 255, 255)));
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: const Color.fromARGB(255, 247, 247, 247)),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Введи имя, тег, почту...",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 195, 195, 198),
                    fontSize: 15,
                    fontFamily: "Inter",
                  ),
                  icon: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(Icons.search,
                        color: Color.fromARGB(255, 195, 195, 198)),
                  ),
                ),
              ),
            ),
          ),
          bottom: const TabBar(
            indicatorWeight: 2,
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
            tabs: [
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
              Center(
                child: Text('Tech Leaders'),
              ),
              Center(
                child: Text('Art-directors'),
              ),
            ],
            isScrollable: true,
            labelPadding: EdgeInsets.all(12),
            padding: EdgeInsets.only(left: 20),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            allUsers(),
            allUsers(),
            allUsers(),
            allUsers(),
            allUsers(),
            allUsers(),
          ],
        ),
      ),
    );
  }

  Widget allUsers() {
    return Stack(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(left: 20, right: 20),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredUsers.length,
          itemExtent: 95,
          itemBuilder: (BuildContext context, int index) {
            final user = _filteredUsers[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage(user.imgUrl),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${user.name} ${user.surname}",
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
                                  user.letters,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              user.profession,
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
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserPage(user: user)),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
// var usersProfession = <User>[];
//   Widget profItem() {
//   return Stack(
//     children: [
    

//         usersProfession = _users.where((User user) {
//           return user.profession.toLowerCase().contains("Designer".toLowerCase());
//         }).toList();
    
//     usersProfession.forEach((user) => print(' ${user.surname}'));
//       ],
//   );
//   }

