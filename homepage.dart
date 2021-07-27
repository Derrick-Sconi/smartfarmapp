import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            slivers: <Widget>[
              SliverAppBar(
                stretch: true,
                onStretchTrigger: () {
                  // Function callback for stretch
                  return Future<void>.value();
                },
                expandedHeight: 300.0,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: const <StretchMode>[
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                  centerTitle: true,
                  title: const Text('Monitoring status'),
                  background: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'lib/assets/plant5.jpg',
                        fit: BoxFit.cover,
                      ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, 0.5),
                            end: Alignment.center,
                            colors: <Color>[
                              Color(0x60000000), //Colors.black45,
                              Color(0x00000000),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      children: const <Widget>[
                        //i want to display the getData as a card not list
                        //i also want a template for passing the map data ill get from my components configuration
                        //for the mean time i want to use dummy data json or something else
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('Temperature'),
                          subtitle: Text('sunny, h: 30, t: 75, m: 20, pH: 7.5'),
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Humidty'),
                          subtitle: Text('rainy, h: 70, t: 35, m: 80, pH: 7.5'),
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny_sharp),
                          title: Text('Soil pH'),
                          subtitle: Text('dry, h: 20, t: 95, m: 25, pH: 7.5'),
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('Soil Moisture'),
                          subtitle: Text('wet, h: 80, t: 15, m: 75, pH: 7.5'),
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('CO2 level'),
                          subtitle: Text('wet, h: 80, t: 15, m: 75, pH: 7.5'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
