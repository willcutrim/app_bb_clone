import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco do Brasil',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Icon(
                  Icons.payment,
                  color: Colors.white,
                )),
                Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/imagens/bb.png')),
                Container(
                  child: Icon(
                    Icons.apps_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Container(
            height: 110,
            width: 110,
            child: Image.asset('assets/imagens/perfil.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Willyam Cutrim',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '2651-4 º 25059-7',
                  style: TextStyle(color: Colors.white60),
                ),
                SizedBox(
                  height: 45,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('ENTRAR',
                      style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.bold)),
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Outra conta',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        height: 91,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue.shade700,
          iconSize: 25,
          selectedFontSize: 20,
          unselectedItemColor: Colors.white,
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(Icons.notifications, color: Colors.yellow),
                height: 30,
              ),
              label: 'Notificações',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock, color: Colors.yellow),
              label: 'Senhas',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
                color: Colors.yellow,
              ),
              label: 'Vantagens',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(
                  Icons.qr_code,
                  color: Colors.yellow,
                ),
                height: 15,
              ),
              label: 'Leitor de\n QR code',
            )
          ],
          selectedLabelStyle: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
