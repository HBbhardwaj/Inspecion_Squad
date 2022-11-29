import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterObservedDeficiencies extends ObservedDeficienciesPresenter {
  ObservedDeficienciesView? observedDeficienciesView;
  PresenterObservedDeficiencies(ObservedDeficienciesView view) {
    view.setPresenter(this);
    observedDeficienciesView = view;
  }
  @override
  gotoNextPage() {
    // TODO: implement gotoNextPage
    throw UnimplementedError();
  }

  @override
  gotobackPage() {
    // TODO: implement gotobackPage
    throw UnimplementedError();
  }

  @override
  onError(String msg) {
    // TODO: implement onError
    throw UnimplementedError();
  }

  @override
  onSuccess(payload, String msg) {
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
}
