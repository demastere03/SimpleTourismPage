import 'package:flutter/material.dart';
import 'page3.dart';
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Ini Halaman 2"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Halaman 2"),
            OutlinedButton(onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => page3()));
              }, child: Text("Ke Halaman 3")
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Tombol Kembali")
            ),
          ],
        ),
      ),
    );
  }
}
