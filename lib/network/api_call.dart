import '../model/response/news_response_model.dart';
import 'api_manager.dart';
import 'endpoints.dart';

class CallAPI {

  Future<List<Articles>> getNewsList() async {
    try {
      String url = "Endpoints.news";

      var json = await APIManager().getAllCall(url: url);

      NewsResponseModel newsModel = NewsResponseModel.fromJson(json);

      if (newsModel.status == 200) {
        print("if reposne ---  ${newsModel.status} ");
        return newsModel.articles!;
      } else {
        print("else reposne --- ${newsModel.status} ");

        return newsModel.articles!; ;
      }
    } on Exception catch (e) {
      return [];
    }
  }


}
