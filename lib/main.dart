import 'package:flutter/material.dart';
import 'dart:async';

import 'dog_model.dart';
import 'dog_list.dart';
import 'new_dog_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tenguen Toppa Gurren Lagann',
      theme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(
        title: 'Tenguen Toppa Gurren Lagann',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Dog> initialDoggos = []
    ..add(Dog('Kamina', 'Katsuyuki Konishi',
        'Hailing from the underground village of Jeeha, founder and leader of the Gurren Brigade, he was the one who inspired Simon to believe in himself.'))
    ..add(Dog('Simon', 'Tetsuya Kakihara', 
    'Hailed for being like a drill, he became known as a legendary hero who overcame impossible situations.'))
    ..add(Dog('Yoko', 'Marina Innoue',
        'He handles a wide range of firearms, although he most frequently uses a long-range sniper rifle, the Barrett M82.'))
    ..add(Dog('Nia', 'Yukari Fukui', 
    'She was considered a "princess" as she was the daughter of the Spiral King, but then upon learning of her fathers abandonment she herself resigned her position.'))
    ..add(Dog('Rossiu', 'Mitsuki Saiga', 
    'On certain occasions he helps Simon drive the Gurren Lagann.'))
    ..add(Dog('Viral', 'Nobuyuki Hiyama', 
    'He is a shark-like Beastman with feline genetics. He is one of the recurring villains in the series, he is an exceptional warrior and a Ganmen pilot.'))
    ..add(Dog('Kittan', 'Kishō Taniyama', 
    'He is the only male member of the Black Brothers and is, at first, a rival of Kamina, but later accepts Kamina as leader.'))
    ..add(Dog('Leeron', 'Masaya Onosaka', 
    'Is the Littner village mechanic, who meets Simon and Kamina in episode 2. When the members of the Gurren Brigade continue on their way together with Yoko; their new ally, Leeron decides to go with them since they were going to need a mechanic for their Ganmens.'))
    ..add(Dog('Anti-Spiral', 'Takaya Kamikawa', 
    'The anti-spirals are a mysterious race who thought that the power of the spiral (evolution) will destroy the universe so they stopped their own evolution and used their psychic power to destroy all spiral life (life that is capable of evolution).'))
     ..add(Dog('Lordgenome', 'Narushi Ikeda', 
    'Also known as King Spiral or General Spiral is the main antagonist in the first part of Tengen Toppa Gurren Lagan, in addition to the creator of the Beastmen.'));

  Future _showNewDogForm() async {
    Dog newDog = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return AddDogFormPage();
    }));
    if (newDog != null) {
      initialDoggos.add(newDog);
    }
  }

  @override
  Widget build(BuildContext context) {
    var key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text(widget.title),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.add),
            onPressed: _showNewDogForm,
          ),
        ],
      ),
      body: new Container(
        decoration: new BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: NetworkImage('https://images7.alphacoders.com/318/318681.png'),
            fit: BoxFit.cover,
    )),
          child: new Center(
            child: new DogList(initialDoggos),
          )),
    );
  }
}
