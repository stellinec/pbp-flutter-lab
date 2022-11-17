import 'package:flutter/material.dart';
import 'package:counter_7/databudget.dart';
import 'package:counter_7/main.dart';
class TambahBudgetPage extends StatefulWidget {
    const TambahBudgetPage({super.key});

    @override
    State<TambahBudgetPage> createState() => _TambahBudgetPageState();
}

class _TambahBudgetPageState extends State<TambahBudgetPage> {
    
    final _formKey = GlobalKey<FormState>();
    final data = <List>[];
    String _judulBudget = "";
    String? _tipeBudget;
    int _budget = 0;
    List<String> listTipe = ["Pemasukan", "Pengeluaran"];
    bool isNumeric(String s) {
        if (s == null) {
            return false;
        }
        return double.tryParse(s) != null;
    }
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Tambah Budget'),
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
                         Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const DataBudgetPage()),
                            );
                        },
                    ),
                    ],
                ),
            ),
            body: Form(
            key: _formKey,
            child: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        children: [
                            Padding(
                                // Menggunakan padding sebesar 8 pixels
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Judul",
                                        // Menambahkan circular border agar lebih rapi
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (String? value) {
                                        setState(() {
                                            _judulBudget = value!;
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (String? value) {
                                        setState(() {
                                            _judulBudget = value!;
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                            return 'Judul tidak boleh kosong!';
                                        }
                                        return null;
                                    },
                                ),
                            ),
                            Padding(
                                // Menggunakan padding sebesar 8 pixels
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Nominal",
                                        // Menambahkan circular border agar lebih rapi
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5.0),
                                        ),
                                    ),
                                    // Menambahkan behavior saat nama diketik 
                                    onChanged: (String? value) {
                                        setState(() {
                                            _budget = int.parse(value!);
                                        });
                                    },
                                    // Menambahkan behavior saat data disimpan
                                    onSaved: (String? value) {
                                        setState(() {
                                            _budget = int.parse(value!);
                                        });
                                    },
                                    // Validator sebagai validasi form
                                    validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                            return 'Nominal tidak boleh kosong!';
                                        }else if(isNumeric(value) == false){
                                            return 'Input harus berupa digit';
                                        }
                                        return null;
                                    },
                                ),
                            ),
                            SizedBox(
                                width: 136,
                                child: DropdownButtonFormField(
                                    value: _tipeBudget,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: listTipe.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                        );
                                    }).toList(),
                                    hint: Text(
                                    'Pilih Jenis',
                                    ),
                                    onChanged: (value) {
                                        setState(() {
                                        _tipeBudget = value;
                                        });
                                    },
                                    validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Pilih Jenis!';
                                            }
                                            return null;
                                        },
                                        
                                ),
                            ),
                            
                            TextButton(
                                child: const Text(
                                    "Simpan",
                                    style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      DataBudgetPage.addBudget(judulBudget: _judulBudget, budget: _budget, tipeBudget: _tipeBudget,);
                                    showDialog(
                                            context: context,
                                            builder: (context) {
                                                return Dialog(
                                                    shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    elevation: 15,
                                                    child: Container(
                                                        child: ListView(
                                                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                                                            shrinkWrap: true,
                                                            children: <Widget>[
                                                                Center(
                                                                    child: const Text('Data berhasil disimpan'),        
                                                                ),
                                                                SizedBox(height: 20),
                                                             
                                                               
                                                                TextButton(
                                                                    onPressed: () {
                                                                        Navigator.pop(context);
                                                                    },
                                                                    child: Text('Kembali'),
                                                                ), 
                                                            ],
                                                        ),
                                                    ),
                                                );
                                            },
                                        );
                                    }
                                },
                            ),
                        ],
                    ),
                ),
            ),
        ),
     
        );
    }
}