import 'base_network.dart';
import '';

class CovidDataSource {
  static CovidDataSource instance = CovidDataSource();
  Future<Map<String, dynamic>> loadCountries() {
    return BaseNetwork.get("countries");
  }
  Future<Map<String, dynamic>> loadCountryDetail() {
    return BaseNetwork.get("countries/afghanistan");
  }
}
