import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design_patterns/constants.dart';
import 'package:flutter_design_patterns/themes.dart';
import 'package:flutter_design_patterns/widgets/design_patterns/adapter/adapter_example.dart';
import 'package:flutter_design_patterns/widgets/design_patterns/decorator/decorator_example.dart';
import 'package:flutter_design_patterns/widgets/design_patterns/facade/facade_example.dart';
import 'package:flutter_design_patterns/widgets/design_patterns/singleton/singleton_example.dart';
// commit2
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Design Patterns App',
      theme: lightTheme,
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/singleton': (BuildContext context) => new SingletonExample(),
        '/adapter': (BuildContext context) => new AdapterExample(),
        '/decorator': (BuildContext context) => new DecoratorExample(),
        '/facade': (BuildContext context) => new FacadeExample()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design Pattern"),
      ),
      body: Center(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           
        
            RaisedButton(
                child: Text("Singleton"),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.of(context).pushNamed('/singleton');
                }),
            RaisedButton(
              child: Text("Adapter"),
              onPressed: () {
                Navigator.of(context).pushNamed('/adapter');
              },
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text(" Decorator"),
              onPressed: () {
                Navigator.of(context).pushNamed('/decorator');
              },
              color: Colors.green,
            ),
            RaisedButton(
              child: Text("Facade"),
              onPressed: () {
                Navigator.of(context).pushNamed('/facade');
              },
              color: Colors.red,
            ),
           SizedBox(height: 100,),
            Column(
              //  mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
           Text("By"),
           
                Text("YAHYA ABU NADA \nMOHAMED ABU RAMADAN\n AHMED HAMDAN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center,),
              ],
            ), ],
        ),
      ),
    );
  }
}
