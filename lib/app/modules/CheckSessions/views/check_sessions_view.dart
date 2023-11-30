// import 'app/controllers/auth.dart';
// import 'app/modules/home/views/home_view.dart';
// import 'app/modules/login/views/login_view.dart';
// ignore_for_file: unused_import, prefer_const_constructors

import '../../../controllers/auth.dart';
import '../../home/views/home_view.dart';
import '../../login/views/login_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckSessionsView extends StatefulWidget {
  const CheckSessionsView({super.key});

  @override
  State<CheckSessionsView> createState() => _CheckSessionsViewState();
}

class _CheckSessionsViewState extends State<CheckSessionsView> {
  @override
  void initState() {
    checkSessions().then((value) {
      if (value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeView()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginView()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}


// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import '../controllers/check_sessions_controller.dart';

// class CheckSessionsView extends GetView<CheckSessionsController> {
//   const CheckSessionsView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CheckSessionsView'),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'CheckSessionsView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
