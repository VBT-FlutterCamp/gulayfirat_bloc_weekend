import 'package:vexana/vexana.dart';
import '../model/makeup_model.dart';

abstract class IMakeupService {
  final INetworkManager manager;

  IMakeupService(this.manager);
  Future<List<MakeupModel>?> fetchMakeupData();
}

class MakeupService extends IMakeupService {
  MakeupService(INetworkManager manager) : super(manager);

  @override
  Future<List<MakeupModel>?> fetchMakeupData() async {
    final response = await manager.send<MakeupModel, List<MakeupModel>?>(
        NetworkPath.comment.rawValue(),
        parseModel: MakeupModel(),
        method: RequestType.GET);
    return response.data ?? [];
  }
}

enum NetworkPath { comment }

extension NetworkPathExtention on NetworkPath {
  String rawValue() {
    switch (this) {
      case NetworkPath.comment:
        return 'api/v1/products.json?brand=maybelline';
      default:
        throw Exception('Routes Not Found');
    }
  }
}
