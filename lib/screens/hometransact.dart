import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTransact extends StatelessWidget {
  const HomeTransact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: ListView(
        children: [
          ListTile(
              title: const Text(
                "1st Transaction",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: Wrap(
                spacing: 4,
                children: const <Widget>[
                  Text(
                    "+500",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.green),
                  ),
                  FaIcon(
                    FontAwesomeIcons.dollarSign,
                    color: Colors.green,
                    size: 22,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
