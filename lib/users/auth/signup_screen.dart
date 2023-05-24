import 'package:clothes_store/users/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var isObSecure = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, cons) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: cons.maxHeight,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 285,
                      child: Image.asset('assets/images/register.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black26,
                              offset: Offset(0, -3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 30, 8.0),
                          child: Column(
                            children: [
                              Form(
                                key: formKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: nameController,
                                      validator: (value) => value == ""
                                          ? "Please write name"
                                          : null,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        ),
                                        hintText: "name...",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 6,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    TextFormField(
                                      controller: emailController,
                                      validator: (value) => value == ""
                                          ? "Please write email"
                                          : null,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        ),
                                        hintText: "email...",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Colors.white60,
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 6,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Obx(
                                          () => TextFormField(
                                        controller: passController,
                                        obscureText: isObSecure.value,
                                        validator: (value) => value == ""
                                            ? "Please write password"
                                            : null,
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.vpn_key_sharp,
                                            color: Colors.black,
                                          ),
                                          suffixIcon: Obx(
                                                () => GestureDetector(
                                              onTap: () {
                                                isObSecure.value =
                                                !isObSecure.value;
                                              },
                                              child: Icon(
                                                isObSecure.value
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          hintText: "password...",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            ),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Colors.white60,
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 14,
                                            vertical: 6,
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Material(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30),
                                      child: InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(30),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 28,
                                          ),
                                          child: Text(
                                            "Register",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Already have an Account?"),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(LoginScreen());
                                    },
                                    child: Text(
                                      "Login Here",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16),
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
            );
          },
        ),
      ),
    );
  }
}
