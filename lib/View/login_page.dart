// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyForm(),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   TextEditingController mobileNumberController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Image.asset(
//               //   'assets/logo.png',
//               //   width: 80, // Adjust the width of the logo as needed
//               //   height: 80, // Adjust the height of the logo as needed
//               // ),
//               const SizedBox(height: 10),
//               Text(
//                 'Welcome to Kisan Kirti',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Enter your mobile number:',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 8.0),
//               TextFormField(
//                 controller: mobileNumberController,
//                 decoration: InputDecoration(
//                   labelText: 'Mobile Number',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../Widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Page'),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Text(
                'Welcome to Kisan Kirti',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enter your mobile number:',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),                 ),
                 hintText: 'MobileNumber',
                 prefixIcon: const Icon(Icons.person),
              ),
              SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),                 ),
                hintText: 'MobileNumber',
                obscureText: true,
                prefixIcon: Icon(Icons.lock),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform login authentication here
                  print('Username: ${usernameController.text}');
                  print('Password: ${passwordController.text}');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
