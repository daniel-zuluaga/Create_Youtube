
import 'package:flutter/material.dart';

class VideoCard{
  String title;
  String duration;
  String views;
  Image thumbnail;
  String nameChannel;

  VideoCard({
    required this.duration, 
    required this.title, 
    required this.views, 
    required this.nameChannel, 
    required this.thumbnail
  });

  String viewsVideo(int views) {
    String viewsString = this.views.toString();
    String value = "";

    if(viewsString.length >= 10){
      value = "B";
      viewsString = viewCompress([11, 12], viewsString);
    }
    else if(viewsString.length >= 7){
      value = "M";
      viewsString = viewCompress([7, 8], viewsString);
    }
    else if(viewsString.length >= 4){
      value = "K";
      viewsString = viewCompress([5, 6], viewsString);
    }

    return viewsString + value;

  }

  String viewCompress(List<int> numbers, String view){
    if(view.length == numbers[0]){
      view = view.substring(0,3);
    }
    else if(view.length == numbers[1]){
      view = view.substring(0,2);
    }
    else {
      String newString = view.substring(0,1);
      view = "$newString.${view.substring(1,2)}";
    }

    return view;
  }

}
