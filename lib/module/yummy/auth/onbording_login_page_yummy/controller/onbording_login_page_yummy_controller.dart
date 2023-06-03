import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/onbording_login_page_yummy_view.dart';

class OnbordingLoginPageYummyController extends State<OnbordingLoginPageYummyView> implements MvcController {
  static late OnbordingLoginPageYummyController instance;
  late OnbordingLoginPageYummyView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}