import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreatAccountView extends StatelessWidget {
  const CreatAccountView({
    super.key,
  });

  void _onLeadingTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Color(0xff4e98e9),
          size: 40,
        ),
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () => _onLeadingTap(context),
          child: Center(
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                fontWeight: Theme.of(context).textTheme.titleLarge?.fontWeight,
              ),
            ),
            Flexible(
              child: SizedBox(height: 20),
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Name',
            //   ),
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Email',
            //   ),
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Password',
            //   ),
            // ),
            // Flexible(child: SizedBox(height: 20)),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Sign up'),
            // ),
          ],
        ),
      ),
    );
  }
}
