import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/onbording_page_yummy_view.dart';

class OnbordingPageYummyController extends State<OnbordingPageYummyView> implements MvcController {
  static late OnbordingPageYummyController instance;
  late OnbordingPageYummyView view;

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