import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signUp() async {
    //show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
    );

    try {
      await FirebaseAuth.instance. createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      //pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //email salah
      if (e.code == 'user-not-found') {
        //beritahu user
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        //beritahu user
        wrongPasswordMessage();
      }
    }
  }

  //pesan salah email
  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Color(0xFF3F4A3B),
            title: Text("Email salah"),
          );
        }
    );
  }

  //pesan salah password
  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Color(0xFF3F4A3B),
            title: Text("Password salah"),
          );
        }
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                        height: 325,
                        child: Card(
                          color: Color(0xFF3F4A3B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Padding(padding: const EdgeInsets.symmetric(
                                  horizontal: 20),
                                child: TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    border: const OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(12.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Padding(padding: const EdgeInsets.symmetric(
                                  horizontal: 20),
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: const OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(12.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Padding(padding: const EdgeInsets.symmetric(
                                  horizontal: 20),
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    border: const OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(12.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10),
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              GestureDetector(
                                onTap: signUp,
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
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
                              ),
                              const SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: widget.onTap,
                                    child: const Text(
                                      'Login Now',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
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