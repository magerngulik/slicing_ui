import 'package:flutter/material.dart';
import 'package:slicing/state_util.dart';
import '../view/your_order_view.dart';

class YourOrderController extends State<YourOrderView>
    implements MvcController {
  static late YourOrderController instance;
  late YourOrderView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map> product = [
    {
      "title": "McDonald's",
      "description": "Shortbread, chocolate turtle cookies, and red velvet.",
      "category": "Chinese",
      "price": "USD7.4",
      "image":
          "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg"
    },
    {
      "title": "Uncle Boy's",
      "description": "Shortbread, chocolate turtle cookies, and red velvet.",
      "category": "Chinese",
      "price": "USD7.4",
      "image":
          "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
    {
      "title": "The Halal Guys",
      "description": "Shortbread, chocolate turtle cookies, and red velvet.",
      "category": "Chinese",
      "price": "USD7.4",
      "image":
          "https://i.ibb.co/mHCx9Nj/photo-1517487881594-2787fef5ebf7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
  ];
  List<Map> pastOrder = [
    {
      "title": "Cafe Brichor's",
      "description": "Shortbread, chocolate turtle cookies, and red velvet.",
      "category": "Chinese",
      "price": "USD7.4",
      "image":
          "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
    },
  ];
}
