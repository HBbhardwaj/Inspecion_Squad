import '../contracts/ContractLogin.dart';

class PresenterHome extends HomePres {
  HomeView? homeView;

  PresenterHome(_homePageState);

  @override
  onError(String msg) {
    homeView?.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    homeView?.showSuccess(msg);
    homeView!.goToNextPage();
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
  }
}
