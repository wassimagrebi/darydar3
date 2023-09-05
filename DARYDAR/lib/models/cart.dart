import 'package:DARYDAR/models/services.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Service> _services = [];
  double _totalPrice = 0.0;

  void add(Service service) {
    _services.add(service);
    _totalPrice = _totalPrice + service.servicePrice;
    notifyListeners();
  }

  void remove(Service service) {
    _totalPrice = _totalPrice - service.servicePrice;
    _services.remove(service);
    notifyListeners(); 
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Service> get basketServices {
    return _services;
  }
}
