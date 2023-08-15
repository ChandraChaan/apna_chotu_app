
import '../network/apna_chota_app_network.dart';

abstract class IApnaChotuAppProvider {
  dynamic(dynamic);
}

class ApnaChotuAppProvider implements IApnaChotuAppProvider {
  @override
  dynamic(dynamic) => apnaChotaAppNetwork.getAPIResponse(dynamic);
}
