import 'package:DARYDAR/models/services.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  final List<Service> _services = [];
  double _totalPrice = 0.0;
  double _totalServicePrice = 0.0;
  //num counter = 1;

  void add(Service service) {
    if (_services.contains(service) == false) {
      _services.add(service);
    } else {
      service.quantity++;
    }

    _totalPrice = _totalPrice + service.servicePrice;
    notifyListeners();
  }

  void remove(Service service) {
    _totalPrice = _totalPrice - service.servicePrice * service.quantity;
    _services.remove(service);
    notifyListeners();
  }

  void totalServicePrice(Service service) {
    _totalServicePrice = service.servicePrice * service.quantity;
    notifyListeners();
  }

  void removeCounter(Service service) {
    if (service.quantity == 1) {
      remove(service);
    } else {
      service.quantity--;
      _totalPrice = _totalPrice - service.servicePrice;
    }
    notifyListeners();
  }

  double get totalPrice {
    return _totalPrice;
  }

  double get totaServicelPrice {
    return _totalServicePrice;
  }

  List<Service> get basketServices {
    return _services;
  }

  void deleteCart(Service service) {
    _totalPrice = 0.0;
    _services.clear();
    notifyListeners();
  }
}
