import 'package:flutter/cupertino.dart';

import '../contracts/ContractLogin.dart';

class PresenterSelectPage extends SelectPagePresenter {
  SelectPageView? selectPageView;

  PresenterSelectPage(SelectPageView view) {
    view.setPresenter(this);
    selectPageView = view;
  }

  @override
  onError(String msg) {
    selectPageView?.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    selectPageView?.showSuccess(msg);
    selectPageView!.goToHomePage();
  }

  @override
  Future subscribe() {
    // TODO: implement subscribe
    throw UnimplementedError();
  }

  @override
  Future unsubscribe() {
    // TODO: implement unsubscribe
    throw UnimplementedError();
  }

  @override
  nextPage() {
    /*   if (user!.isLoginValid()) {
      //user credentials are valid
      //for this tuts we simulate login
      onSuccess('payload from server', 'success');
    } else
      mView!.showError('User credentials not valid, try again'); */
    selectPageView!.goToHomePage();
  }
}
