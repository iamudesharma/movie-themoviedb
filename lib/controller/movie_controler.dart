import 'package:get/get.dart';
import 'package:movie_themoviedb/models/data.dart';
import 'package:movie_themoviedb/models/movie_model.dart';

class MovieController extends GetxController {
  Rxn<MovieModel> nowPlaying = Rxn<MovieModel>();
  Rxn<MovieModel> upcoming = Rxn<MovieModel>();
  Rxn<MovieModel> trending = Rxn<MovieModel>();
  Rxn<PopularData> popular = Rxn<PopularData>();

  Future<MovieModel?> nowPlayingData() async {
    final _nowplaying = await movie('movie/now_playing');

    if (_nowplaying != null) {
      nowPlaying.value = _nowplaying;

      print(nowPlaying.value?.results?.length);
    }
  }

  Future<MovieModel?> upcomingData() async {
    final _upcoming = await movie('movie/upcoming');

    if (_upcoming != null) {
      upcoming.value = _upcoming;

      print(upcoming.value?.results?.length);
    }
  }

  Future<MovieModel?> trendingData() async {
    final _trending = await movie('movie/top_rated');

    if (_trending != null) {
      trending.value = _trending;

      print(trending.value?.results?.length);
    }
  }

  Future<PopularData?> popularData() async {
    final _popular = await moviePopular('movie/popular');

    if (_popular != null) {
      popular.value = _popular;
      print(_popular.page);

      // print(popular.value?.results);
    }
  }

  @override
  void onInit() {
    popularData().whenComplete(
      () => print(
        'value ${popular.value?.results?.length}',
      ),
    );

    // nowPlayingData();
    // upcomingData();

    // trendingData();
    super.onInit();
  }
}
