abstract class BaseView<T> {
  setPresenter(T t);
  refresh(); // called on a view to refresh state
}
