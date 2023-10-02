import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Ini Halaman 3"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Ini Halaman 3"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Tombol Kembali Page 1"))
          ],
        ),
      ),
    );
  }
}
