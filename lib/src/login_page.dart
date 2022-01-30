import 'package:bai_tap_4/src/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Container(
              alignment: Alignment.center,
              height: height * 0.1,
              width: width * 0.9,
              child: const Text(
                "MyShop",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              transform: Matrix4.identity()..rotateZ(-10 * 3.1415927 / 180),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
            ),
          ),
          Container(
            height: height * 0.35,
            width: width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: const TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(labelText: 'E-Mail'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const TextField(
                    obscureText: true,
                    style: TextStyle(),
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    width: width * 0.3,
                    height: height * 0.05,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("LOGIN"),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.purple),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )))),
                  ),
                ),
                InkWell(
                  child: Text(
                    "SIGNUP INSTEAD",
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
