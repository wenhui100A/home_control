import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  SwitchButton({Key key, this.name}) : super(key: key);

  final String name;

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class SwitchButtonConfig extends StatefulWidget {
  @override
  _SwitchButtonConfigState createState() => _SwitchButtonConfigState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool state = false;

  getState(bool s) {
    return s ? "On" : "Off";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: 67,
        width: 500,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    getState(state),
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            Switch(
              value: state,
              activeColor: Colors.amber,
              onChanged: (bool b){
                setState(() {
                  state = b;
                });
              },
            ),
          ],
        )
    );
  }
}

class _SwitchButtonConfigState extends State<SwitchButtonConfig> {
  bool state = false;

  getState(bool s) {
    return s ? "On" : "Off";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: 67,
        width: 500,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "widget.name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    getState(state),
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
            ),
            Switch(
              value: state,
              activeColor: Colors.amber,
              onChanged: (bool b){
                setState(() {
                  state = b;
                });
              },
            ),
          ],
        )
    );
  }
}