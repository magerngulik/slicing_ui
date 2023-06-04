import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/sign_in_page_yummy_view.dart';

class SignInPageYummyController extends State<SignInPageYummyView> implements MvcController {
  static late SignInPageYummyController instance;
  late SignInPageYummyView view;

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