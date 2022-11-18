class CountryDetail {

  final Confirmed? confirmed;
  final Recovered? recovered;
  final Deaths? deaths;
  final String? lastUpdate;

  CountryDetail({
    this.confirmed,
    this.recovered,
    this.deaths,
    this.lastUpdate,
  });

  CountryDetail.fromJson(Map<String, dynamic> json)
      : confirmed = (json['confirmed'] as Map<String,dynamic>?) != null ? Confirmed.fromJson(json['confirmed'] as Map<String,dynamic>) : null,
        recovered = (json['recovered'] as Map<String,dynamic>?) != null ? Recovered.fromJson(json['recovered'] as Map<String,dynamic>) : null,
        deaths = (json['deaths'] as Map<String,dynamic>?) != null ? Deaths.fromJson(json['deaths'] as Map<String,dynamic>) : null,
        lastUpdate = json['lastUpdate'] as String?;

  Map<String, dynamic> toJson() => {
    'confirmed' : confirmed?.toJson(),
    'recovered' : recovered?.toJson(),
    'deaths' : deaths?.toJson(),
    'lastUpdate' : lastUpdate
  };
}

class Confirmed {
  List<Confirmed>? confirmed;

  final int? value;
  final String? detail;

  Confirmed({
    this.value,
    this.detail,
  });

  Confirmed.fromJson(Map<String, dynamic> json)
      : value = json['value'] as int?,
        detail = json['detail'] as String?;

  get length => null;

  Map<String, dynamic> toJson() => {
    'value' : value,
    'detail' : detail
  };
}

class Recovered {

  List<Recovered>? recovered;
  final int? value;
  final String? detail;

  Recovered({
    this.value,
    this.detail,
  });

  Recovered.fromJson(Map<String, dynamic> json)
      : value = json['value'] as int?,
        detail = json['detail'] as String?;

  Map<String, dynamic> toJson() => {
    'value' : value,
    'detail' : detail
  };
}

class Deaths {


  List<Deaths>? deaths;
  final int? value;
  final String? detail;

  Deaths({
    this.value,
    this.detail,
  });

  Deaths.fromJson(Map<String, dynamic> json)
      : value = json['value'] as int?,
        detail = json['detail'] as String?;

  Map<String, dynamic> toJson() => {
    'value' : value,
    'detail' : detail
  };
}