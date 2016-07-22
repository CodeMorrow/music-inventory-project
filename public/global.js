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

//------------------------- Artist Tab JS

function openTab(evt, tabName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabContent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("artistTab__link");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(tabName).style.display = "flex";
    evt.currentTarget.className += " active";
}


window.addEventListener("load", function(){

var albumstab = document.getElementById("artistTab__albums");
var trackstab = document.getElementById("artistTab__tracks");
var artiststab = document.getElementById("artistTab__artists");
var albumscontent = document.getElementById("topAlbums");
var trackscontent = document.getElementById("topTracks");
var artistscontent = document.getElementById("similarArtists");

albumstab.addEventListener("click", function(){
  albumstab.style.background = "grey";
  trackstab.style.background = "white";
  artiststab.style.background = "white";
  albumscontent.style.visibility = "visible";
  trackscontent.style.visibility = "hidden";
  artistscontent.style.visibility = "hidden";
});

trackstab.addEventListener("click", function(){
  albumstab.style.background = "white";
  trackstab.style.background = "grey";
  artiststab.style.background = "white";
  trackscontent.style.visibility = "visible";
  albumscontent.style.visibility = "hidden";
  artistscontent.style.visibility = "hidden";
});

artiststab.addEventListener("click", function(){
  albumstab.style.background = "white";
  trackstab.style.background = "white";
  artiststab.style.background = "grey";
  artistscontent.style.visibility = "visible";
  albumscontent.style.visibility = "hidden";
  trackscontent.style.visibility = "hidden";
});




})


