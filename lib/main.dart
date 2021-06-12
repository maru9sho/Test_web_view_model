import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view_test/fetch_ogp_form.dart';
import 'package:web_view_test/metadata_detail.dart';
import 'package:web_view_test/metadata_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter OGP Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MetadataView(),
    );
  }
}

class MetadataView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter OGP Demo")),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ChangeNotifierProvider(
              create: (context) => MetadataModel(),
              child: Column(
                children: <Widget>[MetadataDetail(), FetchOgpForm()],
              ),
            ),
          ),
        ));
  }
}
