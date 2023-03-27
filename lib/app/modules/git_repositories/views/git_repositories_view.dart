import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/utils/launch_url.dart';
import 'package:simple_icons/simple_icons.dart';

import '../../../data/model/git_repos.dart';
import '../../project/views/project_view.dart';
import '../controllers/git_repositories_controller.dart';

class GitRepositoriesView extends GetView<GitRepositoriesController> {
  const GitRepositoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    var map = {
      '': 'all'.tr,
      'Kotlin': 'Android',
      'Dart': 'Flutter',
    };

    return Scaffold(
      body: FutureBuilder(
        future: controller.future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(controller.errorMessage.toString()),
            );
          }

          final repos = controller.gitRepos;

          return DefaultTabController(
            length: map.length,
            child: CustomScrollView(
              slivers: [
                 SliverAppBar(
                  pinned: true,
                  leading: Container(),
                  title:const Text('GitHub Repository'),
                ),
                SliverToBoxAdapter(
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 8.sp),
                    child: ListTile(
                      onTap: () async{
                        var url = 'https://github.com/allyssonmast';
                        await LauncherUrl().launch(url);
                      },
                      leading:
                          const CircleAvatar(child: Icon(SimpleIcons.github)),
                      title: const Text('Meu Github',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      subtitle:
                          const Text('Clique e veja todos meus repositorios'),
                    ),
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
                      tabs: List<Widget>.generate(
                        map.length,
                        (int index) {
                          return Tab(text: map.values.toList()[index]);
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Obx(
                    () => GitHubWidgets(
                        repos: repos
                            .where((element) => element.language.contains(
                                map.keys.toList()[controller.indexTab.value]))
                            .toList()),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GitHubWidgets extends StatelessWidget {
  final List<GithubRepo> repos;
  const GitHubWidgets({Key? key, required this.repos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: Center(
        child: Wrap(
          children: [
            for (var repo in repos)
              Card(
                child: InkWell(
                  onTap: ()async{
                    await LauncherUrl().launch(repo.url);
                  },
                  child: Container(
                    padding: EdgeInsets.all(4.sp),
                    constraints: BoxConstraints(maxWidth: 500.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          horizontalTitleGap: 0,
                          leading: Icon(
                            repo.language == 'Dart'
                                ? SimpleIcons.flutter
                                : SimpleIcons.kotlin,
                            color: repo.language == 'Dart'
                                ? Colors.blueAccent
                                : Colors.deepPurple,
                          ),
                          title: Text(
                            repo.name.replaceAll('_', ' ').capitalize!,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(repo.description),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('${repo.stars}'),
                              SizedBox(
                                width: 4.sp,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0.sp,top: 8.sp,bottom: 4.sp),
                          child: Text('${'topics'.tr}:',style:const TextStyle(fontWeight: FontWeight.w700),textAlign: TextAlign.start,),
                        ),

                        Wrap(
                          spacing: 4.sp,
                          children: [
                            for (var topics in repo.topics)
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).cardColor),
                                ),
                                child: Text(topics),
                              ),
                          ],
                        )
                      ],
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
