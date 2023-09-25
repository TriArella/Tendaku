import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA4BB9D),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/Lputih.png',
                      width: 150,
                    ),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        width: 323,
                        height: 309,
                        child: Card(
                          color: Color(0xFF3F4A3B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    border: const OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                  ),
                                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  maxLength: 8,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: const OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                  ),
                                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  maxLength: 8,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    border: const OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(12.0)),
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                  ),
                                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Color(0xFF7C8C77),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
