import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/testing_view.dart';

class TestingController extends State<TestingView> implements MvcController {
  static late TestingController instance;
  late TestingView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  final formKey = GlobalKey<FormState>();
  String error = "";
}
