import 'package:dio/dio.dart';
import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:wildtodo/common/device_info/device_info.dart';

sealed class RequestType {
  final String path;
  final Object? data;
  final Map<String, dynamic>? queryParameters;
  final Options? options;
  final CancelToken? cancelToken;
  final ProgressCallback? onReceiveProgress;

  const RequestType({
    required this.path,
    this.data,
    this.cancelToken,
    this.onReceiveProgress,
    this.options,
    this.queryParameters,
  });
}

final class Get extends RequestType {
  const Get({
    required super.path,
    super.cancelToken,
    super.data,
    super.onReceiveProgress,
    super.options,
    super.queryParameters,
  });
}

final class Post extends RequestType {
  const Post({
    required super.path,
    super.cancelToken,
    super.data,
    super.onReceiveProgress,
    super.options,
    super.queryParameters,
  });
}

final class Put extends RequestType {
  const Put({
    required super.path,
    super.cancelToken,
    super.data,
    super.onReceiveProgress,
    super.options,
    super.queryParameters,
  });
}

final class Patch extends RequestType {
  const Patch({
    required super.path,
    super.cancelToken,
    super.data,
    super.onReceiveProgress,
    super.options,
    super.queryParameters,
  });
}

final class Delete extends RequestType {
  const Delete({
    required super.path,
    super.cancelToken,
    super.data,
    super.onReceiveProgress,
    super.options,
    super.queryParameters,
  });
}

class NetworkClient {
  late final Dio _dio;

  static const _baseUrl = 'https://wildproject.onrender.com';

  NetworkClient() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    _dio.interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final deviceInfo = DeviceInfo.init;

          final userAgent = FkUserAgent.userAgent;
          final fingerPrint = await deviceInfo.fingerPrint();

          options.headers.addAll({
            'User-Agent': userAgent,
            'X-Fingerprint': fingerPrint,
          });

          return handler.next(options);
        },
      ),
    ]);
  }

  ///в [type] следует передавать объеты одноименные типам запросов Get(), Put() и т.д.
  Future<Response<T>?> request<T>({required final RequestType type}) async {
    return switch (type) {
      Get() => _dio.get(
          type.path,
          data: type.data,
          queryParameters: type.queryParameters,
          options: type.options,
          cancelToken: type.cancelToken,
          onReceiveProgress: type.onReceiveProgress,
        ),
      Post() => _dio.post(
          type.path,
          data: type.data,
          queryParameters: type.queryParameters,
          options: type.options,
          cancelToken: type.cancelToken,
          onReceiveProgress: type.onReceiveProgress,
        ),
      Put() => _dio.put(
          type.path,
          data: type.data,
          queryParameters: type.queryParameters,
          options: type.options,
          cancelToken: type.cancelToken,
          onReceiveProgress: type.onReceiveProgress,
        ),
      Patch() => _dio.patch(
          type.path,
          data: type.data,
          queryParameters: type.queryParameters,
          options: type.options,
          cancelToken: type.cancelToken,
          onReceiveProgress: type.onReceiveProgress,
        ),
      Delete() => _dio.delete(
          type.path,
          data: type.data,
          queryParameters: type.queryParameters,
          options: type.options,
          cancelToken: type.cancelToken,
        )
    };
  }
}
