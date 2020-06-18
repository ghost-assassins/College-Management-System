function manageNav(){
    if(document.getElementById("navbtn").value=='❮'){
        document.getElementById("nav").style.visibility= "hidden";
        document.getElementById("navbtn").value = '❯';
    }
    else if(document.getElementById("navbtn").value=='❯'){
        document.getElementById("navbtn").value = '❮';
        document.getElementById("nav").style.visibility = "visible";
    }
}