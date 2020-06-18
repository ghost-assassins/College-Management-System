function showPsw(){
    var x = document.getElementById("passID");
    var y = document.getElementById("showps");
    if(x.type == "text"){
        x.type = "password";
        y.src = "../images/pass.png";
    }
    if(x.type == "password"){
        x.type = "text";
        y.src = "../images/hpass.png";
    }
}

function checkEmail() {

    var email = document.getElementById("unameID");
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
    alert('Please provide a valid email address');
        email.focus;
        return false;
 }
}

function checkPass(){
    var pass = document.getElementById("passID");
    if(pass.length<6){
        alert("Password must be of 6 charecters");
        return false;
    }
}


function selectCourse(){
    window.alert("hi");
    
}