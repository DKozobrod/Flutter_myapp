// import 'package:flutter/material.dart';
// import 'package:myapp/models/data_item_page.dart';
// import 'package:myapp/models/trainee_app.dart';

// class DataListWidget extends StatelessWidget {
//   const DataListWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ListView.builder(
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             itemCount: _filteredData.length,
//             itemExtent: 163,
//             itemBuilder: (BuildContext context, int index) {
//               final finalData = _filteredData[index];
//               return Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 child: Stack(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           flex: 1,
//                           child: CircleAvatar(
//                             radius: 40.0,
//                             backgroundImage: AssetImage(DataItems[index].imgUrl),
//                           ),),
//                         // const SizedBox(width: 15),
//                         Expanded(
//                           flex: 4,
//                           child: ListTile(
//                             title: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   "${DataItems[index].name} ${DataItems[index].surname}",
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontFamily: "Inter",
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 5.0,
//                                 ),
//                                 Text(
//                                   DataItems[index].letters,
//                                   style: const TextStyle(
//                                     fontSize: 15,
//                                     fontFamily: "Inter",
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             subtitle: Text(
//                               DataItems[index].profession,
//                               style: const TextStyle(
//                                 fontSize: 13,
//                                 fontFamily: "Inter",
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     //),
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => DataItemPage(
//                                     DataItems[index].id,
//                                     DataItems[index].name,
//                                     DataItems[index].surname,
//                                     DataItems[index].profession,
//                                     DataItems[index].telefon,
//                                     DataItems[index].letters,
//                                     DataItems[index].imgUrl,
//                                     DataItems[index].dataBD)),
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }),
//       ],
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.blue,
//         ),
//         bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//           backgroundColor: Colors.blue,
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.grey,
//         ),
//       ),
//       // routes: {
//       //   '/auth': (context) => AuthWidget(),
//       //   '/main_screen': (context) => MainScreenWidget(),
//       // },
//       home: const MainPage(),
//       // initialRoute: '/auth',
//     );
//   }
// }

// class DataItem {
//   int id;
//   String name;
//   String surname;
//   String profession;
//   String telefon;
//   String letters;
//   String imgUrl;
//   String dataBD;

//   DataItem(
//       {required this.id,
//       required this.name,
//       required this.surname,
//       required this.profession,
//       required this.telefon,
//       required this.letters,
//       required this.imgUrl,
//       required this.dataBD});

//   // contains(String value) {}

