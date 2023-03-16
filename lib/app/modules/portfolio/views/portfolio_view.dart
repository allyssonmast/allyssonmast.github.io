import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/constants.dart';
import '../../home/views/widget/apps_widget.dart';
import '../controllers/portfolio_controller.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future launch(String uri) async {
      Uri uriFinal = Uri.parse(uri);
      await canLaunchUrl(uriFinal)
          ? await launchUrl(uriFinal, mode: LaunchMode.externalApplication)
          : throw 'Could not launch $uriFinal';
    }

    var listNobuteco = [nobuteco, nobutecoErp, nobutecoBand];

    return Stack(
      children: [
        Center(
          child: Card(
            child: Lottie.asset(
                'asset/lottie.json',//https://assets8.lottiefiles.com/packages/lf20_4kji20Y93r.json
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                              backgroundImage:
                                  const AssetImage('asset/me.jpeg'),
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
                        style: TextStyle(
                            fontSize: 14.0.sp, fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        'brazil'.tr,
                        style: TextStyle(
                          fontSize: 14.0.sp,
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.sp,
                        child: IconButton(
                            onPressed: () async {
                              //"https://api.whatsapp.com/send?phone=+5584986282006"
                              var url =
                                  'https://www.linkedin.com/in/allysson-mastrangelo-f-21623215a/';
                              await launch(url);
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.blueAccent,
                              size: 24.sp,
                            )),
                      ),
                    ),
                  ),
                ],
              ),

              const HandWidget(),

              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0.sp, left: 8.sp),
                child: Text(
                  'native_android'.tr.toUpperCase(),
                  style: TextStyle(
                    fontSize: 15.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () async {
                    var url = 'https://github.com/allyssonmast';
                    await launch(url);
                  },
                  leading: const CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.github),
                  ),
                  subtitle: Text('access_my_kotlin'.tr),
                  title: Text('kotlin_applications'.tr),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0.sp, left: 8.sp),
                child: Text(
                  'noButeco - Startup by Flutter'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    mainAxisExtent: 100,
                    childAspectRatio: 1,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 0),
                itemBuilder: (_, index) {
                  return AppsWidget(nobuteco: listNobuteco[index]);
                },
                itemCount: 3,
              ),
              const Spacer()
            ],
          ),
        ),
      ],
    );
  }
}

class HandWidget extends StatefulWidget {
  const HandWidget({super.key});

  @override
  _HandWidgetState createState() => _HandWidgetState();
}

class _HandWidgetState extends State<HandWidget> with SingleTickerProviderStateMixin {
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
          width: 50,
          height: 50,
          child: Transform.rotate(
            angle: _animation.value * 0.0174533, // Convert degrees to radians
            child:const FaIcon(FontAwesomeIcons.hand),
          ),
        );
      },
    );
  }
}
