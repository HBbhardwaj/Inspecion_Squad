import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app_routes/app_routes.dart';
import 'app_routes/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.loginScreen,
      getPages: appRoutes(),
    );
  }
}
