class Post {
  String fullName;
  String eventName;
  String departmentName;
  String designationName;
  String profileImg;
  String locationName;

  Post(
      this.fullName,
      this.eventName,
      this.departmentName,
      this.designationName,
      this.profileImg,
      this.locationName);

  factory Post.fromJson(dynamic json) {
    return Post(json['full_name'] as String, json['event_name'] as String,json['department_name'] as String,
        json['designation_name'] as String,json['profileImg'] as String,json['location_name'] as String);
  }

  @override
  String toString() {
    return '{ ${this.fullName}, ${this.eventName}, ${this.departmentName}, ${this.designationName}, ${this.profileImg}, ${this.locationName} }';
  }

//  new Container(
//  height: 65.0,
//  child: Row(
//  mainAxisAlignment: MainAxisAlignment.start,
//  children: <Widget>[
//
//  CircleAvatar(
//  backgroundColor: Colors.grey,
//  radius: minValue * 3.5,
//  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2020/01/27/10/28/appetite-4796886__340.jpg")),
//  SizedBox(
//  width: minValue * 1.5,
//  ),
//  Expanded(
//  child: Column(
//  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//  crossAxisAlignment: CrossAxisAlignment.start,
//  children: <Widget>[
//  Text(
//  "Randhir",
//  style: Theme.of(context).textTheme.title,
//  ),
//  Text(
//  "9717730020",
//  style: Theme.of(context).textTheme.body1,
//  ),
//  ],
//  )),
//
//  ],)
//
//
//  ),
//  new  Container(
//  height: 65.0,
//  child: Row(
//  mainAxisAlignment: MainAxisAlignment.start,
//  children: <Widget>[
//
//  CircleAvatar(
//  backgroundColor: Colors.grey,
//  radius: minValue * 3.5,
//  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2020/01/27/10/28/appetite-4796886__340.jpg")),
//  SizedBox(
//  width: minValue * 1.5,
//  ),
//  Expanded(
//  child: Column(
//  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//  crossAxisAlignment: CrossAxisAlignment.start,
//  children: <Widget>[
//  Text(
//  "Randhir",
//  style: Theme.of(context).textTheme.title,
//  ),
//  Text(
//  "9717730020",
//  style: Theme.of(context).textTheme.body1,
//  ),
//  ],
//  )),
//
//  ],)
//
//
//  ),
//  new Container(
//  height: 65.0,
//  child: Row(
//  mainAxisAlignment: MainAxisAlignment.start,
//  children: <Widget>[
//
//  CircleAvatar(
//  backgroundColor: Colors.grey,
//  radius: minValue * 3.5,
//  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2020/01/27/10/28/appetite-4796886__340.jpg")),
//  SizedBox(
//  width: minValue * 1.5,
//  ),
//  Expanded(
//  child: Column(
//  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//  crossAxisAlignment: CrossAxisAlignment.start,
//  children: <Widget>[
//  Text(
//  "Randhir",
//  style: Theme.of(context).textTheme.title,
//  ),
//  Text(
//  "9717730020",
//  style: Theme.of(context).textTheme.body1,
//  ),
//  ],
//  )),
//
//  ],)
//
//
//  )
}
