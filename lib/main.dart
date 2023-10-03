import 'package:flutter/material.dart';
import 'package:ros_project/list_widget.dart';
import 'package:ros_project/image_widget.dart';
import 'package:ros_project/app_bar.dart';
import 'package:ros_project/basic_theme.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Images'),
        ),
        body: ImageWidget(),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/bali.jpg';
    final String assetNameSvg = 'assets/subscribe.svg';
    final String assetNameUrl = 'https://fffuuu.net/Upload/Images/ved_tak_.png';

    SvgPicture imageFromAssetSvg =
        SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: imageFromAssetSvg,
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: basicTheme(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          'Custom Theme',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontSize: LargeTextSize),
        ),
      ),
      body: ListWidget(),
      bottomNavigationBar: BAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 20, bottom: 5, right: 10, left: 10),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return (index == 14)
            ? Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
                child: RaisedButton(
                  child: Text("Load More"),
                  onPressed: () {},
                ))
            : Card(
                child: ListTile(
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      iconTheme: Theme.of(context).iconTheme.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Header $index',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  subtitle: Text(
                    'Description text $index',
                  ),
                ),
              );
      },
    );
  }
}
