import 'package:flutter/material.dart';
import 'package:posttest7_122_rizky/login.dart';
import 'package:posttest7_122_rizky/page_satu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        'page_satu': (context) => HalamanSatu(),
        'page_dua': (context) => HalamanDua(),
      },
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: isDark ? Brightness.dark : Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Switch"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dark Mode"),
              Switch(
                value: isDark,
                onChanged: (value) {
                  setState(
                        () {
                      isDark = value;
                    },
                  );
                  print(isDark);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class PenyakitCengkeh extends StatefulWidget {
  const PenyakitCengkeh ({Key? key}) : super(key: key);

  @override
  State<PenyakitCengkeh> createState() => _PenyakitCengkehState();
}

class _PenyakitCengkehState extends State<PenyakitCengkeh> {
  @override
  Widget build(BuildContext context) {

    String Penyakit = "none";

    bool? Jenis1 = false;
    bool? Jenis2 = false;
    bool? Jenis3 = false;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Switch"),),
        body: ListView(
          children: [
            Row(
              children: [
                Text("Jenis Cengkeh"),
                TextButton(
                  child: Text("Cengkeh Si Putih"),
                  onPressed: () {},
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("Cengkeh Si Kotok"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Cengkeh Zanzibar"),
                ),
              ],
            ),
            Text("Diagnosa Penyakit Cengkeh"),
            ListTile(
              leading: Radio(
                value: "Penyakit Busuk Akar",
                groupValue: Penyakit,
                onChanged: (value) {
                  setState(
                        (){
                      Penyakit = value ?? "none";
                    },
                  );
                },
              ),
              title: Text("Penyakit Busuk Akar"),
            ),
            ListTile(
              leading: Radio(
                value: "Penyakit Kematian Tunggal",
                groupValue: Penyakit,
                onChanged: (value) {
                  setState(
                        (){
                      Penyakit = value ?? "none";
                    },
                  );
                },
              ),
              title: Text("Penyakit Kematian Tunggal"),
            ),
            ListTile(
              leading: Radio(
                value: "Penyakit Alga",
                groupValue: Penyakit,
                onChanged: (value) {
                  setState(
                        (){
                      Penyakit = value ?? "none";
                    },
                  );
                },
              ),
              title: Text("Penyakit Alga"),
            ),
            ListTile(
              leading: Checkbox(
                value: Jenis1,
                onChanged: (bool? value) {
                  setState(() {
                    Jenis1 = value;
                  });
                },
              ),
              title: const Text('Jenis Penyakit 1'),
            ),
            ListTile(
              leading: Checkbox(
                value: Jenis1,
                onChanged: (bool? value) {
                  setState(() {
                    Jenis1 = value;
                  });
                },
              ),
              title: const Text('Jenis Penyakit 1'),
            ),
            ListTile(
              leading: Checkbox(
                value: Jenis1,
                onChanged: (bool? value) {
                  setState(() {
                    Jenis1 = value;
                  });
                },
              ),
              title: const Text('Jenis Penyakit 1'),
            ),
            Column(
              children: [
                Image.asset('assets/day.jpeg'),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Gejala Penyakit',
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Masukkan Jenis Cengkeh",
                labelText: "Nama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//
// class Navigation extends StatelessWidget {
//   const Navigation({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }
