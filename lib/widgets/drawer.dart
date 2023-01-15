// import 'package:external_app_launcher/external_app_launcher.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:rate_my_app/rate_my_app.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tether/widgets/constant.dart';
// import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:tether/protfolio.dart/my_portfolio.dart';
import 'package:tether/widgets/market.dart';
import 'package:rating_dialog/rating_dialog.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key});
  final Uri _urlandroid = Uri.parse(
      'https://play.google.com/store/apps/dev?id=6577204690045492686&hl=en_IN&gl=US');

  final Uri _urlios =
      Uri.parse('https://apps.apple.com/us/developer/king/id526656015');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        child: ListView(
          children: [
            ListTile(
              title: "About".text.xl.bold.white.make(),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("About"),
                    content: const Text(
                        "App shows only useful prices of Tether (USDT). \nAppp does not provide any Buy or Sell facility. \nApplication shows prices of Tether USDT from different Exchanges, It may vary.\nApp does not collect any information."),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: const Text("okay"),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ListTile(
              title: "Market".text.xl.bold.white.make(),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MarketPage()),
              ),
            ),
            ListTile(
              title: "My Portfolio".text.xl.bold.white.make(),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProtfolio()),
              ),
            ),
            ListTile(
                title: "More App".text.xl.bold.white.make(),
                onTap: () {
                  _launchUrl();
                }),
            ListTile(
              title: "Share".text.xl.bold.white.make(),
              onTap: () => _onShare(context),
            ),
            ListTile(
              title: "Rate Us".text.xl.bold.white.make(),
              onTap: () => _showRatingAppDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      if (!await launchUrl(_urlandroid)) {
        throw 'Could not launch $_urlandroid';
      }
    } else {
      if (!await launchUrl(_urlios)) {
        throw 'Could not launch $_urlios';
      }
    }
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
        "Tether USDT Price with Exchanges price rate. Easy & Quick.\nDownload App Now\n${AppUrl.shareUrl()}",
        subject: "",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }

  void _showRatingAppDialog(BuildContext context) {
    final _ratingDialog = RatingDialog(
      starColor: Colors.amber,
      title: const Text("Rating Dialog In Flutter"),
      message: const Text('Rating this app and tell others what you think.'
          'Add more description here if you want.'),
      // image: Image.asset(
      //   "assets/latoken.png",
      //   height: 100,
      // ),

      submitButtonText: 'Submit',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        print('rating: ${response.rating}, '
            'comment: ${response.comment}');

        if (response.rating < 3.0) {
          print('response.rating: ${response.rating}');
        } else {
          Container();
        }
      },
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => _ratingDialog,
    );
  }
}
