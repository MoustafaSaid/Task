
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class ProductResponseModel extends Equatable {
  int status;
  String message;
  List<ProductsModel> products;

  ProductResponseModel(this.status, this.message, this.products);
  @override
  List<Object?> get props => [status,message,products];

factory ProductResponseModel.fromJson(Map<String, dynamic> json) => _$ProductResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseModelToJson(this);
}
@JsonSerializable()
class ProductsModel extends Equatable {
  int id;
  String company;
  String name;
  String type;
  String price;
  String image;
  String description;


  ProductsModel(
      this.id,
      this.company,
      this.name,
      this.type,
      this.price,
      this.image,
      this.description);

  @override
  List<Object?> get props => [id,company,name,type,price,image,description];

  factory ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);
}

@JsonSerializable()
class HelpResponseModel extends Equatable {
  int status;
  String message;
  List<HelpModel> help;
  HelpResponseModel(this.status, this.message, this.help);

  @override
  List<Object?> get props => [status,message,help];


  factory HelpResponseModel.fromJson(Map<String, dynamic> json) => _$HelpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HelpResponseModelToJson(this);
}
@JsonSerializable()
class HelpModel extends Equatable {
  int id;
  String question;
  String answer;

  HelpModel(this.id, this.question, this.answer);
  @override
  List<Object?> get props => [id,question,answer];

  factory HelpModel.fromJson(Map<String, dynamic> json) => _$HelpModelFromJson(json);

  Map<String, dynamic> toJson() => _$HelpModelToJson(this);
}
@JsonSerializable()
class OtpResponseModel extends Equatable {
  OtpResponseModel(this.status, this.message, this.account);
  @override
  List<Object?> get props => [status,message,account];
  int status;
  String message;
  AccountModel account;

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) => _$OtpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtpResponseModelToJson(this);
}
@JsonSerializable()
class AccountModel extends Equatable {
  int id;
  String name;
  String phone;

  AccountModel(this.id, this.name, this.phone);

  @override
  List<Object?> get props => [id,name,phone];


  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
@JsonSerializable()
class OtpRequestModel extends Equatable {

  String code;
  int phone;

  OtpRequestModel(this.code, this.phone);

  @override
  List<Object?> get props => [code,phone];

  factory OtpRequestModel.fromJson(Map<String, dynamic> json) => _$OtpRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$OtpRequestModelToJson(this);
}
@JsonSerializable()
class VerifyPhoneRequestModel extends Equatable {
  int phone;
  String name;
  VerifyPhoneRequestModel(this.phone, this.name);

  @override
  List<Object?> get props => [phone,name];


  factory VerifyPhoneRequestModel.fromJson(Map<String, dynamic> json) => _$VerifyPhoneRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyPhoneRequestModelToJson(this);
}
@JsonSerializable()
class VerifyPhoneResponseModel extends Equatable {
  int status;
  String message;
  String code;

  VerifyPhoneResponseModel(this.status, this.message, this.code);

  @override
  List<Object?> get props => [status,message,code];


  factory VerifyPhoneResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyPhoneResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyPhoneResponseModelToJson(this);
}
@JsonSerializable()
class ErrorModel extends Equatable {
  String? messageEN;
  String? messageAR;
  int? code;

  @override
  List<Object?> get props => [messageEN,messageAR,code];
  ErrorModel(this.messageEN, this.messageAR, this.code);

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}