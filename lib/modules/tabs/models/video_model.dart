import 'user_model.dart';

class Video {
  final String videoUrl;
  final User postedBy;
  final String caption;
  final String audioName;
  final String likes;
  final String comments;

  
  Video({
    required this.videoUrl,
    required this.postedBy,
    required this.caption,
    required this.audioName,
    required this.likes,
    required this.comments,
  });

  
  
}
