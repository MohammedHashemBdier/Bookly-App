import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures({required this.errMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection timeout whith ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send timeout whith ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive timeout whith ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: "Bad certificate whith ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: "Requst to ApiServer was canceld");
      case DioExceptionType.connectionError:
        return ServerFailure(
          errMessage: "There was Conneection error with ApiServer",
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocetException')) {
          return ServerFailure(
            errMessage: "No Internet Connection",
          );
        } else {
          return ServerFailure(
            errMessage: "Unexpected Error try again later!",
          );
        }
      default:
        return ServerFailure(
          errMessage: "Opps there was an Error Please try again",
        );
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic recponce) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errMessage: recponce["error"]["message"],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: "Your requst Not Found , Please try again later!",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: "Internal server error , Please try again later!",
      );
    } else {
      return ServerFailure(
        errMessage: "Opps there was an Error Please try again",
      );
    }
  }
}
