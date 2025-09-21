import 'package:wiredash/wiredash.dart';

class WiredashService {
  static final WiredashService _instance = WiredashService._internal();

  factory WiredashService() {
    return _instance;
  }

  WiredashService._internal();

  late WiredashController _controller;

  void initialize(WiredashController controller) {
    _controller = controller;
  }

  WiredashController get controller {
    return _controller;
  }
}
