import 'dart:convert';

abstract class JwtDecoder {
  static Map<String, dynamic> decode({required String token}) {
    try {
      final List<String> splitToken = token.split('.');
      //assert(splitToken.length != 2, 'invalid token');

      final payLoadBase64 = splitToken[1];

      final normalizePayLoad = base64.normalize(payLoadBase64);

      final payloadString = utf8.decode(base64.decode(normalizePayLoad));

      final decodedPayload = jsonDecode(payloadString);

      return decodedPayload;
    } catch (error, stackTracer) {
      throw const FormatException('invalid payload');
    }
  }
}
