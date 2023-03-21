import 'package:dartz/dartz.dart';

import '../../../../data/model/git_repos.dart';
import '../../../../erro/github_error.dart';

abstract class IGetUserRepos {
  Future<Either<GithubError, List<GithubRepo>>> call(String username);
}
