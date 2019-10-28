import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/models/firebase/firebase_accountstate.dart';
import 'package:movie/models/imagemodel.dart';
import 'package:movie/models/media_accountstatemodel.dart';
import 'package:movie/models/moviedetail.dart';

class MovieDetailPageState implements Cloneable<MovieDetailPageState> {
  GlobalKey<ScaffoldState> scaffoldkey;
  int mediaId;
  String bgPic;
  MovieDetailModel detail;
  ImageModel imagesmodel;
  AccountStateModel accountState;
  AnimationController animationController;
  ScrollController scrollController;
  bool hasStreamLink;

  @override
  MovieDetailPageState clone() {
    return MovieDetailPageState()
      ..scaffoldkey = scaffoldkey
      ..detail = detail
      ..bgPic = bgPic
      ..mediaId = mediaId
      ..imagesmodel = imagesmodel
      ..accountState = accountState
      ..animationController = animationController
      ..scrollController = scrollController
      ..hasStreamLink = hasStreamLink;
  }
}

MovieDetailPageState initState(Map<String, dynamic> args) {
  MovieDetailPageState state = MovieDetailPageState();
  state.scaffoldkey = GlobalKey<ScaffoldState>();
  state.mediaId = args['id'];
  state.bgPic = args['bgpic'];
  state.detail = MovieDetailModel.fromParams();
  state.imagesmodel = ImageModel.fromParams(backdrops: [], posters: []);
  state.accountState =
      AccountStateModel.fromParams(favorite: false, watchlist: false);
  state.hasStreamLink = false;
  return state;
}
