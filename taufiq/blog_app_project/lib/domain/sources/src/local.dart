/// local data source
abstract class BaseLocalDataSource {}

/// base local data source for user transactions
abstract class BaseUserLocalDataSource extends BaseLocalDataSource {}

/// base local data source for blog post transactions
abstract class BaseBlogLocalDataSource extends BaseLocalDataSource {}
