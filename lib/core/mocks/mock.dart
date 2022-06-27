import '../../modules/tabs/models/user_model.dart';
import '../../modules/tabs/models/video_model.dart';

User currentUser = User(username: 'eduardo_contiero', profileImageUrl: 'https://picsum.photos/id/1062/400/400');

User demoUser1 = User(
  username: 'user_1',
  profileImageUrl: 'assets/user1.jpg'
);

User demoUser2 = User(
  username: 'user_2',
  profileImageUrl: 'assets/user2.jpg'
);

User demoUser3 = User(
  username: 'user_3',
  profileImageUrl: 'assets/user3.jpg'
);

final List<Video> videos = [
  Video(videoUrl: 'assets/videos/video1.mp4', postedBy: demoUser1, caption: 'caption', audioName: 'audioName', likes: '12.5k', comments: '123', shares: '300'),
  Video(videoUrl: 'assets/videos/video2.mp4', postedBy: demoUser2, caption: 'caption', audioName: 'audioName', likes: '12.5k', comments: '123', shares: '300'),
  Video(videoUrl: 'assets/videos/video3.mp4', postedBy: demoUser3, caption: 'caption', audioName: 'audioName', likes: '12.5k', comments: '123', shares: '300'),
];


