import 'package:dart_lang/b_behavioral/g_chain_of_responsibilty/abstract_middleware_handler.dart';
import 'package:dart_lang/b_behavioral/g_chain_of_responsibilty/model/request_model.dart';

class AuthenticationMiddleWareHandler extends AbstractMidlleWareHandler {
  @override
  bool handle(REquest request) {
    if (!request.isAuthenticated) {
      print('request has nooot been authenticated');
      return false;
    } else {
      print('request has been authenticated');
      super.handle(request);
      return true;
    }
  }
}
