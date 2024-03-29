import 'package:flutter/material.dart';
import 'package:hawaii/common/signUp/signup.dart';
import 'package:hawaii/screens/admin/admin_dashboard.dart';
import 'package:hawaii/screens/users/user_dashboard.dart';
import '../common/signIn/user_login.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../widgets/navigation_bar/admin_navigation_menu.dart';


Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName : (context) =>  SplashScreen(),
  AdminDashboard.routeName : (context) => AdminDashboard(),
  AdminBottomBar.routeName : (context) => AdminBottomBar(),
  UserLoginScreen.routeName : (context) =>  UserLoginScreen(),
  SignUpScreen.routeName : (context) =>  SignUpScreen(),
  UserDashboard.routeName : (context) =>  UserDashboard(),
};