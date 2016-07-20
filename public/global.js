// ---------------------- Similar Artist Error Message Modal
window.addEventListener("load", function(){

  var button = document.getElementById("artistButton");

  button.addEventListener("click", function(){

  var modal = document.getElementById("errorMessage");

  modal.style.visibility = "visible";
  });
  
});

// ---------------------- Close Similar Artist Modal JS
window.addEventListener("load", function(){

  var button = document.getElementById("artistClose");

  button.addEventListener("click", function(){

  var deleteModal = document.getElementById("errorMessage");

  deleteModal.style.visibility = "hidden";
  });
  
});


// ---------------------- Similar Artist Modal JS
window.addEventListener("load", function(){

  var button = document.getElementById("artistButton");

  button.addEventListener("click", function(){

  var modal = document.getElementById("similarArtists");

  modal.style.visibility = "visible";
  });
  
});

// ---------------------- Close Similar Artist Modal JS
window.addEventListener("load", function(){

  var button = document.getElementById("artistClose");

  button.addEventListener("click", function(){

  var deleteModal = document.getElementById("similarArtists");

  deleteModal.style.visibility = "hidden";
  });
  
});

// ----------------------- Add Song Form Modal
window.addEventListener("load", function(){

  var button = document.getElementById("addSongButton");

  button.addEventListener("click", function(){

  var addModal = document.getElementById("addSongForm");

  addModal.style.visibility = "visible";
  });
  
});

// ----------------------- Close Add Song Form Modal
window.addEventListener("load", function(){

  var button = document.getElementById("addClose");

  button.addEventListener("click", function(){

  var deleteModal = document.getElementById("addSongForm");

  deleteModal.style.visibility = "hidden";
  });
  
});


// ----------------------- Delete Song Form Modal
window.addEventListener("load", function(){

  var button = document.getElementById("deleteSongButton");

  button.addEventListener("click", function(){

  var deleteModal = document.getElementById("deleteSongForm");

  deleteModal.style.visibility = "visible";
  });
  
});

// ----------------------- Close Delete Song Form Modal
window.addEventListener("load", function(){

  var button = document.getElementById("deleteClose");

  button.addEventListener("click", function(){

  var deleteModal = document.getElementById("deleteSongForm");

  deleteModal.style.visibility = "hidden";
  });
  
});