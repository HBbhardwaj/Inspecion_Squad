import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterCommonList extends CommonListPagePresenter {
  CommonListPageView? commonListPageView;
  PresenterCommonList(CommonListPageView view) {
    view.setPresenter(this);
    commonListPageView = view;
  }

  @override
  gotoNextPage() {
    // TODO: implement gotoNextPage
    throw UnimplementedError();
  }

  @override
  onError(String msg) {
    commonListPageView?.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    commonListPageView?.showSuccess(msg);
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
}
