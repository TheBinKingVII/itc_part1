class UserModel {
  String nama;
  String imgUrl;

  UserModel({required this.nama, required this.imgUrl});
  
  static UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      nama: json['nama'] as String,
      imgUrl: json['imgUrl'] as String,
    );
  }
  // static List<UserModel> data = [
  //   UserModel(
  //       nama: 'Bintoro',
  //       imgUrl:
  //           "https://res.cloudinary.com/dk0z4ums3/image/upload/v1661753019/attached_image/inilah-cara-merawat-anak-kucing-yang-tepat-0-alodokter.jpg"),
  //   UserModel(
  //       nama: "Krisna",
  //       imgUrl:
  //           "https://res.cloudinary.com/dk0z4ums3/image/upload/v1661753019/attached_image/inilah-cara-merawat-anak-kucing-yang-tepat-0-alodokter.jpg"),
  // ];
}
