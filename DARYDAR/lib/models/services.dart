class Service {
  final int id;
  final String serviceName;
  final String serviceNote;
  final String serviceType;
  final double servicePrice;
  final String image;
   num quantity;

  Service( {
    required this.id,
    required this.serviceName,
    required this.serviceNote,
    required this.serviceType,
    required this.servicePrice,
    required this.image,
    required this.quantity,
  });
}
