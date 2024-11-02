import 'package:airin/components/labeled_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: SvgPicture.asset(
                "lib/images/Payment.svg",
                height: 250,
              ),
            ),
            const SizedBox(height: 16.0),
            const LabeledTextField(
                icon: CupertinoIcons.person, hintText: "Nama Panjang"),
            const SizedBox(height: 16.0),
            const LabeledTextField(
                icon: CupertinoIcons.envelope, hintText: "Email"),
            const SizedBox(height: 16.0),
            const LabeledTextField(
              icon: CupertinoIcons.checkmark_shield,
              hintText: "Password",
              obsecureText: true,
            ),
            const SizedBox(height: 16.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Verify",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.0,
                    color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child:
                        Text("Apakah anda setuju dengan password saat ini ?")),
                SwitchButton()
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      title: const Text(
        "Create Account",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        });
  }
}
