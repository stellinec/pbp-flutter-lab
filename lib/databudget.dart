import 'package:flutter/material.dart';
import 'package:counter_7/tambahbudget.dart';
import 'package:counter_7/main.dart';
class DataBudgetPage extends StatefulWidget {
    static List<DataBudgetPage> budgets = [];
    final String? judulBudget;
    final int? budget;
    final String? tipeBudget;
    const DataBudgetPage({this.judulBudget, this.budget, this.tipeBudget});
    static void addBudget({required judulBudget,required tipeBudget,required budget,}) {
        budgets.add( DataBudgetPage(judulBudget: judulBudget, budget: budget, tipeBudget: tipeBudget,));
    }
// const DataBudgetPage({super.key});
    @override
    State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
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
                    ],
                ),
            ),
            body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                children: DataBudgetPage.budgets.map((databudget) {
                    return Card(
                    child: ListTile(
                        title: Text("${databudget.judulBudget}\n",
                                style: const TextStyle(
                                        fontSize: 20,
                                    ),
                                ),
                        subtitle:Row(
                                children: [
                                Text("${databudget.budget}" ,
                                    style: const TextStyle(
                                        color: Colors.black,
                                    ),
                                ),
                                Spacer(),
                                Text(databudget.tipeBudget.toString(),
                                    style: const TextStyle(
                                            color: Colors.black,
                                        ),
                                ),
                                ],
                            ), 
                        ),
                    );
                }).toList(),
                ),
            ),
            ));
            
    }
}