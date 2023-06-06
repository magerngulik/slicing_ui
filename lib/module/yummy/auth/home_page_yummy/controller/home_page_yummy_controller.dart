import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/home_page_yummy_view.dart';

class HomePageYummyController extends State<HomePageYummyView> implements MvcController {
  static late HomePageYummyController instance;
  late HomePageYummyView view;

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