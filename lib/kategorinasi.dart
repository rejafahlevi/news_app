import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projectuas/about.dart';
import 'package:projectuas/detail.dart';
import 'package:http/http.dart' as http;
import 'package:projectuas/kategoriinter.dart';
import 'package:projectuas/kategorinasi.dart';
import 'package:projectuas/login.dart';
import 'package:projectuas/sidebar.dart';

class KategoriNasi extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

  static const routname = "/kategori";
}

class _HomeState extends State<KategoriNasi> {
  List _posts = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        //leading: Icon(Icons.menu),
        iconTheme: IconThemeData(color : Color.fromRGBO(254, 202, 61, 1)),
        //actionsIconTheme: Icon(Icons.autorenew),
        backgroundColor: Color.fromRGBO(2, 12, 83, 1),
        centerTitle: true,
        title:  Image.asset(
          "assets/images/logo.jpg",
          width: 100.0,
          height: 80.0,
        ),
  //     actions: <Widget>[
  //       IconButton(icon: new Icon(Icons.search, color: Colors.white)),
  // ],
      ),
       drawer: Drawer(
        backgroundColor : Color.fromRGBO(254, 202, 61, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.newspaper),
                title: const Text("Kategori Nasional"),
                onTap: (){
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) {
                  return KategoriNasi();
                }),
                  );
                }
              ),
              ListTile(
                leading: const Icon(Icons.newspaper),
                title: const Text("Kategori Internasional"),
                onTap: (){
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) {
                  return KategoriInter();
                }),
                  );
                }
                //onTap: () {Navigator.pop(context);},
              ),
              ListTile(
                leading: const Icon(Icons.perm_device_information_outlined),
                title: const Text("About"),
                onTap: (){
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) {
                  return About();
                }),
                  );
                }
                //onTap: () {Navigator.pop(context);},
                ),
              // ListTile(
              //   leading: const Icon(Icons.people),
              //   title: const Text("Profil"),
              //   onTap: () {Navigator.pop(context);},
              // ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
               onTap: (){
                  Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) {
                  return LoginPage();
                }),
                  );
                }
              ),
            ],
          ),
          ),
        ),
      body: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              color: Color.fromRGBO(254, 202, 61, 1),
              height: 100,
              width: 100,
              child: _posts[index]['urlToImage'] != null
                  ? Image.network(_posts[index]['urlToImage'])
                  : Center(),
            ),
            title: Text(
              '${_posts[index]['title']}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              '${_posts[index]['description']}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => Detail(
                            url: _posts[index]['url'],
                            title: _posts[index]['title'],
                            content: _posts[index]['content'],
                            publishedAt: _posts[index]['publishedAt'],
                            author: _posts[index]['author'],
                            urlToImage: _posts[index]['urlToImage'],
                          )));
            },
          );
        },
      ),
      backgroundColor: Color.fromRGBO(254, 202, 61, 1),
    );
  }

  Future _getData() async {
    try {
      final response = await http.get(
          'https://newsapi.org/v2/top-headlines?country=id&apiKey=fc916f0c82724e229f76e4bc87e02db3');
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _posts = data['articles'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
