class Url {
  //Base URLs
  static const String movieDbBaseUrl = 'https://api.themoviedb.org/3';

  //Authentication URLs
  static const String sessionIdUrl = '/authentication/guest_session/new';
  static String? guestSessionId;

  //Movies URLs
  static const String latestMovie = '/movie/latest';
  static const String nowPlayingMovies = '/movie/now_playing';
  static const String popularMovies = '/movie/popular';
  static const String topRatedMovies = '/movie/top_rated';
  static const String upcomingMovies = '/movie/upcoming';

}
