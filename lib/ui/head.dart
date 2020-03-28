import 'package:flutter/material.dart';

class HesapMakinasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HesapMakinasiState();
  }
}

class HesapMakinasiState extends State<HesapMakinasi> {
  String islem = "+";

  int a = 0;
  int b = 0;

  int sonuc = 0;

  int bir = 1;
  int iki = 2;
  int uc = 3;
  int dort = 4;
  int bes = 5;
  int alti = 6;
  int yedi = 7;
  int sekiz = 8;
  int dokuz = 9;
  int sifir = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: CircleAvatar(child: Image.asset("assets/images/lextotan.png"),radius: 30,),
          ),
          Center(
              child: Text(
            "Sonuc",
            style: Theme.of(context).textTheme.display3.copyWith(
                  fontSize: 25,
                ),
          )),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "$a $islem $b = $sonuc",
                  style: Theme.of(context)
                      .textTheme
                      .display3
                      .copyWith(fontSize: 40, color: Colors.black),
                ),
              ],
            ),
            color: sonuc <= 0 ? Colors.red : Colors.green,
            width: 400,
            height: 80,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 40,
            buttonMinWidth: 100,
            children: <Widget>[
              RaisedButton(
                onLongPress: () {
                  setState(() {
                    b = bir;
                  });
                },
                onPressed: () {
                  setState(() {
                    a = bir;
                  });
                },
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      a = iki;
                    });
                  },
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onLongPress: () {
                    setState(() {
                      b = iki;
                    });
                  }),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      a = uc;
                    });
                  },
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 20),
                  ),
                  onLongPress: () {
                    setState(() {
                      b = uc;
                    });
                  }),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 40,
            buttonMinWidth: 100,
            children: <Widget>[
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      a = dort;
                    });
                  },
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 20),
                  ),
                  onLongPress: () {
                    setState(() {
                      b = dort;
                    });
                  }),
              RaisedButton(
                onLongPress: () {
                  setState(() {
                    b = bes;
                  });
                },
                onPressed: () {
                  setState(() {
                    a = bes;
                  });
                },
                child: Text(
                  "5",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                  onLongPress: () {
                    setState(() {
                      b = alti;
                    });
                  },
                  onPressed: () {
                    setState(() {
                      a = alti;
                    });
                  },
                  child: Text(
                    "6",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 40,
            buttonMinWidth: 100,
            children: <Widget>[
              RaisedButton(
                onLongPress: () {
                  setState(() {
                    b = yedi;
                  });
                },
                onPressed: () {
                  setState(() {
                    a = yedi;
                  });
                },
                child: Text(
                  "7",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                onLongPress: () {
                  setState(() {
                    b = sekiz;
                  });
                },
                onPressed: () {
                  setState(() {
                    a = sekiz;
                  });
                },
                child: Text(
                  "8",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                  onLongPress: () {
                    setState(() {
                      b = dokuz;
                    });
                  },
                  onPressed: () {
                    setState(() {
                      a = dokuz;
                    });
                  },
                  child: Text(
                    "9",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 40,
            buttonMinWidth: 310,
            children: <Widget>[
              RaisedButton(
                  onLongPress: () {
                    setState(() {
                      b = sifir;
                    });
                  },
                  onPressed: () {
                    setState(() {
                      a = sifir;
                    });
                  },
                  child: Text("0", style: TextStyle(fontSize: 20))),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 40,
            buttonMinWidth: 70,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    islem = "+";
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    islem = "-";
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      islem = "x";
                    });
                  },
                  child: Text(
                    "x",
                    style: TextStyle(fontSize: 20),
                  )),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      islem = "/";
                    });
                  },
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  hesapIslem();
                });
              },
              child: Text(
                "Sonuc",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green.shade800,
            ),
          ),
          Container(child: Text("Not: Sayilara ilk tiklama ilk degeri uzun tiklama ikinci degeri belirler."),)
        ],
      ),
    );
  }

  hesapIslem() {
    if (islem == "+") {
      toplama();
    } else if (islem == "-") {
      cikarma();
    } else if (islem == "x") {
      carpma();
    } else {
      bolme();
    }
  }

  toplama() {
    sonuc = a + b;
  }

  cikarma() {
    sonuc = a - b;
  }

  carpma() {
    sonuc = a * b;
  }

  bolme() {
    sonuc = a ~/ b;
  }
}
