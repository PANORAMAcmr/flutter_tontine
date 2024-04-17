// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
//
// class HomePage extends StatefulWidget{
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
//   final List<WordPair> _suggestions = <WordPair>[];
//   final _saved = Set<WordPair>();     // NEW
//
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18); // NEW
//
//   void _pushSaved() {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         // NEW lines from here...
//         builder: (BuildContext context) {
//           final tiles = _saved.map(
//                 (WordPair pair) {
//               return ListTile(
//                 title: Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );
//           final divided = ListTile.divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();
//
//           return Scaffold(
//             appBar: AppBar(
//               title: Text('Saved Suggestions'),
//             ),
//             body: ListView(children: divided),
//           );
//         }, // ...to here.
//       ),
//     );
//   }
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     Widget _buildRow(WordPair pair) {
//       final alreadySaved = _saved.contains(pair);  // NEW
//
//       return ListTile(
//         title: Text(
//           pair.asPascalCase,
//           style: _biggerFont,
//         ),
//         trailing: Icon(   // NEW from here...
//           alreadySaved ? Icons.favorite : Icons.favorite_border,
//           color: alreadySaved ? Colors.red : null,
//         ),
//         onTap: (){
//           setState(() {
//             if(alreadySaved){
//               _saved.remove(pair);
//             }
//             else{
//               _saved.add(pair);
//             }
//           });
//         },
//       );
//     }
// // NEW
//     Widget _buildSuggestions() {
//       return ListView.builder(
//           padding: const EdgeInsets.all(16),
//           // The itemBuilder callback is called once per suggested
//           // word pairing, and places each suggestion into a ListTile
//           // row. For even rows, the function adds a ListTile row for
//           // the word pairing. For odd rows, the function adds a
//           // Divider widget to visually separate the entries. Note that
//           // the divider may be difficult to see on smaller devices.
//           itemBuilder: (BuildContext _context, int i) {
//             // Add a one-pixel-high divider widget before each row
//             // in the ListView.
//             if (i.isOdd) {
//               return Divider();
//             }
//
//             // The syntax "i ~/ 2" divides i by 2 and returns an
//             // integer result.
//             // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
//             // This calculates the actual number of word pairings
//             // in the ListView,minus the divider widgets.
//             final int index = i ~/ 2;
//             // If you've reached the end of the available word
//             // pairings...
//             if (index >= _suggestions.length) {
//               // ...then generate 10 more and add them to the
//               // suggestions list.
//               _suggestions.addAll(generateWordPairs().take(10));
//             }
//             return _buildRow(_suggestions[index]);
//           }
//       );
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//         actions: [
//           IconButton(icon: Icon(Icons.list_alt), onPressed: _pushSaved),
//
//         ],
//       ),
//       body: _buildSuggestions(),
//       // child: Text(wordPair.asPascalCase),
//       // child: Padding(
//       //   padding: const EdgeInsets.all(20.0),
//       //   child: RaisedButton(
//       //     color: Colors.red,
//       //     onPressed: () {
//       //       // Navigator.pop(context);
//       //     },
//       //     child: Padding(
//       //       padding: const EdgeInsets.all(20.0),
//       //       child: Text('Show Alert Dialog', style: TextStyle(
//       //           fontSize: 30,
//       //           fontWeight: FontWeight.bold,
//       //           color: Colors.white
//       //       ),),
//       //     ),
//       //
//       //   ),
//       // ),
//
//       drawer: Drawer(
//         elevation: 20,
//         child: Column(
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//
//               accountName: Text(
//                 "Eslam Medhat",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Colors.white),
//               ),
//               accountEmail: Text("eslammedhat@gmail.com"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                     'https://avatars1.githubusercontent.com/u/28203059?s=460&u=5461d264a164e53b6fb7513218b678de8b53f413&v=4'),
//
//               ),
//               otherAccountsPictures: <Widget>[
//
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://pbs.twimg.com/media/EcBMZe0X0AUrku4.jpg'),
//
//                 ),
//
//               ],
//             ),
//             ListTile(
//               title: Text("Inbox"),
//               leading: Icon(Icons.inbox),
//             ),
//             ListTile(
//               title: Text("Sent"),
//               leading: Icon(Icons.send),
//             ),
//             Divider(
//               thickness: 1,
//             ),
//             ListTile(
//               title: Text("Stared"),
//               leading: Icon(Icons.star),
//             ),
//             ListTile(
//               title: Text("Archive"),
//               leading: Icon(Icons.archive),
//             ),
//             ListTile(
//               title: Text("Chats"),
//               leading: Icon(Icons.chat),
//             ),
//             Divider(
//               thickness: 1,
//             ),
//             ListTile(
//               title: Text("Sign Out"),
//               leading: Icon(Icons.exit_to_app),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         elevation: 5,
//         onTap:_onItemTapped,
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             // ignore: deprecated_member_use
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message_rounded),
//             // ignore: deprecated_member_use
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             // ignore: deprecated_member_use
//             label: 'People',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star),
//             // ignore: deprecated_member_use
//             label: 'Starred',
//           ),
//
//
//         ],
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         backgroundColor: Colors.red,
//         onPressed: () {},
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'CircularChartWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showSearch = false;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Page 1'),
    Text('Page 2'),
    Text('Page 3'),
    Text('Page 4'),
    Text('Page 5'),
  ];

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _showSearch
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Rechercher...',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  // Action à exécuter lorsqu'un texte est saisi dans le champ de recherche
                },
              )
            : Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Action à exécuter lorsque l'icône de notification est pressée
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                _showSearch =
                    !_showSearch; // Inverser l'état du champ de recherche
                if (!_showSearch) {
                  _searchController
                      .clear(); // Effacer le texte lorsque le champ de recherche est masqué
                }
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Action à exécuter lorsque l'icône de réglage est pressée
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: () {
                // Action à exécuter lorsque l'option 1 du drawer est sélectionnée
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Action à exécuter lorsque l'option 2 du drawer est sélectionnée
              },
            ),
            // Ajoutez d'autres options du drawer ici
          ],
        ),
      ),
      body:  Column(

        children: <Widget>[
          _buildMoneyWidget(),
          Container(
            height: 50,
            width: 1000,
            child: _Mychart(),
          ),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Association',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Sanction',
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            // Utilisez un espace vide pour le bouton central
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Tontine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off_csred_rounded,color: Colors.yellow,),
            label: 'Cotisation',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action à exécuter lorsque le bouton central est pressé
        },
        child: Icon(Icons.home),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  Widget _buildMoneyWidget() {
    // Fonction pour construire le widget affichant la somme d'argent
    String moneyAmount = '\ 5000 FCFA'; // Exemple de somme d'argent (à remplacer par votre propre valeur)
    return Container(
      width: 150.0,
      height: 100.0,
      padding: EdgeInsets.all(20),

      color: Colors.blue, // Couleur de fond du conteneur
      child: Text(
        "Montant: ${moneyAmount}",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  Widget _Mychart(){
    return CircularChartWidget();
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showSearchBar() {
    // Code pour afficher la barre de recherche ici
    // Vous pouvez utiliser setState pour modifier l'état de l'AppBar
  }
}
