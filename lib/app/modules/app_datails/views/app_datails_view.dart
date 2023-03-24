import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/model/nobuteco.dart';
import '../../project/views/project_view.dart';
import '../controllers/app_datails_controller.dart';

class AppDatailsView extends GetView<AppDatailsController> {
  const AppDatailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppDatailsController>(
      builder: (_) {
        return DefaultTabController(
          length: controller.app.pages.length,
          child: Scaffold(
            appBar: AppBar(
                title: Text(controller.app.name),
                centerTitle: true,
                leading: Container()),
            body: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 1200.sp),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: AtividadesWidget(app: controller.app),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: SliverAppBarDelegate(
                        tabBar: TabBar(
                          isScrollable: true,
                          onTap: (index) {
                            controller.indexPage.value = index;
                            controller.update();
                          },
                          tabs: List<Widget>.generate(
                            controller.app.pages.length,
                            (int index) {
                              return Tab(
                                text: controller.app.pages.keys
                                    .toList()[index]
                                    .toLowerCase()
                                    .tr
                                    .capitalize,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: PagesDetailsWidget(
                        app: controller.app,
                        indexPage: controller.indexPage.value,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AtividadesWidget extends StatelessWidget {
  final Nobuteco app;
  const AtividadesWidget({
    Key? key,
    required this.app,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: Text(
            app.description,
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0.sp),
          child: Text(
            'Atividades',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),
          ),
        ),
        ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: app.instructions.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) {
              var text = app.instructions[index];
              return ListTile(
                horizontalTitleGap: 0,
                leading: const Icon(Icons.check_circle_outline),
                title: Text('$text,'),
              );
            }),
        Card(
          child: InkWell(
            onTap: () {},
            child: Image(
              height: 50.sp,
              image: const AssetImage('asset/googleplay_appstore.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class PagesDetailsWidget extends StatelessWidget {
  final Nobuteco app;
  final int indexPage;
  const PagesDetailsWidget(
      {Key? key, required this.app, required this.indexPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0.sp, horizontal: 16.0.sp),
          child: Text(app.pages.values.toList()[indexPage]['text']),
        ),
        ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: app.pages.values.toList()[indexPage]['details'].length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.all(4.0.sp),
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10.sp,
                    ),
                    SizedBox(
                      width: 4.sp,
                    ),
                    Expanded(
                      child: Text(
                        app.pages.values.toList()[indexPage]['details'][index],
                      ),
                    ),
                  ],
                ),
              );
            }),
        SizedBox(
          height: 500.sp,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:
                (app.pages.values.toList()[indexPage]['assets'] as List).length,
            itemBuilder: (_, index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: AssetImage(
                    app.pages.values.toList()[indexPage]['assets'][index],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
