import 'package:awesome_snackbar_content_new/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              child: const Text('Show Awesome SnackBar'),
              onPressed: () {
                final snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content_new
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'On Snap!',
                    message:
                        'This is an example error message that will be shown in the body of snackbar!',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
                foregroundColor: Colors.white,
                backgroundColor: Colors.amber,
              ),
              child: const Text('Show Awesome Banner'),
              onPressed: () {
                final materialBanner = MaterialBanner(
                  /// need to set following properties for best effect of awesome_snackbar_content_new
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  forceActionsBelow: true,
                  content: AwesomeSnackbarContent(
                    title: 'Oh Hey!!',
                    message:
                        'This is an example error message that will be shown in the body of materialBanner!',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.warning,
                    // to configure for material banner
                    inMaterialBanner: true,
                  ),
                  actions: const [SizedBox.shrink()],
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentMaterialBanner()
                  ..showMaterialBanner(materialBanner);
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              child: const Text('Show Awesome Banner'),
              onPressed: () {
                final materialBanner = MaterialBanner(
                  /// need to set following properties for best effect of awesome_snackbar_content_new
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  forceActionsBelow: true,
                  content: AwesomeSnackbarContent(
                    title: 'Oh Hey!!',
                    message:
                        'This is an example error message that will be shown in the body of materialBanner!',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.help,
                    // to configure for material banner
                    inMaterialBanner: true,
                  ),
                  actions: const [SizedBox.shrink()],
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentMaterialBanner()
                  ..showMaterialBanner(materialBanner);
              },
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
              ),
              child: const Text('Show Awesome Material Banner'),
              onPressed: () {
                final materialBanner = MaterialBanner(
                  /// need to set following properties for best effect of awesome_snackbar_content_new
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  forceActionsBelow: true,
                  content: AwesomeSnackbarContent(
                    title: 'Oh Hey!!',
                    message:
                        'This is an example error message that will be shown in the body of materialBanner!',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.success,
                    // to configure for material banner
                    inMaterialBanner: true,
                  ),
                  actions: const [SizedBox.shrink()],
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentMaterialBanner()
                  ..showMaterialBanner(materialBanner);
              },
            ),
             Container(
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              // color: Colors.amber,
              width: double.infinity,
              height: 100,
              child: Center(
                child: Text(
                  'Developer by Baneste Codes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    // color: Colors.black,
                  ),
                ),
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
