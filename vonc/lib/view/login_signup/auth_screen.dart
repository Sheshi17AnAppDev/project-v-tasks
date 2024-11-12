import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';

import 'package:vonc/view/pages/vonc_main_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: PhoneVerification(),
    );
  }
}

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
        children: [
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
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.6,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent.withOpacity(0.5),
                        radius: 65,
                        child: Center(
                          child: Image.asset(
                            "assets/img/V_O_n_C_Logo crop-min.png",
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          width: screenWidth * 0.8,
                          child: Form(
                            // key: phoneKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                  ),
                                  child: IntlPhoneField(
                                    initialCountryCode: 'IN',
                                    // controller: phoneController,
                                    // keyboardType: TextInputType.number,
                                    // validator: (value) {
                                    //   if (phoneController.text.length != 10) {
                                    //     return 'Plaese EnterValid Phone Number';
                                    //   }
                                    //   return null;
                                    // },
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey.shade500,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: Colors.grey.shade900),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                        ),
                                      ),
                                      hintText: "Phone Number",
                                      hintStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.phone,
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
                                      left: 25, right: 25),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OtpScreen(
                                                  phoneNumber: '',
                                                  sentOtp: '',
                                                )),
                                      );
                                    },
                                    child: const Text(
                                      "Verify Phone Number",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Center(
                                  child: Text(
                                    "        Or \n Login with",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      child: IconButton(
                                          onPressed: () {},
                                          //siginIn,
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
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String sentOtp;
  const OtpScreen(
      {super.key, required this.phoneNumber, required this.sentOtp});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 42,
      textStyle: const TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
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

            /* Center(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: screenHeight * 0.15,
                  child: Image.asset(
                    "assets/img/vonc_inovation_Icon-rb.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),*/
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
            Center(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: screenWidth * 0.9,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent.withOpacity(0.5),
                        radius: 65,
                        child: Center(
                          child: Image.asset(
                            "assets/img/V_O_n_C_Logo crop-min.png",
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          child: const Text(
                            "   Verification Code",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          // key: OtpKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              const Center(
                                child: Text(
                                  "Verification Code send to Registered mobile number",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Center(
                              //   child: Text(
                              //     _obscurePhoneNumber(widget.phoneNumber),
                              //     style: const TextStyle(
                              //       color: Colors.white70,
                              //       fontSize: 15,
                              //       fontWeight: FontWeight.bold,
                              //     ),
                              //   ),
                              // ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PhoneVerification(),
                                        ));
                                  },
                                  child: const Text(
                                    "Change Phone Number ?",
                                    style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Pinput(
                                  // controller: otpController,
                                  obscureText: true,
                                  length: 6,
                                  defaultPinTheme: defaultPinTheme,
                                  focusedPinTheme: defaultPinTheme.copyWith(
                                    decoration:
                                        defaultPinTheme.decoration!.copyWith(
                                      border: Border.all(color: Colors.white24),
                                    ),
                                  ),
                                  submittedPinTheme: defaultPinTheme.copyWith(
                                    decoration:
                                        defaultPinTheme.decoration!.copyWith(
                                      border: Border.all(color: Colors.white24),
                                    ),
                                  ),
                                  errorPinTheme: defaultPinTheme.copyWith(
                                    decoration:
                                        defaultPinTheme.decoration!.copyWith(
                                      border: Border.all(color: Colors.red),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter OTP';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                    ),
                                    // if (isTimervisible)
                                    // Center(
                                    //   child: Text(
                                    //     // " $remainingTime seconds",
                                    //     style: const TextStyle(
                                    //       color: Colors.white70,
                                    //     ),
                                    //   ),
                                    // ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    // InkWell(
                                    //     onTap: (){}
                                    //         // remainingTime == 0 && !isResending
                                    //         //     ? resendOtp
                                    //         //     : null,
                                    //     child: Center(
                                    //         child: Text(
                                    //       isResending
                                    //           ? "Resendig ..."
                                    //           : "Resend Otp",
                                    //       style: const TextStyle(
                                    //         color: Colors.indigo,
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                    //minimumSize: Size(100, 25),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const VoncMainScreen()),
                                    );
                                  },
                                  // onPressed: verifyOrResendOtp,
                                  child: const Text(
                                    "verify Otp",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // if (isTimervisible)
                              //   Text(
                              //       "Resend available in : $remainingTime seconds"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
