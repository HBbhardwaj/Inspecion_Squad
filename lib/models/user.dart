class User {
  var firstname;
  var lastname;
  var email;
  var password;

  bool isLoginValid() {
    //this is where you write your login to validate user login credentials
    //for this tutorials i'll write something simple

    return email.length > 5 && password.length >= 1;
  }
}
