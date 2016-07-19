window.addEventListener("load", function(){

  var button = document.getElementById("artistButton");

  button.addEventListener("click", function(){

  var modal = document.getElementById("errorMessage");

  modal.style.visibility = "visible";
  });
  
});

window.addEventListener("load", function(){

  var button = document.getElementById("artistButton");

  button.addEventListener("click", function(){

  var modal = document.getElementById("similarArtists");

  modal.style.visibility = "visible";
  });
  
});

window.addEventListener("load", function(){

  var button = document.getElementById("addSongButton");

  button.addEventListener("click", function(){

  var addModal = document.getElementById("addSongForm");

  addModal.style.visibility = "visible";
  });
  
});

window.addEventListener("load", function(){

  var button = document.getElementById("deleteSongButton");

  button.addEventListener("click", function(){

  var deleteModal = document.getElementById("deleteSongForm");

  deleteModal.style.visibility = "visible";
  });
  
});