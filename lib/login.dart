import 'package:flutter/material.dart';
import 'package:submission/dashboard.dart';
import 'package:submission/main.dart';
import 'package:submission/sign_up.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 120),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: xPrimary),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Enter Username',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: xPrimary),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: xPrimary),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: xPrimary),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20),
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.fromLTRB(40, 15, 40, 15)),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return xPrimary.withOpacity(0.5);
                        }

                        return xPrimary;
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()),
                      );
                    },
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: TextButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return xPrimary.withOpacity(0.5);
                            } else {
                              return xPrimary;
                            }
                          }),
                        ),
                        child: const Text("Forgot Password"))),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()),
                              );
                            },
                            child: const Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: xPrimary,
                              ),
                            )),
                      ]),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