//   // toLowerCase() {}
// }

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
// final _dataItems = [
//   DataItem(
//     id: 1,
//     name: "Алексей",
//     surname: "Миногаров",
//     profession: "Analyst",
//     telefon: "+7(906)5785465",
//     letters: "mi",
//     imgUrl: "assets/image/Avatar1.jpg",
//     dataBD: "4 июня 1997",
//   ),
//   DataItem(
//     id: 2,
//     name: "Алиса",
//     surname: "Иванова",
//     profession: "Designer",
//     telefon: "+7(908)1112233",
//     letters: "al",
//     imgUrl: "assets/image/Avatar2.jpg",
//     dataBD: "6 июня 1998",
//   ),
//   DataItem(
//     id: 3,
//     name: "Андрей",
//     surname: "Иванов",
//     profession: "Designer",
//     telefon: "+7(909)2223344",
//     letters: "iv",
//     imgUrl: "assets/image/Avatar3.jpg",
//     dataBD: "3 июня 1993",
//   ),
//   DataItem(
//     id: 4,
//     name: "Анна",
//     surname: "Иванова",
//     profession: "Analyst Team Lead",
//     telefon: "+7(905)3332211",
//     letters: "an",
//     imgUrl: "assets/image/Avatar4.jpg",
//     dataBD: "20 июня 1992",
//   ),
//   DataItem(
//     id: 5,
//     name: "Анна",
//     surname: "Смирнова",
//     profession: "Analyst",
//     telefon: "+7(909)0001188",
//     letters: "sm",
//     imgUrl: "assets/image/Avatar5.jpg",
//     dataBD: "14 июня 1991",
//   ),
//   DataItem(
//     id: 6,
//     name: "Влада",
//     surname: "Вейн",
//     profession: "Manager",
//     telefon: "+7(904)3332299",
//     letters: " ",
//     imgUrl: "assets/image/Avatar6.jpg",
//     dataBD: "30 июня 1990",
//   ),
//   DataItem(
//     id: 7,
//     name: "Дана",
//     surname: "Хаматора",
//     profession: "Manager",
//     telefon: "+7(907)8889933",
//     letters: " ",
//     imgUrl: "assets/image/Avatar7.jpg",
//     dataBD: "7 июня 1989",
//   ),
//   DataItem(
//     id: 8,
//     name: "Иван",
//     surname: "Андреенко",
//     profession: "Analyst",
//     telefon: "+7(903)6667755",
//     letters: "va",
//     imgUrl: "assets/image/Avatar8.jpg",
//     dataBD: "2 июня 1990",
//   ),
//   DataItem(
//     id: 9,
//     name: "Инга",
//     surname: "Антонова",
//     profession: "Designer",
//     telefon: "+7(903)6667755",
//     letters: "ai",
//     imgUrl: "assets/image/Avatar9.jpg",
//     dataBD: "3 июня 1988",
//   ),
//   DataItem(
//     id: 10,
//     name: "Ирен",
//     surname: "Адлер",
//     profession: "Manager",
//     telefon: "+7(903)6667755",
//     letters: " ",
//     imgUrl: "assets/image/Avatar10.jpg",
//     dataBD: "9 июня 1987",
//   ),
//   DataItem(
//     id: 11,
//     name: "Ольга",
//     surname: "Петрова",
//     profession: "Analyst",
//     telefon: "+7(903)6667755",
//     letters: "po",
//     imgUrl: "assets/image/Avatar11.jpg",
//     dataBD: "6 июня 1986",
//   ),
//   DataItem(
//     id: 12,
//     name: "Ольга",
//     surname: "Сергеевна",
//     profession: "Designer",
//     telefon: "+7(903)6667755",
//     letters: "so",
//     imgUrl: "assets/image/Avatar12.jpg",
//     dataBD: "7 июня 1997",
//   ),
//   DataItem(
//     id: 13,
//     name: "Павел",
//     surname: "Волков",
//     profession: "Art-director",
//     telefon: "+7(903)6667755",
//     letters: "vp",
//     imgUrl: "assets/image/Avatar13.jpg",
//     dataBD: "17 июня 1980",
//   ),
//   DataItem(
//     id: 14,
//     name: "Петр",
//     surname: "Сиша",
//     profession: "Analyst",
//     telefon: "+7(903)6667755",
//     letters: "pe",
//     imgUrl: "assets/image/Avatar14.jpg",
//     dataBD: "1 июня 1981",
//   ),
//   DataItem(
//     id: 15,
//     name: "Саймон",
//     surname: "Кит",
//     profession: "Team Lead",
//     telefon: "+7(903)6667755",
//     letters: " ",
//     imgUrl: "assets/image/Avatar15.jpg",
//     dataBD: "15 июня 1985",
//   ),
//   DataItem(
//     id: 16,
//     name: "Светлана",
//     surname: "Осипова",
//     profession: "Analyst",
//     telefon: "+7(903)6667755",
//     letters: "os",
//     imgUrl: "assets/image/Avatar16.jpg",
//     dataBD: "12 июня 1986",
//   ),
//   DataItem(
//     id: 17,
//     name: "Стас",
//     surname: "Петрич",
//     profession: "Designer",
//     telefon: "+7(903)6667755",
//     letters: "ps",
//     imgUrl: "assets/image/Avatar17.jpg",
//     dataBD: "13 июня 1990",
//   ),
//   DataItem(
//     id: 17,
//     name: "Улан",
//     surname: "Калелов",
//     profession: "Manager",
//     telefon: "+7(903)6667755",
//     letters: " ",
//     imgUrl: "assets/image/Avatar18.jpg",
//     dataBD: "11 июня 1991",
//   ),
// ];


