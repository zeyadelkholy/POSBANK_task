// To parse this JSON data, do
//
//     final welcome2 = welcome2FromJson(jsonString);

import 'dart:convert';

Welcome2 welcome2FromJson(String str) => Welcome2.fromJson(json.decode(str));

String welcome2ToJson(Welcome2 data) => json.encode(data.toJson());

class Welcome2 {
  Welcome2({
    required this.info,
    required this.item,
  });

  Info info;
  List<Item> item;

  factory Welcome2.fromJson(Map<String, dynamic> json) => Welcome2(
    info: Info.fromJson(json["info"]),
    item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
    "item": List<dynamic>.from(item.map((x) => x.toJson())),
  };
}

class Info {
  Info({
    required this.postmanId,
    required this.name,
    required this.schema,
  });

  String postmanId;
  String name;
  String schema;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    postmanId: json["_postman_id"],
    name: json["name"],
    schema: json["schema"],
  );

  Map<String, dynamic> toJson() => {
    "_postman_id": postmanId,
    "name": name,
    "schema": schema,
  };
}

class Item {
  Item({
    required this.name,
    required this.protocolProfileBehavior,
    required this.request,
    required this.response,
  });

  String name;
  ProtocolProfileBehavior protocolProfileBehavior;
  Request request;
  List<dynamic> response;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    name: json["name"],
    protocolProfileBehavior: json["protocolProfileBehavior"] == null ? null : ProtocolProfileBehavior.fromJson(json["protocolProfileBehavior"]),
    request: Request.fromJson(json["request"]),
    response: List<dynamic>.from(json["response"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "protocolProfileBehavior": protocolProfileBehavior == null ? null : protocolProfileBehavior.toJson(),
    "request": request.toJson(),
    "response": List<dynamic>.from(response.map((x) => x)),
  };
}

class ProtocolProfileBehavior {
  ProtocolProfileBehavior({
    required this.disableBodyPruning,
  });

  bool disableBodyPruning;

  factory ProtocolProfileBehavior.fromJson(Map<String, dynamic> json) => ProtocolProfileBehavior(
    disableBodyPruning: json["disableBodyPruning"],
  );

  Map<String, dynamic> toJson() => {
    "disableBodyPruning": disableBodyPruning,
  };
}

class Request {
  Request({
    required this.method,
    required this.header,
    required this.body,
    required this.url,
  });

  Method method;
  List<dynamic> header;
  Body body;
  Url url;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
    method: methodValues.map[json["method"]],
    header: List<dynamic>.from(json["header"].map((x) => x)),
    body: json["body"] == null ? null : Body.fromJson(json["body"]),
    url: Url.fromJson(json["url"]),
  );

  Map<String, dynamic> toJson() => {
    "method": methodValues.reverse[method],
    "header": List<dynamic>.from(header.map((x) => x)),
    "body": body == null ? null : body.toJson(),
    "url": url.toJson(),
  };
}

class Body {
  Body({
    required this.mode,
    required this.formdata,
    required this.raw,
    required this.options,
  });

  String mode;
  List<dynamic> formdata;
  String raw;
  Options options;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    mode: json["mode"],
    formdata: json["formdata"] == null ? null : List<dynamic>.from(json["formdata"].map((x) => x)),
    raw: json["raw"] == null ? null : json["raw"],
    options: json["options"] == null ? null : Options.fromJson(json["options"]),
  );

  Map<String, dynamic> toJson() => {
    "mode": mode,
    "formdata": formdata == null ? null : List<dynamic>.from(formdata.map((x) => x)),
    "raw": raw == null ? null : raw,
    "options": options == null ? null : options.toJson(),
  };
}

class Options {
  Options({
    required this.raw,
  });

  Raw raw;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
    raw: Raw.fromJson(json["raw"]),
  );

  Map<String, dynamic> toJson() => {
    "raw": raw.toJson(),
  };
}

class Raw {
  Raw({
    required this.language,
  });

  String language;

  factory Raw.fromJson(Map<String, dynamic> json) => Raw(
    language: json["language"],
  );

  Map<String, dynamic> toJson() => {
    "language": language,
  };
}

enum Method { GET, POST }

final methodValues = EnumValues({
  "GET": Method.GET,
  "POST": Method.POST
});

class Url {
  Url({
    required this.raw,
    required this.protocol,
    required this.host,
    required this.path,
  });

  String raw;
  Protocol protocol;
  List<Host> host;
  List<String> path;

  factory Url.fromJson(Map<String, dynamic> json) => Url(
    raw: json["raw"],
    protocol: protocolValues.map[json["protocol"]],
    host: List<Host>.from(json["host"].map((x) => hostValues.map[x])),
    path: List<String>.from(json["path"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "raw": raw,
    "protocol": protocolValues.reverse[protocol],
    "host": List<dynamic>.from(host.map((x) => hostValues.reverse[x])),
    "path": List<dynamic>.from(path.map((x) => x)),
  };
}

enum Host { NOTEAPI, POPSSOLUTIONS, NET }

final hostValues = EnumValues({
  "net": Host.NET,
  "noteapi": Host.NOTEAPI,
  "popssolutions": Host.POPSSOLUTIONS
});

enum Protocol { HTTPS }

final protocolValues = EnumValues({
  "https": Protocol.HTTPS
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
