// ignore_for_file: unused_import, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

// import 'package:event_management_app/auth.dart';
// import 'package:event_management_app/constants/colors.dart';
// import 'package:event_management_app/containers/custom_input_form.dart';
// import 'package:event_management_app/views/login.dart';
import '../../../controllers/auth.dart';
import '../../../widgets/custom_input_form.dart';
import '../../login/views/login_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  color: Color.fromARGB(255, 218, 255, 123),
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(
                controller: _nameController,
                icon: Icons.person_outline,
                label: "Name",
                hint: "Enter your Name"),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(
                controller: _emailController,
                icon: Icons.email_outlined,
                label: "Email",
                hint: "Enter your Email"),
            SizedBox(
              height: 8,
            ),
            CustomInputForm(
                obscureText: true,
                controller: _passwordController,
                icon: Icons.lock_outline_rounded,
                label: "Password",
                hint: "Enter your Password"),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  createUser(_nameController.text, _emailController.text,
                          _passwordController.text)
                      .then((value) {
                    if (value == "success") {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Account Created")));
                      Future.delayed(
                          Duration(seconds: 2),
                          () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginView())));
                    } else {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(value)));
                    }
                  });
                },
                child: Text("Sign Up"),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 218, 255, 123),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 218, 255, 123),
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 218, 255, 123),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/register_controller.dart';

// class RegisterView extends GetView<RegisterController> {
//   const RegisterView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('RegisterView'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'RegisterView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
