import 'package:flutter/material.dart';
import 'package:counter_7/mywatchlistpage.dart';
import 'package:counter_7/databudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambahbudget.dart';
import 'package:counter_7/model/mywatchlist.dart';
class DetailPage extends StatelessWidget{
    final MyWatchList mywatchlist;
    DetailPage(this.mywatchlist);
    check(){
        if (mywatchlist.fields.watched.toString()== "Watched.WAITING"){
            return  Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                            ),
                            children: <TextSpan>[
                                TextSpan(
                                text: "Status: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: "waiting" + "\n"),
                            ],
                            ),
                        ),
                    );
        }else {
            return  Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16,
                            ),
                            children: <TextSpan>[
                                TextSpan(
                                text: "Status: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: "watched" + "\n"),
                            ],
                            ),
                        ),
                    );
        }
    }
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text("Detail"),
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
            body: Padding(
                 padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        Text(
                            "\n" + mywatchlist.fields.title +"\n",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16,
                                ),
                                children: <TextSpan>[
                                    TextSpan(
                                    text: "Release Date: ",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: mywatchlist.fields.releaseDate + "\n"),
                                ],
                                ),
                            ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                            text: TextSpan(
                                style: const TextStyle(
                                fontSize: 16,
                                ),
                                children: <TextSpan>[
                                TextSpan(
                                    text: "Rating: ",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: mywatchlist.fields.rating + "\n"),
                                ],
                                ),
                            ),
                        ),
                        check(),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 16,
                                ),
                                children: <TextSpan>[
                                    TextSpan(
                                    text: "Review: \n",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: mywatchlist.fields.review + "\n"),
                                ],
                                ),
                            ),
                        ),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton.extended(
                label: const Text('Back'),
                onPressed: () {
                    Navigator.pop(context);
                }),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            
        );
    }
}
