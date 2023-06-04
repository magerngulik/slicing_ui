import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/register_page_yummy_view.dart';

class RegisterPageYummyController extends State<RegisterPageYummyView> implements MvcController {
  static late RegisterPageYummyController instance;
  late RegisterPageYummyView view;

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