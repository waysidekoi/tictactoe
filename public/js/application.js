$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()




  // make sure to call lobby.render() to show page

});

  // lobby = new Lobby();
  // lobby.syncGames();
  // lobby.syncUsers();

function lobbyPage() {
  $(document).ready(function(){

    console.log("first");
    lobby = new Lobby();
    //lobby.render(); 
    console.log("second");
    // window.setInterval(
    //   function(){
    //     lobby.render(); 
    //   },5000
    // );

    // window.setTimeout(
    //   function(){ 
    //     lobby.syncUsers(); 
    //     lobby.syncGames(); 
    //     lobby.render(); 
    //   }, 5000);



  });
};
