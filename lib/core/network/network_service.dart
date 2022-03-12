import 'package:vexana/vexana.dart';

class NetworkService {
  static NetworkService? _instace;
  static NetworkService get instace {
    _instace ??= NetworkService._init();
    return _instace!;
  }

  late final INetworkManager networkManager;
  final String _baseUrl = "http://makeup-api.herokuapp.com/";
  NetworkService._init() {
    networkManager = NetworkManager(options: BaseOptions(baseUrl: _baseUrl));
  }
}
