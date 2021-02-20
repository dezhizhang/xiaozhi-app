import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

class ProductContentEvent{
  String str;
  ProductContentEvent(String str) {
    this.str = str;
  }
}



