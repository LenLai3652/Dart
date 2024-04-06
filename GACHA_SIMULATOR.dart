import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() => runApp(MaterialApp(home: Home()));

int _cost = 0;
int _2star = 0;
int _3star = 0;
int _bd = 0;
int _card = 0;
int _gacha = 0;
int _gacha1 = Random().nextInt(1000);
int _gacha2 = Random().nextInt(3);
String _result1 = ' ';
String _result2 = ' ';
String _result3 = ' ';
String _result4 = ' ';
String _result5 = ' ';
String _result6 = ' ';
String _result7 = ' ';
String _result8 = ' ';
String _result9 = ' ';
String _result10 = ' ';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('GACHA SIMULATOR'),
          ),
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 1,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                ),
                child: Text(
                  '小豆沢こはね\nHAPPY BIRTHDAYガチャ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: 1,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                  color: Colors.blue,
                  child: Row(children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Text('2星', style: TextStyle(fontSize: 30)),
                    Container(
                        child: Column(children: [
                          Image.network(
                              'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png',
                              scale: 2.0),
                          Text('88.5%')
                        ]))
                  ])),
              Container(
                  color: Colors.yellow,
                  child: Row(children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Text('3星', style: TextStyle(fontSize: 30)),
                    Container(
                        child: Column(children: [
                          Image.network(
                              'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png',
                              scale: 2.0),
                          Text('2.83%')
                        ])),
                    Container(
                        child: Column(children: [
                          Image.network(
                              'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png',
                              scale: 2.0),
                          Text('2.83%')
                        ])),
                    Container(
                        child: Column(children: [
                          Image.network(
                              'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png',
                              scale: 2.0),
                          Text('2.83%')
                        ]))
                  ])),
              Container(
                  color: Colors.purple[200],
                  child: Row(children: [
                    Icon(Icons.cake),
                    Text('生日', style: TextStyle(fontSize: 30)),
                    Container(
                        child: Column(children: [
                          Image.network(
                              'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png',
                              scale: 2.0),
                          Text('3%')
                        ]))
                  ])),
              Container(
                width: 1,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _cost += 300;
                              _card += 1;
                              _gacha = 1;
                              _gacha1 = Random().nextInt(1000);
                              _gacha2 = Random().nextInt(3);
                              if (_gacha1 >= 0 && _gacha1 <= 884) {
                                _2star += 1;
                                _result1 =
                                'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                              } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                _3star += 1;
                                if (_gacha2 == 0) {
                                  _result1 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                } else if (_gacha2 == 1) {
                                  _result1 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                } else {
                                  _result1 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                }
                              } else {
                                _bd += 1;
                                _result1 =
                                'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                              }
                              showAlertDialog(context);
                            });
                          },
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                          ),
                          child: Text("單抽",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                        Container(
                          width: 10,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _cost += 3000;
                                _card += 10;
                                _gacha = 10;
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result1 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result1 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result1 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result1 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result1 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result2 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result2 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result2 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result2 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result2 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result3 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result3 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result3 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result3 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result3 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result4 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result4 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result4 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result4 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result4 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result5 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result5 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result5 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result5 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result5 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result6 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result6 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result6 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result6 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result6 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result7 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result7 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result7 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result7 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result7 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result8 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result8 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result8 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result8 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result8 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 884) {
                                  _2star += 1;
                                  _result9 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/4/4f/Kohane_2_thumbnail.png/130px-Kohane_2_thumbnail.png';
                                } else if (_gacha1 >= 885 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result9 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result9 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result9 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result9 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                _gacha1 = Random().nextInt(1000);
                                _gacha2 = Random().nextInt(3);
                                if (_gacha1 >= 0 && _gacha1 <= 969) {
                                  _3star += 1;
                                  if (_gacha2 == 0) {
                                    _result10 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/b/b9/Kohane_3_thumbnail.png/130px-Kohane_3_thumbnail.png';
                                  } else if (_gacha2 == 1) {
                                    _result10 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/1/18/Kohane_5_thumbnail.png/130px-Kohane_5_thumbnail.png';
                                  } else {
                                    _result10 =
                                    'https://static.miraheze.org/projectsekaiwiki/thumb/5/5f/Kohane_7_thumbnail.png/130px-Kohane_7_thumbnail.png';
                                  }
                                } else {
                                  _bd += 1;
                                  _result10 =
                                  'https://static.miraheze.org/projectsekaiwiki/thumb/e/ea/Kohane_15_thumbnail.png/130px-Kohane_15_thumbnail.png';
                                }
                                showAlertDialog(context);
                              });
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                            ),
                            child: Text("十抽",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ))),
                      ])),
              Text('已花費$_cost水晶'),
              Text('已抽$_card張卡片，分別如下：'),
              Text('$_2star張2星卡'),
              if (_card != 0) Text('${_2star / _card*100}%\n'),
              Text('$_3star張3星卡'),
              if (_card != 0) Text('${_3star / _card*100}%\n'),
              Text('$_bd張生日卡'),
              if (_card != 0) Text('${_bd / _card*100}%')
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              setState(() {
                _cost = 0;
                _2star = 0;
                _3star = 0;
                _bd = 0;
                _card = 0;
              });
            },
            label: const Text('重置', style: TextStyle(fontSize: 20)),
            icon: const Icon(Icons.refresh),
            backgroundColor: Colors.pink[500],
          ),
        ));
  }
}

Stream<int> _bids() async* {
  await Future<void>.delayed(const Duration(seconds: 1));

  await Future<void>.delayed(const Duration(seconds: 1));
}

showAlertDialog(BuildContext context) {
  AlertDialog dialog = AlertDialog(
      title: Text("轉蛋結果"),
      content: StreamBuilder<int>(
        stream: _bids(),
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          List<Widget> children;
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              children = const <Widget>[];
              break;
            case ConnectionState.waiting:
              children = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('初音ミク轉蛋中...'),
                )
              ];
              break;
            case ConnectionState.active:
              children = <Widget>[];
              break;
            case ConnectionState.done:
              if (_gacha == 10) {
                children = <Widget>[
                  Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network('$_result1', scale: 1.5),
                                      Image.network('$_result2', scale: 1.5)
                                    ])),
                            Container(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network('$_result3', scale: 1.5),
                                      Image.network('$_result4', scale: 1.5)
                                    ])),
                            Container(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network('$_result5', scale: 1.5),
                                      Image.network('$_result6', scale: 1.5)
                                    ])),
                            Container(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network('$_result7', scale: 1.5),
                                      Image.network('$_result8', scale: 1.5)
                                    ])),
                            Container(
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network('$_result9', scale: 1.5),
                                      Image.network('$_result10', scale: 1.5)
                                    ]))
                          ])),
                ];
              } else {
                children = <Widget>[
                  Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network('$_result1', scale: 0.5),
                          ]))
                ];
              }
              break;
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          );
        },
      ),
      actions: [
        ElevatedButton(
            child: Text("知道了"),
            onPressed: () {
              Navigator.pop(context);
            })
      ]);

  showGeneralDialog(
    context: context,
    pageBuilder: (context, anim1, anim2) {
      return Wrap();
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return Transform(
        transform: Matrix4.translationValues(
          0.0,
          (1.0 - Curves.easeInOut.transform(anim1.value)) * 400,
          0.0,
        ),
        child: dialog,
      );
    },
    transitionDuration: Duration(milliseconds: 400),
  );
}
