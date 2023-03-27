import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/app/modules/portfolio/views/widgets/project_widget.dart';
import 'package:portfolio/app/utils/project_constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Card(
            child: Lottie.asset(
              'asset/lottie.json', //https://assets8.lottiefiles.com/packages/lf20_4kji20Y93r.json
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ResumeMe(),
                const SmallButtons(),
                Wrap(
                  runAlignment: WrapAlignment.center,
                  children: [
                    ProjectWidget(project: androidProjects),
                    ProjectWidget(project: noButecoProject),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SmallButtons extends StatelessWidget {
  const SmallButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future launch(String uri) async {
      Uri uriFinal = Uri.parse(uri);
      await canLaunchUrl(uriFinal)
          ? await launchUrl(uriFinal, mode: LaunchMode.externalApplication)
          : throw 'Could not launch $uriFinal';
    }

    Future sendEmail(String subject, String body) async {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'allysson@hotmail.com',
        queryParameters: {
          'subject': subject,
          'body': body,
        },
      );
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch email';
      }
    }

    void makePhoneCall() async {
      const phoneNumber = '+5584986282006';
      Uri phoneLaunchUri = Uri.parse('tel:$phoneNumber');
      if (await canLaunchUrl(phoneLaunchUri)) {
        await launchUrl(phoneLaunchUri);
      } else {
        throw 'Could not launch phone';
      }
    }

    void sendWhats() async {
      String whats = '5584986282006';
      String url0 = "https://api.whatsapp.com/send?phone=$whats";
      Uri uriFinal = Uri.parse(url0);
      await canLaunchUrl(uriFinal)
          ? await launchUrl(uriFinal, mode: LaunchMode.externalApplication)
          : throw 'Could not launch $uriFinal';
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.sp, vertical: 24.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
              child: IconButton(
                  onPressed: () async {
                    var url =
                        'https://www.linkedin.com/in/allysson-mastrangelo-f-21623215a/';
                    await launch(url);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                  ))),
          CircleAvatar(
              child: IconButton(
                  onPressed: () async {
                    var url = 'https://github.com/allyssonmast';
                    await launch(url);
                  },
                  icon: const FaIcon(FontAwesomeIcons.github))),
          CircleAvatar(
              child: IconButton(
                  onPressed: () async {
                    await sendEmail('', '');
                  },
                  icon: const FaIcon(Icons.email_outlined))),
          CircleAvatar(
              child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            content:
                                Text('${'contact'.tr}: +55 (84) 98628-2006'),
                            actions: [
                              TextButton.icon(
                                onPressed: sendWhats,
                                label: const Text('WhatsApp'),
                                icon: const Icon(FontAwesomeIcons.whatsapp),
                              ),
                              TextButton.icon(
                                onPressed: makePhoneCall,
                                label: const Text('Call'),
                                icon: const Icon(FontAwesomeIcons.phone),
                              ),
                            ],
                          );
                        });
                  },
                  icon: const FaIcon(Icons.phone_android_outlined))),
        ],
      ),
    );
  }
}

class ResumeMe extends StatelessWidget {
  const ResumeMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!context.isPhone)
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0.sp),
                    child: CircleAvatar(
                      radius: 35.sp,
                      backgroundImage: const AssetImage('asset/me.jpeg'),
                    ),
                  ),
                  Text(
                    'Allysson Freitas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0.sp,
                    ),
                  )
                ],
              ),
            ),
          Expanded(
            child: ListTile(
              title: Text(
                'mobile_software'.tr,
                style:
                    TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'brazil'.tr,
                style: TextStyle(
                  fontSize: 14.0.sp,
                ),
              ),
              leading: CircleAvatar(
                radius: 30.sp,
                child: const Icon(Icons.computer_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HandWidget extends StatefulWidget {
  const HandWidget({super.key});

  @override
  _HandWidgetState createState() => _HandWidgetState();
}

class _HandWidgetState extends State<HandWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 30.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return SizedBox(
          width: 20.sp,
          height: 20.sp,
          child: Transform.rotate(
            angle: _animation.value * 0.0174533, // Convert degrees to radians
            child: FaIcon(
              FontAwesomeIcons.hand,
              size: 30.sp,
            ),
          ),
        );
      },
    );
  }
}
