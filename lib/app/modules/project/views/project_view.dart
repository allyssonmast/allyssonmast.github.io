import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:page/app/data/model/nobuteco.dart';
import 'package:page/app/routes/app_pages.dart';

import '../controllers/project_controller.dart';

class ProjectView extends GetView<ProjectController> {
  const ProjectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProjectController>(builder: (_) {
      return Scaffold(
        body: DefaultTabController(
          length: controller.project!.projectArc.length,
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 1000.sp),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    leading: Container(),
                    title: Text(controller.project!.projectName),
                  ),
                  SliverPadding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.sp, vertical: 4.sp),
                    sliver: SliverToBoxAdapter(
                      child: Text(controller.project!.descrition.tr),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SliverAppBarDelegate(
                      tabBar: TabBar(
                        onTap: (index) {
                          controller.indexTab.value = index;
                          controller.update();
                        },
                        isScrollable: true,
                        tabs: List<Widget>.generate(
                          controller.project!.projectArc.length,
                          (int index) {
                            return Tab(
                              text: controller.project!.projectArc.keys
                                  .toList()[index]
                                  .toLowerCase().tr
                                  .capitalize,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: BodyProject(
                        body: controller.project!.projectArc.values
                            .toList()[controller.indexTab.value]),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  SliverAppBarDelegate({
    required this.tabBar,
  });

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class BodyProject extends StatelessWidget {
  final dynamic body;
  const BodyProject({Key? key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return body is String
        ? Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Text(body.toString().tr),
        )
        : AppWidget(
            nobutecoList: body,
          );
  }
}

class AppWidget extends StatelessWidget {
  final List<Nobuteco> nobutecoList;
  const AppWidget({Key? key, required this.nobutecoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: Wrap(
        alignment: WrapAlignment.center,
        runSpacing: 8.sp,
        spacing: 4.sp,
        children: [
          for (var nobuteco in nobutecoList)
            Card(
              child: InkWell(
                onTap: () => Get.toNamed(Routes.APP_DATAILS,
                    parameters: {'app': nobuteco.name}),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 400.sp),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(nobuteco.name.tr),
                        subtitle: Text(nobuteco.subtTitle),
                        leading: CircleAvatar(
                          radius: 24.sp,
                          backgroundImage: AssetImage(nobuteco.logo),
                        ),
                      ),
                      ListView.builder(
                          itemCount: nobuteco.instructions.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_, index) {
                            return ListTile(
                              visualDensity: VisualDensity.compact,
                              leading: const Icon(Icons.check_circle_outline),
                              title: Text(nobuteco.instructions[index]),
                            );
                          })
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
