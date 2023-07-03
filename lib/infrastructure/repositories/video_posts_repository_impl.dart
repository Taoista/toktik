import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositryImp implements VideoPostRepository {
  final VideoPostDatadource videosDatasources;

  VideoPostsRepositryImp({
    required this.videosDatasources,
  });
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasources.getTrendingVideosByPage(page);
  }
}
