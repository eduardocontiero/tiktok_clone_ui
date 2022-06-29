import '../../modules/tabs/models/activity_model.dart';
import '../../modules/tabs/models/message_model.dart';
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

final List<User> friends = [
  User(profileImageUrl: 'https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', username: 'fulano6842'),
  User(profileImageUrl: 'https://www.pngkit.com/png/detail/5-53915_free-png-happy-black-person-png-images-transparent.png', username: 'joao123teste'),
  User(profileImageUrl: 'https://st.depositphotos.com/1269204/1219/i/450/depositphotos_12196477-stock-photo-smiling-men-isolated-on-the.jpg', username: 'reidotiktok'),
  User(profileImageUrl: 'https://img.freepik.com/free-photo/portrait-dark-skinned-cheerful-woman-with-curly-hair-touches-chin-gently-laughs-happily-enjoys-day-off-feels-happy-enthusiastic-hears-something-positive-wears-casual-blue-turtleneck_273609-43443.jpg?w=2000', username: 'tiktak')
];

final List<Activity> activities = [
  Activity(user: friends[0], activityThumb: 'https://images.unsplash.com/photo-1656329824500-5a47495c0fa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
  Activity(user: friends[1], activityThumb: 'https://images.unsplash.com/photo-1656329824500-5a47495c0fa5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
];

final List<Message> messages = [
  Message(user: friends[0], message: 'Hoje vai ter churras em casa mais tarde, aparece lá', messagesCount: '2/15'),
  Message(user: friends[1], message: 'E ai cara, bora tomar uma hoje?', messagesCount: '3/10'),
];





