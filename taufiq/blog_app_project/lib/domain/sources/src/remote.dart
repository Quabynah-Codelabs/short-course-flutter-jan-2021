/// base remote data source
abstract class BaseRemoteDataSource {
  const BaseRemoteDataSource();
}

/// base remote data source for user transactions
abstract class BaseUserRemoteDataSource extends BaseRemoteDataSource {}

/// base remote data source for blog transactions
abstract class BaseBlogRemoteDataSource extends BaseRemoteDataSource {}
