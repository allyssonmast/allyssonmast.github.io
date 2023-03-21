import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../../data/repositories/github_repository.dart';
import '../domain/usecase/get_repositories.dart';
import '../controllers/git_repositories_controller.dart';

class GitRepositoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GitRepositoriesController>(
      () => GitRepositoriesController(
        GetUserRepos(
          GithubRepositoryImpl(
            httpClient: Client(),
          ),
        ),
      ),
    );
  }
}
