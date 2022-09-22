import 'package:flutter/material.dart';
import 'score_bar.dart';
import 'game.dart';
import 'next_block.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  return MaterialApp(home: Tetris(),);
  }
}

class Tetris extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('TETRIS'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ScoreBar(),
            Expanded(
              child: Center(
                child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                      child: Game(),
                      ),
                    ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          NextBlock(),
                          SizedBox(height: 30,),
                          ElevatedButton(
                            child: Text(
                              'Start',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[200],
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.indigo[700]),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      ),
                    ),
                ],
              ),
              )
            ),
          ],
        ),
      ),
    );
  }
}