
abstract base class Repository<T> {
  Future<T> request(
    Future<dynamic> Function() request, {
    Function(String?, {String? code}) onError = _defaultErrorHandler,
  }) async {
    try {
      return await request();
    } catch (e) {
      return onError.call('Something went wrong!');
    }
  }

  static Future _defaultErrorHandler(String? message, {String? code}) {
    return Future.error(message as Object);
  }
}