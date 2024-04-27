import 'package:flutter/material.dart';
import 'package:mobilvizee/screens/home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Kutunun arkaplan rengi
                borderRadius:
                    BorderRadius.circular(20.0), // Oval şekilde kenarlar
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'example@example.com',
                  border: InputBorder.none, // Kutunun çerçevesini kaldırır
                  contentPadding: EdgeInsets.symmetric(
                      horizontal:
                          20.0), // İçeriği yatay olarak sola doğru kaydırır
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200], // Kutunun arkaplan rengi
                borderRadius:
                    BorderRadius.circular(20.0), // Oval şekilde kenarlar
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: InputBorder.none, // Kutunun çerçevesini kaldırır
                  contentPadding: EdgeInsets.symmetric(
                      horizontal:
                          20.0), // İçeriği yatay olarak sola doğru kaydırır
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String email = 'nazl.sln16@gmail.com';
                String password = '123456';

                if (email.isNotEmpty && password.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Eksik Bilgi'),
                        content: Text('Lütfen e-mail ve şifrenizi giriniz.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Tamam'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  'Giriş',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {},
              child: Text('Şifremi Unuttum'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}
