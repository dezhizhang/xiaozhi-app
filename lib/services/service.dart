
import '../utils/request.dart';

class Service {
  getFocuInfo() {
    return Request().get('https://www.guicaioa.com/api/focu', {});
  }
}