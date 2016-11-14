app.service('UserService', ['$auth', '$rootScope', function($auth, $rootScope){
  var that = this;

  this.user = $auth.user;

  // this.userData = ($auth.validateUser().$$state.value)

  this.validateUser = function () {
    $auth.validateUser().then(function(){
      that.user.loggedin = true;
    });
  };

  this.logout = function (cb) {
    $auth.signOut();
  };

  this.login = function (user, cb) {
    $auth.submitLogin(user).then(function(resp) {
      cb();
    }).catch(function(resp) {
      noty();
    });
  };

  this.signup = function (user, cb) {
    $auth.submitRegistration(user, cb).then(function(resp) {
      cb();
    }).catch(function(resp) {
      noty();
    });
  };

  var authenticateListener = function () {
    var loggedinCb = function () {
      that.user.loggedin = true;
    };

    var loggedoutCb = function () {
      that.user.loggedin = false;
    };

    $rootScope.$on('auth:validation-success', loggedinCb);
    $rootScope.$on('auth:login-success', loggedinCb);
    $rootScope.$on('auth:logout-success', loggedoutCb);
    $rootScope.$on('auth:logout-error', loggedoutCb);
  };

  var init = function () {
    authenticateListener();
    that.validateUser();
  };

  init();
}]);