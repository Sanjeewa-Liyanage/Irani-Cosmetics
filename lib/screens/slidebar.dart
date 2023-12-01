import 'package:flutter/material.dart';
import 'package:iranicosmatics/screens/const/const.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:ionicons/ionicons.dart';

class Nav extends StatelessWidget {
  Nav({super.key});
  // final String _phoneno = "+94 76 112 3662";
  final whatsApp = Uri.parse(
      "https://api.whatsapp.com/send/?phone=94761123662&text=Hello%21&type=phone_number&app_absent=0");

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: dravercolor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Contact Us",
              style: TextStyle(
                  color: textcolor, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                    onPressed: () async {
                      final call = Uri.parse('tel:+94 706 312 374');
                      if (await canLaunchUrl(call)) {
                        launchUrl(call);
                      } else {
                        throw 'Could not launch $call';
                      }
                    },
                    icon: const Icon(
                      BoxIcons.bx_phone_call,
                      size: 35,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "0706 312 374",
                      style: TextStyle(
                          color: textcolor, fontSize: 17, wordSpacing: 2),
                    )),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                    onPressed: () async {
                      final call = Uri.parse('tel:+94 773 312 374');
                      if (await canLaunchUrl(call)) {
                        launchUrl(call);
                      } else {
                        throw 'Could not launch $call';
                      }
                    },
                    icon: const Icon(
                      BoxIcons.bx_phone_call,
                      size: 35,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "0773 312 374",
                      style: TextStyle(
                          color: textcolor, fontSize: 17, wordSpacing: 2),
                    )),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                    onPressed: () async {
                      var url =
                          "https://api.whatsapp.com/send/?phone=94761123662&text=Hello%21&type=phone_number&app_absent=0";
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url);
                      } else {
                        throw "Can not load";
                      }
                    },
                    icon: Logo(Logos.whatsapp),
                    label: const Text(
                      "Chat us with WhatsApp",
                      style: TextStyle(
                          color: textcolor, fontSize: 17, wordSpacing: 2),
                    )),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () async {
                    var url =
                        "https://www.facebook.com/irani.device.3?mibextid=vk8aRt";
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw "Can not load";
                    }
                  },
                  icon: Logo(Logos.facebook_logo),
                  label: const Text(
                    "Follow us on Facebook",
                    style: TextStyle(
                        color: textcolor, fontSize: 17, wordSpacing: 2),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () async {
                    var url =
                        "https://www.instagram.com/irani_cosmatic/?igshid=YzAwZjE1ZTI0Zg%3D%3D";
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw "Can not load";
                    }
                  },
                  icon: Logo(Logos.instagram),
                  label: const Text(
                    "Follow us on Instagram",
                    style: TextStyle(
                        color: textcolor, fontSize: 17, wordSpacing: 2),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () async {
                    var url =
                        "https://www.youtube.com/channel/UC3BdjIyDzWlwyBhXz7quGtA";
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw "Can not load";
                    }
                  },
                  icon: Logo(Logos.youtube),
                  label: const Text(
                    "Watch us on Youtube",
                    style: TextStyle(
                        color: textcolor, fontSize: 17, wordSpacing: 2),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () async {
                    var url =
                        "https://www.tiktok.com/@irani.distributor?_t=8hWYhjJxR0U&_r=1";
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw "Can not load";
                    }
                  },
                  icon: const Icon(
                    IonIcons.logo_tiktok,
                    color: Colors.black,
                  ),
                  label: const Text(
                    "Follow us on Titok",
                    style: TextStyle(
                        color: textcolor, fontSize: 17, wordSpacing: 2),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                  onPressed: () async {
                    final email = Uri(
                        scheme: 'mailto',
                        path: 'info@iranicosmetics.lk',
                        query: 'subject = hello & body = test');
                    if (await canLaunchUrl(email)) {
                      launchUrl(email);
                    } else {
                      throw 'could not launch $email';
                    }
                  },
                  icon: const Icon(
                    EvaIcons.email,
                    size: 35,
                  ),
                  label: const Text(
                    "Mail to Us",
                    style: TextStyle(
                        color: textcolor, fontSize: 17, wordSpacing: 2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Future<void> _launchPhonecall(String phoneUrl) async {
//   if (await canLaunch(phoneUrl)) {
//     await launch(phoneUrl);
//   } else {
//     throw 'could not launch$phoneUrl';
//   }
// }
