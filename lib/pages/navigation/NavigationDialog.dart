import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef NavigationDialogCallback = Function(int);

class NavigationDialog extends StatefulWidget {
  const NavigationDialog(
      {@required this.title,
      @required this.description,
      @required this.buttonText,
      @required this.onNavigateCallback});

  final String title, description, buttonText;
  final NavigationDialogCallback onNavigateCallback;

  @override
  _NavigationDialogState createState() => _NavigationDialogState();
}

class _NavigationDialogState extends State<NavigationDialog> {
  TextEditingController _controller = TextEditingController();
  int _page = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: TextField(
        keyboardType: TextInputType.number,
        onChanged: (value) => setState(() => _page = int.parse(value)),
        controller: _controller,
        decoration: InputDecoration(hintText: widget.description),
      ),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              widget.onNavigateCallback(_page);
              Navigator.of(context).pop();
            },
            child: Text(widget.buttonText))
      ],
    );
  }
}
