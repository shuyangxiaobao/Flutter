import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
class GeqiangbaoLocations{
  static GeqiangbaoLocations of(BuildContext context) {
    return Localizations.of<GeqiangbaoLocations>(
      context,
      GeqiangbaoLocations
    );
  }

  final Locale locale;
  GeqiangbaoLocations(this.locale);
  static Map<String,Map<String, String>> _localized = {
    'en':{
      'title':"hello"
    },
    'zh':{
      'title':"您好",
    }

  };
  String get title{
    return _localized[locale.languageCode]['title'];
  }
}

class GeqiangbaoLocationsDelegate extends LocalizationsDelegate<GeqiangbaoLocations>{
  GeqiangbaoLocationsDelegate();
  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return true;
  }

  @override
  Future<GeqiangbaoLocations> load(Locale locale) {
    // TODO: implement load
    return SynchronousFuture<GeqiangbaoLocations>(
      GeqiangbaoLocations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<GeqiangbaoLocations> old) {
    // TODO: implement shouldReload
    return false;
  }
  
}