import 'package:flutter/material.dart';
import 'package:vonc/view/login_signup/auth_screen.dart';

class ExampleAuthScreen extends StatefulWidget {
  const ExampleAuthScreen({super.key});

  @override
  State<ExampleAuthScreen> createState() => _ExampleAuthScreenState();
}

class _ExampleAuthScreenState extends State<ExampleAuthScreen> {

   // int _CrossAxisCount = 2;

 // double _aspectRatio = 1.5;

  //VeiwType _viewType = VeiwType.grid;

  final signInKey = GlobalKey<FormState>();
  final signUpKey = GlobalKey<FormState>();

  bool _SignInsubmit() {
    final isvalid = signInKey.currentState!.validate();
    if (isvalid) {
      signInKey.currentState?.save();
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PhoneVerification()));
      return true;
    }

    return false;
  }

  bool _SignUpsubmit() {
    final isvalid = signUpKey.currentState!.validate();
    if (isvalid) {
      signUpKey.currentState?.save();
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PhoneVerification()));
    }
    signUpKey.currentState!.save();
    return true;
  }

  bool _isPasswordVisible = false;
  bool _isLoginEnabled = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Blue Shape
            Positioned(
              top: 0,
              left: 0,
              // alignment: Alignment.topLeft,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Center(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: screenHeight * 0.15,
                    child: Image.asset(
                      "assets/img/vonc_inovation_Icon-rb.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            //Green Shape
            Positioned(
              top: 0,
              right: 0,
              //alignment: Alignment.topRight,
              child: SizedBox(
                height: screenHeight * 0.115,
                child: Image.asset(
                  "assets/img/2-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Yellow Shape
            Positioned(
              bottom: 0,
              left: 0,
              //alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/3-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // grey Shape
            Positioned(
              bottom: 0,
              right: 0,
              //alignment: Alignment.bottomRight,
              child: SizedBox(
                height: screenHeight * 0.2,
                child: Image.asset(
                  "assets/img/4-removebg-preview.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),

            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.572,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 65,
                          child: Center(
                            child: Image.asset(
                              "assets/img/V_O_n_C_Logo crop-min.png",
                            ),
                          ),
                        ),

                        // Text From Field
                        _isLoginEnabled
                            ? Form(
                                key: signInKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*|+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            return " Enter a valid email!";
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Email",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          RegExp regex = RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                          if (value!.isEmpty) {
                                            return 'Please enter password';
                                          } else {
                                            if (!regex.hasMatch(value)) {
                                              return 'Enter valid password';
                                            } else {
                                              return null;
                                            }
                                          }
                                        },
                                        obscureText: !_isPasswordVisible,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            color: Colors.white,
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(_isPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible =
                                                    !_isPasswordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isLoginEnabled = false;
                                            });
                                          },
                                          child: const Text(
                                            "Sign UP",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: const Text(
                                            "Forgot Password?",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent,
                                        //minimumSize: Size(100, 25),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _SignInsubmit();
                                        });
                                      },
                                      child: const Text(
                                        "Next  >>",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                  "assets/icons/google_logo.png")),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                  "assets/icons/apple_logo.png")),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                                "assets/icons/facebook_logo-removebg-preview.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            // signup Form
                            : Form(
                                key: signUpKey,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value!.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*|+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            return " Enter a valid email!";
                                          }
                                          return null;
                                        },
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Email",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          RegExp regex = RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                          if (value!.isEmpty) {
                                            return 'Please enter password';
                                          } else {
                                            if (!regex.hasMatch(value)) {
                                              return 'Enter valid password';
                                            } else {
                                              return null;
                                            }
                                          }
                                        },
                                        obscureText: !_isPasswordVisible,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            color: Colors.white,
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(_isPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible =
                                                    !_isPasswordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          RegExp regex = RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$');
                                          if (value!.isEmpty) {
                                            return 'Please enter password';
                                          } else {
                                            if (!regex.hasMatch(value)) {
                                              return ' password not same';
                                            } else {
                                              return null;
                                            }
                                          }
                                        },
                                        obscureText: !_isPasswordVisible,
                                        style: const TextStyle(
                                          color: Colors.black,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey.shade500,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                                color: Colors.grey.shade900),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.redAccent,
                                            ),
                                          ),
                                          hintText: "Confirm Password",
                                          hintStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.key,
                                            color: Colors.white,
                                          ),
                                          suffixIcon: IconButton(
                                            icon: Icon(_isPasswordVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                _isPasswordVisible =
                                                    !_isPasswordVisible;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueAccent,
                                        //minimumSize: Size(100, 25),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _SignUpsubmit();
                                        });
                                      },
                                      child: const Text(
                                        "Next  >>",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _isLoginEnabled = true;
                                        });
                                      },
                                      child: const Text(
                                        " Have account , Sign In",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    // Center(
                                    //   child: Container(
                                    //     height: 4,
                                    //     width: screenWidth * 0.265,
                                    //     decoration: BoxDecoration(
                                    //       color: Colors.white10,
                                    //       borderRadius:
                                    //           BorderRadius.circular(30),
                                    //     ),
                                    //   ),
                                    // ),
                                     Center(
                              child: ClipOval(
                                child: Image.asset(
                                    "assets/icons/vonc_io_main-removebg-preview.png"),
                              ),
                            ),
                            // sizedBoxHeight(10),
                            Container(
              height: 40,
              color: Color(0xFF212325),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      " Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       if (_viewType == VeiwType.list) {
                  //         _CrossAxisCount = 2;
                  //         _aspectRatio = 1.5;
                  //         _viewType = VeiwType.grid;
                  //       } else {
                  //         _CrossAxisCount = 1;
                  //         _aspectRatio = 5;
                  //         _viewType = VeiwType.list;
                  //       }
                  //     });
                  //   },
                  //   icon: _viewType == VeiwType.grid
                  //       ? SizedBox(
                  //           width: 50,
                  //           height: 50,
                  //           child: Image.asset(
                  //               "assets/icons/cateogrie_icon-removebg-preview.png"),
                  //         )
                  //       : Icon(Icons.view_list_outlined, color: Colors.white),
                  // ),
                ],
              ),
            ),
            //sizedBoxHeight(10),
                             Container(
              height: 200,
              margin: EdgeInsets.all(10),
              // child: _viewType == VeiwType.grid
              //     ? GridView.builder(
              //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //             crossAxisCount: _CrossAxisCount,
              //             childAspectRatio: _aspectRatio),
              //         itemCount: AppData.CategoriesStyleImages.length,
              //         itemBuilder: (context, index) {
              //           return Stack(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: InkWell(
              //                   onTap: () {
              //                     Navigator.push(
              //                       context,
              //                       MaterialPageRoute(builder: (context) {
              //                         switch (index) {
              //                           case 0:
              //                             return const FoodPage();
              //                           case 1:
              //                             return const LivingEssentials();
              //                           case 2:
              //                             return const LivingGenerals();
              //                           case 3:
              //                             return const Cervices();
              //                           case 4:
              //                             return const VoncIo();
              //                           default:
              //                             return const HomeScreen();
              //                         }
              //                       }),
              //                     );
              //                   },
              //                   child: Center(
              //                     child: Container(
              //                       height: 200,
              //                       decoration: BoxDecoration(
              //                         image: DecorationImage(
              //                           image: AssetImage(AppData
              //                               .CategoriesStyleImages[index]),
              //                           fit: BoxFit.fill,
              //                         ),
              //                         borderRadius: BorderRadius.circular(30),
              //                         border: Border.all(
              //                           width: 3,
              //                           color: AppData.borderColors[index],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               Align(
              //                 alignment: Alignment.bottomCenter,
              //                 child: Padding(
              //                   padding: const EdgeInsets.only(bottom: 15.0),
              //                   child: Text(
              //                     AppData.CategoriesText[index],
              //                     style: TextStyle(
              //                         color: Colors.white, fontSize: 12),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           );
              //         },
              //       )
              //     : ListView.builder(
              //         itemCount: AppData.CategoriesStyleImages.length,
              //         itemBuilder: (context, index) {
              //           return Stack(
              //             children: [
              //               Stack(
              //                 children: [
              //                   InkWell(
              //                     onTap: () {
              //                       Navigator.push(
              //                         context,
              //                         MaterialPageRoute(builder: (context) {
              //                           switch (index) {
              //                             case 0:
              //                               return const FoodPage();
              //                             case 1:
              //                               return const LivingEssentials();
              //                             case 2:
              //                               return const LivingGenerals();
              //                             case 3:
              //                               return const Cervices();
              //                             case 4:
              //                               return const VoncIo();
              //                             default:
              //                               return const HomeScreen();
              //                           }
              //                         }),
              //                       );
              //                     },
              //                     child: Container(
              //                       height: 180,
              //                       margin: EdgeInsets.symmetric(vertical: 10),
              //                       decoration: BoxDecoration(
              //                         image: DecorationImage(
              //                           image: AssetImage(AppData
              //                               .CategoriesStyleImages[index]),
              //                           fit: BoxFit.fill,
              //                         ),
              //                         borderRadius: BorderRadius.circular(30),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Positioned(
              //                 bottom: 10,
              //                 width: MediaQuery.sizeOf(context).width,
              //                 child: Container(
              //                   color: Colors.black54,
              //                   padding: EdgeInsets.symmetric(
              //                       horizontal: 8, vertical: 4),
              //                   child: Center(
              //                     child: Align(
              //                       alignment: Alignment.bottomCenter,
              //                       child: Text(
              //                         AppData.CategoriesText[index],
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 15),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           );
              //         },
              //       ),
                 //     GridView.builder(
                    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: _CrossAxisCount,
                    //           childAspectRatio: _aspectRatio),
                    //       itemCount: AppData.CategoriesStyleImages.length,
                    //       itemBuilder: (context, index) {
                    //         return Stack(
                    //           children: [
                    //             Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: InkWell(
                    //                 onTap: () {
                    //                   Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(builder: (context) {
                    //                       switch (index) {
                    //                         case 0:
                    //                           return const FoodPage();
                    //                         case 1:
                    //                           return const LivingEssentials();
                    //                         case 2:
                    //                           return const LivingGenerals();
                    //                         case 3:
                    //                           return const Cervices();
                    //                         case 4:
                    //                           return const VoncIo();
                    //                         default:
                    //                           return const HomeScreen();
                    //                       }
                    //                     }),
                    //                   );
                    //                 },
                    //                 child: Center(
                    //                   child: Container(
                    //                     height: 180,
                    //                     decoration: BoxDecoration(
                    //                       image: DecorationImage(
                    //                         image: AssetImage(
                    //                             AppData.CategoriesStyleImages[index]),
                    //                         fit: BoxFit.fill,
                    //                       ),
                    //                       borderRadius: BorderRadius.circular(30),
                    //                       border: Border.all(
                    //                         width: 4,
                    //                         color: AppData.borderColors[index],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //             Align(
                    //               alignment: Alignment.bottomCenter,
                    //               child: Padding(
                    //                 padding: const EdgeInsets.only(bottom: 15.0),
                    //                 child: Text(
                    //                   AppData.CategoriesText[index],
                    //                   style: TextStyle(
                    //                       color: Colors.white, fontSize: 12),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         );
                    //       },
                    //     ),
                    //     Align(
                    //       alignment: Alignment.center,
                    //       child: Image.asset(
                    //         "assets/icons/vonc_io_main-removebg-preview.png", // Replace with your image asset
                    //         width: 100,
                    //         height: 100,
                    //       ),
                    //     ),
                    //   ],
                    // ),
            ),
 Container(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.lightBlueAccent),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/food_3674384.png"),
                      Text("Food"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
              Spacer(),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.greenAccent.shade700),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/shopping-cart_476211.png"),
                      Text("Living_Essentials"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
              Container(
                height: 100,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.yellowAccent.shade400),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/woman.png"),
                      Text("Living_Generals"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
              Container(
                height: 50,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.grey.shade500),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/support-services_10723986.png"),
                      Text("Cervices"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: DropdownButton(
                                icon: Icon(Icons.arrow_drop_down),
                                underline: Container(),
                                dropdownColor: Colors.white,
                                items: const [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text("1"),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text("2"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3",
                                    child: Text("3"),
                                  )
                                ],
                                onChanged: (value) {})),
                      ),
                    ]),
              ),
            ],
          ),
        )),
                                  ],
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
