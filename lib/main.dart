import 'package:flutter/material.dart';
import 'package:api/model/article_model.dart';
import 'package:api/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: Center(
         child: Text(
             "HEADLINES",
             style: TextStyle(
               color: Colors.white,
               fontSize: 29,
               fontFamily: 'Roboto_Slab',
               fontWeight: FontWeight.bold,
             ),
         ),
       ),
     ),
      body: Container(
        color: Colors.grey[800],
        child: FutureBuilder(
          future: client.getArticle(),
          builder: (BuildContext context,AsyncSnapshot<List<Article>> snapshot){
            if(snapshot.hasData){
              List<Article>? articles = snapshot.data;
              return ListView.builder(
                itemCount: articles?.length,
                itemBuilder: (context,index) => ListTile(title: Text(articles![index].title))
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
