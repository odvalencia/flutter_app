import 'package:flutter/material.dart';
import 'widget/factura.dart';
import 'widget/producto.dart';
import 'widget/cliente.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aplicaciones Móviles'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List <Widget> pageList= const<Widget>[
    Factura(),
    Producto(),
    Cliente()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: const  BoxDecoration(
                color: Colors.deepPurple,
              ),
              accountEmail: const Text("odvalencia1@espe.edu.ec"),
              accountName: const  Text("ODALIS VALENCIA"),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child:Image.asset("assets/ODALISVALENCIA.jpg"),) 
            ),
            const  ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            const  ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ajustes'),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Cerrar sesión'),
            ),
          ],
        ),
      ),
      body: pageList[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Facturas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell),
            label: 'Productos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Clientes',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.
              
            case 1:
              
          }
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){showModal(context); },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Añadir '),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cerrar'),
          )
        ],
      ),
    );
  }
}

