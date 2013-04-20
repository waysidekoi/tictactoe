function Lobby(){
  this.game_index = $('.game_index');
  this.user_list = $('.user_list');
  this.syncGames();
  this.syncUsers();
};

Lobby.prototype={
  constructor: Lobby,
  
  renderGames:function(data){
    console.log("renderGames--this=", this);
    this.game_index.html(data);
  },
  renderUsers:function(data){
    console.log("renderUsers--this=", this);
    this.user_list.html(data);
  },
  syncGames:function(){
    var self = this;
    $.get("/games/active", function(response) {
      self.renderGames(response);
      setTimeout(function() {
        self.syncGames.apply(self);
      }, 5000);
    });
  },
  syncUsers: function(){
    var self = this;
    $.get('/users/active', function(response) {
      self.renderUsers(response);
      setTimeout(function() {
        self.syncUsers.apply(self);
      }, 3000);
    });
  }
};
