class GoogleUserModel{
  String? displayName;
  String? email;

  GoogleUserModel({required this.displayName,required this.email});

  GoogleUserModel.fromjson(Map<String,dynamic> json){
    displayName : json['displayName'];
     email : json['email'];
  } 

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> mapData = new Map<String,dynamic>();

    mapData['displayName'] = this.displayName;
        mapData['email'] = this.email;
   
   return mapData;
  }
}