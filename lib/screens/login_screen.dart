// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:facebook_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: screenSize.height * 0.05),
                Center(
                  child: Image.asset(
                    "assets/images/App Rounded Logo.png",
                    height: screenSize.height * 0.1,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.05),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffD6DFF1),
                    filled: true,
                    hintText: "Mobile Number or Email Address",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xFF898F90)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: const Color(0xffD6DFF1),
                    filled: true,
                    hintText: "Password",
                    hintStyle:
                        const TextStyle(fontSize: 16, color: Color(0xFF898F90)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Color(0x78d6dff1),
                        )),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.visibility_off),
                      color: Color(0xff898F9C),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1877F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.015),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgotten Password?",
                      style: TextStyle(
                        color: Color(0xFF898F9C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.3),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Create Account",
                      style: TextStyle(color: Color(0xFF1877F2), fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Color(0xFF1877F2), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),
                Center(
                  child: Image.asset(
                    "assets/images/Meta Logo.png",
                    height: screenSize.height * 0.05,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// // ignore_for_file: prefer_const_constructors, sort_child_properties_last

// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Logo at the Top
//               SizedBox(height: screenSize.height * 0.08),
//               Center(
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundColor: Colors.blue,
//                   child: Text(
//                     "f",
//                     style: TextStyle(
//                       fontSize: 64,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenSize.height * 0.06),

//               // Mobile/Email Input
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Mobile Number or Email address",
//                   hintStyle: TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Color(0xffD6DFF1),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(16),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
//                 ),
//               ),
//               SizedBox(height: 16),

//               // Password Input
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   hintStyle: TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Color(0xffD6DFF1),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(16),
//                     borderSide: BorderSide.none,
//                   ),
//                   suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
//                 ),
//               ),
//               SizedBox(height: 24),

//               // Login Button
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF1877F2),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                   ),
//                   child: Text(
//                     "Login",
//                     style: TextStyle(color: Colors.white, fontSize: 18),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),

//               // Forgotten Password Text
//               TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Forgotten Password?",
//                   style: TextStyle(
//                     color: Color(0xFF898F9C),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 32),

//               // Create Account Button
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: OutlinedButton(
//                   onPressed: () {},
//                   style: OutlinedButton.styleFrom(
//                     side: BorderSide(color: Color(0xFF1877F2), width: 1.5),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                   ),
//                   child: Text(
//                     "Create Account",
//                     style: TextStyle(color: Color(0xFF1877F2), fontSize: 18),
//                   ),
//                 ),
//               ),

//               // Spacing for Meta Logo
//               Spacer(),

//               // Meta Logo
//               Center(
//                 child: Text(
//                   "Meta",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Color(0xFF898F9C),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 24),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
