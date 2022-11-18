import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikumnadine/countrydetail_model.dart';
import 'countries_model.dart';
import 'detailCountries.dart';
import 'covid_data_source.dart';

class DetailCountry extends StatefulWidget {
  const DetailCountry({Key? key}) : super(key: key);
  @override
  _DetailCountryState createState() => _DetailCountryState();
}
class _DetailCountryState extends State<DetailCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries Detail"),
      ),
      body: _buildDetailCountriesBody(),
    );
  }
  Widget _buildDetailCountriesBody() {
    return Container(
      child: FutureBuilder(
        future: CovidDataSource.instance.loadCountryDetail(), //future harus menerima data
        builder: (
            BuildContext context,
            AsyncSnapshot<dynamic> snapshot,
            ) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            CountryDetail countrydetailmodel =
            CountryDetail.fromJson(snapshot.data);
            return _buildSuccessSection(countrydetailmodel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }
  Widget _buildErrorSection() {
    return Text("Error");
  }
  Widget _buildEmptySection() {
    return Text("Empty");
  }
  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  Widget _buildSuccessSection(CountryDetail data) {
        return Center(
          child: Card(
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(
                child: Text("Confirmed : ${data.confirmed?.value} \n"
                    "Recovered :${data.recovered?.value}\n"
                    "Deaths :${data.deaths?.value}"),
              ),
            ),
          ),
        );
  }
  Widget _buildItemCountries(String value) {
    return Text(value);
  }
}

