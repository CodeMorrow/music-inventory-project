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



