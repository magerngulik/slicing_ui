import 'package:flutter/material.dart';
import 'package:slicing/core.dart';

class HomeNavigationController extends State<HomeNavigationView>
    implements MvcController {
  static late HomeNavigationController instance;
  late HomeNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map> menu = [
    {
      "name": "On Bording",
      "onTap": const OnbordingLoginPageYummyView(),
      "icon": Icons.developer_board,
    },
    {
      "name": "First On Bording ",
      "onTap": const OnbordingPageYummyView(),
      "icon": Icons.developer_board,
    },
    {
      "name": "Sign In",
      "onTap": const SignInPageYummyView(),
      "icon": Icons.developer_board,
    },
    {
      "name": "Sign In Kedua",
      "onTap": const TestingView(),
      "icon": Icons.developer_board,
    },
    {
      "name": "Register",
      "onTap": const RegisterPageYummyView(),
      "icon": Icons.developer_board,
    },
    {
      "name": "Home Page",
      "onTap": const HomePageYummyView(),
      "icon": Icons.home,
    },
  ];
}
