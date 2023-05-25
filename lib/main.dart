import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final edtxt = TextEditingController();
  void ev() {
    print(edtxt.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: SizedBox(
          width: double.infinity,
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/image1.jpg"),
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 70),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 255, 228),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.shortestSide,
                        maxHeight: 80,
                      ),
                      hintText: "Enter your name",
                      hintStyle: TextStyle(
                          fontSize: 14, color: Color.fromARGB(255, 76, 1, 82)),
                      helperText: "Full name , gmail .",
                      helperStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 74, 1, 77)),
                      labelText: " Use Name",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 54, 131, 56),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Marck Script",
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    controller: edtxt,
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    height: 13,
                    width: 800,
                  ),
                  TextField(
                    cursorColor: Colors.green,
                    maxLength: 10,
                    obscuringCharacter: "*",
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 223, 255, 228),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.shortestSide,
                          maxHeight: 80,
                        ),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 74, 1, 77)),
                        helperText: "Your password .",
                        helperStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 74, 1, 77)),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 54, 131, 56),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Color.fromARGB(255, 54, 131, 56),
                        )),
                    keyboardType: TextInputType.text,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Submit'),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.shortestSide,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              )),
        )),
      ),
    );
  }
}
