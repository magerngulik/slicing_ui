import 'package:flutter/material.dart';

class TopAlertDialogScreen extends StatefulWidget {
  @override
  _TopAlertDialogScreenState createState() => _TopAlertDialogScreenState();
}

class _TopAlertDialogScreenState extends State<TopAlertDialogScreen> {
  OverlayEntry? _overlayEntry;

  void _showTopAlertDialog(BuildContext context) {
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return Positioned(
          top: MediaQuery.of(context).padding.top + kToolbarHeight,
          left: 16.0,
          right: 16.0,
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Alert',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('This is a top alert!'),
                ],
              ),
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideTopAlertDialog() {
    _overlayEntry?.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showTopAlertDialog(context);
            Future.delayed(Duration(seconds: 3), () {
              _hideTopAlertDialog();
            });
          },
          child: Text('Show Top Alert Dialog'),
        ),
      ),
    );
  }
}
