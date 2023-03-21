import 'package:get/get.dart';

import '../../../data/model/git_repos.dart';
import '../domain/usecase/abs_get_repository.dart';

class GitRepositoriesController extends GetxController {
  final IGetUserRepos _getUserRepos;
  var indexTab = 0.obs;
  late Future future;

  GitRepositoriesController(this._getUserRepos);

  final _gitRepositories = <GithubRepo>[].obs;
  final _errorMessage = RxnString();

  @override
  void onInit() async {
    super.onInit();
    _getFuture();
  }
  _getFuture(){
    future = fetchRepositories('allyssonmast');
  }

  List<GithubRepo> get gitRepos => _gitRepositories;
  String? get errorMessage => _errorMessage.value;

  Future fetchRepositories(String username) async {
    final result = await _getUserRepos(username);
    result.fold(
      (error) => _errorMessage.value = error.message,
      (repos) => _gitRepositories.value = repos,
    );
  }
}