// var _filteredData = <DataItem>[];

// final _searchController = TextEditingController();

// void _searchData() {
//   final query = _searchController.text;
//   if (query.isNotEmpty) {
//     _filteredData = _dataItems.where((DataItem datafinal) {
//       return datafinal.name.toLowerCase().contains(query.toLowerCase());
//     }).toList();
//   } else {
//     _filteredData = _dataItems;
//   }
//   setState(() {});
// }

// @override
//   void initState() {
//     super.initState();

//     _filteredData = _dataItems;
//     _searchController.addListener(_searchData);
//   }

// @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         ListView.builder(
//           padding: const EdgeInsets.only(top: 70),
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             itemCount: _filteredData.length,
//             itemExtent: 36,
//             itemBuilder: (BuildContext context, int index) {
//               final datafinal = _filteredData[index];
//               return Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

//                 child: Stack(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(color: Colors.black.withOpacity(0.2)),
//                       borderRadius: const BorderRadius.all(Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 8,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     clipBehavior: Clip.hardEdge,
//                     child: Row(
//                       children: [
//                         Image(image: AssetImage(_dataItems[index].imgUrl)),
//                         const SizedBox(width: 15),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const SizedBox(height: 20),
//                               Text(
//                                 "${_dataItems[index].name} ${_dataItems[index].surname}",
//                                 style: const TextStyle(fontWeight: FontWeight.bold),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               const SizedBox(height: 5),
//                               Text(
//                                 _dataItems[index].letters,
//                                 style: const TextStyle(color: Colors.grey),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               const SizedBox(height: 20),
//                               Text(
//                                 _dataItems[index].profession,
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                       ],
//                     ),
//                   ),
                
//                     // Row(
//                     //   children: [
//                     //     Expanded(
//                     //       flex: 1,
//                     //       child: CircleAvatar(
//                     //         radius: 40.0,
//                     //         backgroundImage:
//                     //             AssetImage(_dataItems[index].imgUrl),
//                     //       ),
//                     //     ),
//                     //     // const SizedBox(width: 15),
//                     //     Expanded(
//                     //       flex: 4,
//                     //       child: ListTile(
//                     //         title: Row(
//                     //           mainAxisAlignment: MainAxisAlignment.start,
//                     //           children: <Widget>[
//                     //             Text(
//                     //               "${_dataItems[index].name} ${_dataItems[index].surname}",
//                     //               style: const TextStyle(
//                     //                 fontSize: 16,
//                     //                 fontFamily: "Inter",
//                     //                 fontWeight: FontWeight.bold,
//                     //               ),
//                     //             ),
//                     //             const SizedBox(
//                     //               width: 5.0,
//                     //             ),
//                     //             Text(
//                     //               _dataItems[index].letters,
//                     //               style: const TextStyle(
//                     //                 fontSize: 15,
//                     //                 fontFamily: "Inter",
//                     //                 fontWeight: FontWeight.normal,
//                     //               ),
//                     //             ),
//                     //           ],
//                     //         ),
//                     //         subtitle: Text(
//                     //           _dataItems[index].profession,
//                     //           style: const TextStyle(
//                     //             fontSize: 13,
//                     //             fontFamily: "Inter",
//                     //           ),
//                     //         ),
//                     //       ),
//                     //     ),
//                     //   ],
//                     // ),
//                     //),
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => DataItemPage(
//                                     _dataItems[index].id,
//                                     _dataItems[index].name,
//                                     _dataItems[index].surname,
//                                     _dataItems[index].profession,
//                                     _dataItems[index].telefon,
//                                     _dataItems[index].letters,
//                                     _dataItems[index].imgUrl,
//                                     _dataItems[index].dataBD)),
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 controller: _searchController,
//                 decoration: const InputDecoration(
//                   labelText: "Поиск",
//                   filled: true,
//                   fillColor: Colors.white10,
//                   border: OutlineInputBorder()
//                 ),
//               ),
//             )
//       ],
//     );
//   }
// }