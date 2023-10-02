import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:url_launcher/url_launcher.dart';

class page1 extends StatelessWidget {
  const page1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
          title: Text("Ini Halaman 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Ini Halaman 1"),
            TextButton(onPressed: (){
              launchUrl(Uri.parse('https://spada.upnyk.ac.id'));
            }, child: Text("BukaUrl")
            ),
            ElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
            }, child: Text("Ke Page 2"))
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async{
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Gagal Membuka Link : ${_url}';
  }
}