import 'package:cgadart/src/crypto/tweetnacl_blake2b.dart';
import 'package:cgadart/src/util.dart';

class NanoSignatures {
  static String signBlock(String hash, String privKey) {
    return NanoHelpers.byteToHex(Signature.detached(
            NanoHelpers.hexToBytes(hash), NanoHelpers.hexToBytes(privKey)))
        .toUpperCase();
  }
}