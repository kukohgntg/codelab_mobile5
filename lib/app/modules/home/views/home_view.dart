// ignore_for_file: use_super_parameters, prefer_const_constructors, unnecessary_brace_in_string_interps, unused_import

import 'package:codelab/app/controllers/auth.dart';
import 'package:codelab/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/saved_data.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String userName = "User";

  @override
  void initState() {
    userName = SavedData.getUserName();
    // refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              logoutUser();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginView()));
            },
            icon: Icon(Icons.logout),
          )
        ],
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "HomeView is working ${userName}",
          // semanticsLabel: userName,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// class HomeView extends GetView<HomeController> {
//   const HomeView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () {
//               logoutUser();
//               Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: (context) => LoginView()));
//             },
//             icon: Icon(Icons.logout),
//           )
//         ],
//         title: const Text('HomeView'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'HomeView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
