import 'dart:ui';

import 'package:_iwu_pack/_iwu_pack.dart';
import 'package:_iwu_pack/setup/app_textstyles.dart';
import 'package:_iwu_pack/widgets/widget_ripple_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:meta_business/src/presentation/home/widget/widget_input.dart';

import 'model_sucess.dart';

class PersonalWidget extends StatefulWidget {
  const PersonalWidget({
    super.key,
  });

  @override
  State<PersonalWidget> createState() => _PersonalWidgetState();
}

class _PersonalWidgetState extends State<PersonalWidget> {
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  FocusNode node3 = FocusNode();
  FocusNode node4 = FocusNode();

  bool hasFocus1 = false;
  bool hasFocus2 = false;
  bool hasFocus3 = false;
  bool hasFocus4 = false;

  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();

  String error1 = "";
  String error2 = "";
  String error3 = "";
  String error4 = "";

  bool isNextView = false;
  FormInput? data;
  @override
  void initState() {
    super.initState();
    node1.addListener(onFocusChange);
    node2.addListener(onFocusChange);
    node3.addListener(onFocusChange);
    node4.addListener(onFocusChange);
  }

  @override
  void dispose() {
    node1.removeListener(onFocusChange);
    node2.removeListener(onFocusChange);
    node3.removeListener(onFocusChange);
    node4.removeListener(onFocusChange);
    node1.dispose();
    node2.dispose();
    node3.dispose();
    node4.dispose();
    super.dispose();
  }

  void onFocusChange() {
    setState(() {
      hasFocus1 = node1.hasFocus;
      hasFocus2 = node2.hasFocus;
      hasFocus3 = node3.hasFocus;
      hasFocus4 = node4.hasFocus;
    });
  }

  submit() {
    setState(() {
      if (text1.text.isEmpty) {
        error1 = "Please enter some text";
      } else {
        error1 = "";
      }
      if (text2.text.isEmpty) {
        error2 = "Please enter some text 2";
      } else {
        error2 = "";
      }
      if (!text3.text.isEmail || text3.text.isEmpty) {
        error3 = "Invalid Email";
      } else {
        error3 = "";
      }
      if (text4.text.isEmpty) {
        error4 = "Please enter some text 4";
      } else {
        error4 = "";
      }
    });
    print("err1 $error1");
    print("err2 $error2");
    print("err3 $error3");
    print("err4 $error4");
    if (!error1.isNotEmpty &&
        !error2.isNotEmpty &&
        !error3.isNotEmpty &&
        !error4.isNotEmpty) {
      print("ok");
      //khởi tạo data của form nhập thông tin
      data = FormInput(
          username: text1.text,
          name: text2.text,
          phone: text3.text,
          comment: text4.text);
      setState(() {
        isNextView = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: const EdgeInsets.all(42),
          child: isNextView
              ? ModalSuccess(
                  data: data ?? null,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(8),
                    Text(
                      "Personal Email",
                      style: w500TextStyle(fontSize: 28),
                    ),
                    const Gap(4),
                    Text(
                      """Meta uses this information to verify your identify and to keep our community safe. You decide what personal details you make visible to others.""",
                      style: w300TextStyle(height: 1.4, fontSize: 18),
                    ),
                    const Gap(24),
                    Column(
                      children: [
                        InputForm(
                          label: 'Page Name',
                          hasFocus: hasFocus1,
                          node: node1,
                          controller: text1,
                          error: error1,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                        ),
                        const Gap(4),
                        InputForm(
                          label: 'Full Name',
                          hasFocus: hasFocus2,
                          node: node2,
                          controller: text2,
                          error: error2,
                        ),
                        const Gap(4),
                        InputForm(
                          label: 'Personal Email',
                          hasFocus: hasFocus3,
                          node: node3,
                          controller: text3,
                          error: error3,
                        ),
                        const Gap(4),
                        InputForm(
                          label: 'Mobile',
                          hasFocus: hasFocus4,
                          node: node4,
                          controller: text4,
                          error: error4,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                      ],
                    ),
                    const Gap(24),
                    Align(
                      alignment: Alignment.topRight,
                      child: WidgetRippleButton(
                        onTap: submit,
                        color: hexColor('1a56db'),
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Text(
                            "Submit",
                            style: w500TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
