abstract class BasePresenter {
  Future subscribe();
  Future unsubscribe();

  onError(String msg);
  onSuccess(var payload, String msg);
}
