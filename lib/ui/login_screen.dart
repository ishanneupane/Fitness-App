import 'package:flutter/material.dart';

import '../api_client/api_requests.dart';
import '../helper/const.dart';
import '../helper/storage_manager.dart';
import '../helper/text_styles.dart';
import 'mainpage.dart';
import 'registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController =
      TextEditingController(text: "monik123@gmail.com");

  TextEditingController passwordController =
      TextEditingController(text: "monik123");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/947a9f1acf2478edc6e97b9a17ef75aa.jpg"),
            ),
          ),
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Form(
                      key: _formKey,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email field is required';
                                }
                                return null;
                              },
                              controller: emailController,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "Email address",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password field is required';
                                }
                                return null;
                              },
                              controller: passwordController,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "Password",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 50,
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStatePropertyAll(kPrimaryColor),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  isLoading = true;
                                  setState(() {});
                                  await loginUser(
                                          emailController.text.toString(),
                                          passwordController.text.toString())
                                      .then((value) {
                                    if (value.token != null) {
                                      StorageManager.saveData(
                                          bearerToken, value.token);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MainPage(),
                                        ),
                                      );
                                    }
                                    isLoading = false;
                                    setState(() {});
                                  });
                                }
                              },
                              child: Text(
                                'Login',
                                style: normalTextStyle.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not a member? ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Register",
                            style: normalTextStyle.copyWith(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
