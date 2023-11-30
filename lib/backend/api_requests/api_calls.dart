import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Trefle API v1 Group Code

class TrefleAPIV1Group {
  static String baseUrl = 'http://{defaultHost}';
  static Map<String, String> headers = {};
  static ListKingdomsCall listKingdomsCall = ListKingdomsCall();
  static GetKingdomCall getKingdomCall = GetKingdomCall();
  static ListSubkingdomsCall listSubkingdomsCall = ListSubkingdomsCall();
  static GetSubkingdomCall getSubkingdomCall = GetSubkingdomCall();
  static ListDivisionsCall listDivisionsCall = ListDivisionsCall();
  static GetDivisionCall getDivisionCall = GetDivisionCall();
  static ListDivisionClassesCall listDivisionClassesCall =
      ListDivisionClassesCall();
  static GetDivisionClassCall getDivisionClassCall = GetDivisionClassCall();
  static ListDivisionOrdersCall listDivisionOrdersCall =
      ListDivisionOrdersCall();
  static GetDivisionOrderCall getDivisionOrderCall = GetDivisionOrderCall();
  static ListFamiliesCall listFamiliesCall = ListFamiliesCall();
  static GetFamilyCall getFamilyCall = GetFamilyCall();
  static ListGenusCall listGenusCall = ListGenusCall();
  static GetGenusCall getGenusCall = GetGenusCall();
  static ListPlantsCall listPlantsCall = ListPlantsCall();
  static GetPlantCall getPlantCall = GetPlantCall();
  static SearchPlantsCall searchPlantsCall = SearchPlantsCall();
  static ReportPlantsCall reportPlantsCall = ReportPlantsCall();
  static ListPlantsZoneCall listPlantsZoneCall = ListPlantsZoneCall();
  static ListPlantsGenusCall listPlantsGenusCall = ListPlantsGenusCall();
  static ListSpeciesCall listSpeciesCall = ListSpeciesCall();
  static GetSpeciesCall getSpeciesCall = GetSpeciesCall();
  static SearchSpeciesCall searchSpeciesCall = SearchSpeciesCall();
  static ReportSpeciesCall reportSpeciesCall = ReportSpeciesCall();
  static ListDistributionsCall listDistributionsCall = ListDistributionsCall();
  static GetZoneCall getZoneCall = GetZoneCall();
  static ClaimClientSideTokenCall claimClientSideTokenCall =
      ClaimClientSideTokenCall();
  static ListCorrectionsCall listCorrectionsCall = ListCorrectionsCall();
  static GetCorrectionCall getCorrectionCall = GetCorrectionCall();
  static CreateCorrectionCall createCorrectionCall = CreateCorrectionCall();
}

class ListKingdomsCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listKingdoms',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/kingdoms',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetKingdomCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getKingdom',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/kingdoms/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListSubkingdomsCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listSubkingdoms',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/subkingdoms',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSubkingdomCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSubkingdom',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/subkingdoms/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListDivisionsCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listDivisions',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/divisions',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetDivisionCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDivision',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/divisions/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListDivisionClassesCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listDivisionClasses',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/division_classes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetDivisionClassCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDivisionClass',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/division_classes/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListDivisionOrdersCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listDivisionOrders',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/division_orders',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetDivisionOrderCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDivisionOrder',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/division_orders/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListFamiliesCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? filter = '',
    String? order = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFamilies',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/families',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'filter': filter,
        'order': order,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFamilyCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFamily',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/families/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListGenusCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? order = '',
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listGenus',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/genus',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filter': filter,
        'order': order,
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetGenusCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getGenus',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/genus/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListPlantsCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? filterNot = '',
    String? order = '',
    String? range = '',
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listPlants',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/plants',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filter': filter,
        'filter_not': filterNot,
        'order': order,
        'range': range,
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPlantCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPlant',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/plants/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchPlantsCall {
  Future<ApiCallResponse> call({
    String? q = '',
    String? page = '',
    String? filter = '',
    String? filterNot = '',
    String? order = '',
    String? range = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchPlants',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/plants/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'page': page,
        'filter': filter,
        'filter_not': filterNot,
        'order': order,
        'range': range,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReportPlantsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "notes": "The flower color is red"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reportPlants',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/plants/$id/report',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListPlantsZoneCall {
  Future<ApiCallResponse> call({
    String? zoneId = '',
    String? filter = '',
    String? filterNot = '',
    String? order = '',
    String? range = '',
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listPlantsZone',
      apiUrl:
          '${TrefleAPIV1Group.baseUrl}/api/v1/distributions/$zoneId/plants',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filter': filter,
        'filter_not': filterNot,
        'order': order,
        'range': range,
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListPlantsGenusCall {
  Future<ApiCallResponse> call({
    String? genusId = '',
    String? filter = '',
    String? filterNot = '',
    String? order = '',
    String? range = '',
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listPlantsGenus',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/genus/$genusId/plants',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filter': filter,
        'filter_not': filterNot,
        'order': order,
        'range': range,
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListSpeciesCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? filterNot = '',
    String? order = '',
    String? range = '',
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listSpecies',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/species',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'filter': filter,
        'filter_not': filterNot,
        'order': order,
        'range': range,
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSpeciesCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSpecies',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/species/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchSpeciesCall {
  Future<ApiCallResponse> call({
    String? q = '',
    String? page = '',
    String? filter = '',
    String? filterNot = '',
    String? order = '',
    String? range = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchSpecies',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/species/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'page': page,
        'filter': filter,
        'filter_not': filterNot,
        'order': order,
        'range': range,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReportSpeciesCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "notes": "The flower color is red"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reportSpecies',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/species/$id/report',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListDistributionsCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listDistributions',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/distributions',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetZoneCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getZone',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/distributions/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ClaimClientSideTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "origin": "https://example.com",
  "ip": "12.23.34.45"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'claimClientSideToken',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/auth/claim',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListCorrectionsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listCorrections',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/corrections',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCorrectionCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCorrection',
      apiUrl: '${TrefleAPIV1Group.baseUrl}/api/v1/corrections/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateCorrectionCall {
  Future<ApiCallResponse> call({
    String? recordId = '',
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "notes": "",
  "source_type": "external",
  "source_reference": "",
  "correction": {
    "scientific_name": "Abelmoschus nonexistus",
    "rank": "species",
    "genus": "Torilis",
    "year": 0,
    "author": "Moench",
    "bibliography": "",
    "common_name": "Okra|Bonnie Green Okra",
    "observations": "Vegetal flavour, Medium-yellow flowers",
    "planting_description": "",
    "planting_sowing_description": "A description on how to sow the plant",
    "duration": "",
    "flower_color": "",
    "flower_conspicuous": true,
    "foliage_color": "",
    "foliage_texture": "fine",
    "leaf_retention": false,
    "fruit_color": "",
    "fruit_conspicuous": false,
    "fruit_seed_persistence": false,
    "fruit_months": "",
    "bloom_months": "",
    "ground_humidity": 0,
    "growth_form": "",
    "growth_habit": "",
    "growth_months": "",
    "growth_rate": "",
    "edible_part": "",
    "vegetable": false,
    "light": 8,
    "atmospheric_humidity": 3,
    "adapted_to_coarse_textured_soils": "",
    "adapted_to_fine_textured_soils": "",
    "adapted_to_medium_textured_soils": "",
    "anaerobic_tolerance": "",
    "average_height_unit": "cm",
    "average_height_value": "250",
    "maximum_height_unit": "cm",
    "maximum_height_value": "280",
    "planting_row_spacing_unit": "cm",
    "planting_row_spacing_value": "80",
    "planting_spread_unit": "cm",
    "planting_spread_value": "100",
    "planting_days_to_harvest": 120,
    "maximum_precipitation_unit": "mm",
    "maximum_precipitation_value": "2230",
    "minimum_precipitation_unit": "mm",
    "minimum_precipitation_value": "1300",
    "minimum_root_depth_unit": "cm",
    "minimum_root_depth_value": "30",
    "ph_maximum": 0,
    "ph_minimum": 0,
    "soil_nutriments": 0,
    "soil_salinity": 0,
    "minimum_temperature_deg_c": 5,
    "maximum_temperature_deg_c": 20,
    "soil_texture": 0,
    "ligneous_type": "liana",
    "toxicity": "none"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCorrection',
      apiUrl:
          '${TrefleAPIV1Group.baseUrl}/api/v1/corrections/species/$recordId',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Trefle API v1 Group Code

class TrefleCall {
  static Future<ApiCallResponse> call({
    String? query = '',
    String? edible = '',
    String? token = 'Kp-iRX49lqA7O9-zm5HO1NiperZb4Qs6HAo-jtt6oaI',
    String? searchOn = '',
    String? queryOn = '',
    String? filterOn = '',
    String? filterNull = '&&filter_not[common_name]=null',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Trefle',
      apiUrl:
          'https://trefle.io/api/v1/plants$searchOn?token=$token$queryOn$query$filterOn$edible$filterNull',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic commonName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].common_name''',
        true,
      );
  static dynamic sciName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].scientific_name''',
        true,
      );
  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_url''',
        true,
      );
  static dynamic allData(dynamic response) => getJsonField(
        response,
        r'''$.data[:]''',
        true,
      );
  static dynamic plantID(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
}

class RedditCall {
  static Future<ApiCallResponse> call({
    String? searchIsTrue = '',
    String? getHot = '',
    String? query = '',
    String? searchAlsoTrue = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Reddit',
      apiUrl:
          'https://www.reddit.com/r/plants/$getHot$searchIsTrue$query$searchAlsoTrue',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic postDesc(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.selftext''',
        true,
      );
  static dynamic postTitle(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.title''',
        true,
      );
  static dynamic postThumb(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.thumbnail''',
        true,
      );
  static dynamic allPosts(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data''',
        true,
      );
  static dynamic allData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic dataChildren(dynamic response) => getJsonField(
        response,
        r'''$.data.children''',
        true,
      );
}

class RedditGetHotCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'redditGetHot',
      apiUrl: 'https://www.reddit.com/r/plants/hot.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic desc(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.selftext''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.title''',
        true,
      );
  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.preview.images[:].source.url''',
        true,
      );
  static dynamic postChildren(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:]''',
        true,
      );
  static dynamic permalink(dynamic response) => getJsonField(
        response,
        r'''$.data.children[:].data.permalink''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
