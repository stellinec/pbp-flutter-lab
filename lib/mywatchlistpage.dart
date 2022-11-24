import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/databudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambahbudget.dart';
import 'package:counter_7/detailpage.dart';
import 'package:flutter/material.dart';
class MyWatchListPage extends StatefulWidget {
    const MyWatchListPage({Key? key}) : super(key: key);

    @override
    _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
    Future<List<MyWatchList>> fetchMyWatchList() async {
        var url = Uri.parse('https://tugas2pbpsc.herokuapp.com/mywatchlist/json/');
        print(url);
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );
        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));
        // melakukan konversi data json menjadi object ToDo
        List<MyWatchList> watchList = [];
        for (var d in data) {
        if (d != null) {
            watchList.add(MyWatchList.fromJson(d));
        }
        }

        return watchList;
    }
     @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('My Watch List'),
        ),
        drawer: Drawer(
                child: Column(
                    children: [
                    // Menambahkan clickable menu
                    ListTile(
                        title: const Text('counter_7'),
                        onTap: () {
                        // Route menu ke halaman utama
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyHomePage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Tambah Budget'),
                        onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const TambahBudgetPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Data Budget'),
                        onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const DataBudgetPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('My Watch List'),
                        onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                            );
                        },
                    ),
                    ],
                ),
            ),
            body: FutureBuilder(
                future: fetchMyWatchList(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                    } else {
                        if (!snapshot.hasData) {
                            return Column(
                            children: const [
                                Text(
                                "Tidak ada to do list :(",
                                style: TextStyle(
                                    color: Color(0xff59A5D8),
                                    fontSize: 20),
                                ),
                                SizedBox(height: 8),
                            ],
                            );
                        } else {
                            return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (_, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, blurRadius: 2.0)
                                ]),
                            child: ListTile(
                                title: Text(
                                  "${snapshot.data![index].fields.title}",
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>DetailPage(snapshot.data![index])
                                    ),
                                  );
                                }
                            ),
                        )
                    );
                }
              }
            }
        )
    );
  }
}
