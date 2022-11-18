import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterHomePage extends HomePagePresenter {
  HomePageView? homePageView;
  PresenterHomePage(HomePageView view) {
    view.setPresenter(this);
    homePageView = view;
  }

  int demiIndex = 0;

  @override
  goToInspectionPage() {
    homePageView!.goToInspectionPage();
  }

  @override
  onError(String msg) {
    homePageView?.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    homePageView?.showSuccess(msg);

    // TODO: implement onSuccess
    throw UnimplementedError();
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
  gotoBackPage() {
    // TODO: implement gotoBackPage
    throw UnimplementedError();
  }
}
