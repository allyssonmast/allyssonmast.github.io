import 'package:dartz/dartz.dart';

import '../../../../data/model/git_repos.dart';
import '../../../../data/repositories/github_repository.dart';
import '../../../../erro/github_error.dart';
import 'abs_get_repository.dart';

class GetUserRepos implements IGetUserRepos {
  final GithubRepository repository;
  GetUserRepos(this.repository);
  @override
  Future<Either<GithubError, List<GithubRepo>>> call(String userName) async {
    return await repository.getRepositories(userName);
  }
}
