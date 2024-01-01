import 'package:fitness_app/api_client/api_requests.dart';
import 'package:flutter/material.dart';

import '../helper/const.dart';
import '../helper/text_styles.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _signUpFormKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool isObscure = true;

  TextEditingController firstNameController =
      TextEditingController(text: "Test");
  TextEditingController lastNameController =
      TextEditingController(text: "User");
  TextEditingController userNameController =
      TextEditingController(text: "testuser");
  TextEditingController emailController =
      TextEditingController(text: "test@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "P@ssw0rd");
  TextEditingController heightController = TextEditingController(text: "160");
  TextEditingController weightController = TextEditingController(text: "80");
  TextEditingController ageController = TextEditingController(text: "20");
  TextEditingController genderController = TextEditingController(text: "Male");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Center(
                        child: Text(
                          "Sign-Up",
                          style: titleTextStyle,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "First Step To Your Success !!!",
                            style: descTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Form(
                        key: _signUpFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: TextFormField(
                                    controller: firstNameController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'First name field is required';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "First name",
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Flexible(
                                  child: TextFormField(
                                    controller: lastNameController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Last name field is required';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "Last name",
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: userNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'User name field is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "User name",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email address field is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "Email Address",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password field is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.text,
                              obscureText: isObscure,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "Password",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    isObscure = !isObscure;
                                    setState(() {});
                                  },
                                  child: isObscure
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: TextFormField(
                                    controller: heightController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Height field is required';
                                      }
                                      return null;
                                    },
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                      decimal: true,
                                    ),
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "Height",
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Flexible(
                                  child: TextFormField(
                                    controller: weightController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Weight field is required';
                                      }
                                      return null;
                                    },
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                      decimal: true,
                                    ),
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "Weight",
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: ageController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Age field is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "Age",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: genderController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Gender field is required';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: "Gender",
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            Center(
                              child: ElevatedButton(
                                style: const ButtonStyle(
                                  padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 50,
                                    ),
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(
                                    kPrimaryColor,
                                  ),
                                ),
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  if (_signUpFormKey.currentState!.validate()) {
                                    isLoading = true;
                                    setState(() {});
                                    registerUser(
                                      firstName:
                                          firstNameController.text.toString(),
                                      lastName:
                                          lastNameController.text.toString(),
                                      userName:
                                          userNameController.text.toString(),
                                      email: emailController.text.toString(),
                                      password:
                                          passwordController.text.toString(),
                                      height: heightController.text.toString(),
                                      weight: weightController.text.toString(),
                                      age: ageController.text.toString(),
                                      gender: genderController.text.toString(),
                                    ).then((value) {
                                      isLoading = false;
                                      setState(() {});
                                      var msg = "";
                                      if (value.success ?? false) {
                                        msg =
                                            "Registration successful! Please login to continue.";
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ),
                                        );
                                      } else {
                                        msg = value.msg ?? "Failed";
                                      }
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(msg),
                                        ),
                                      );
                                    });
                                  }
                                },
                                child: Text(
                                  'Register',
                                  style: normalTextStyle.copyWith(
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already a member? ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
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
      ),
    );
  }
}
