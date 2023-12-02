$(document).ready(function () {
    $(document).on('click', '.search-close', function () {
        $('.search-box').fadeOut();
    });
    $(document).on('click', '.open-search', function () {
        $('.search-box').fadeIn();
    });
});

function loadnewpage() {
    document.getElementById("disp").innerHTML = '<object type="type/javascript" data="BookCar.aspx" style="height:530px; width:100%" ></object>';
}
function bookcar() {
    document.getElementById("stckk").innerHTML = '<object type="type/javascript" data="BookCar.aspx" style="height:530px; width:100%" ></object>';
}



function openNav() {
    document.getElementById("myNav").style.width = "100%";
}

function on() {
    document.getElementById("myDIV").style.display = "block";
}

function off() {
    document.getElementById("myDIV").style.display = "none";
}



function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}





function AddCars() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="AddCarDetails.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function updatecar() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="UpdateCar.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function srvcdtl() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="AddToCarDropdownDetails.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function vbook() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="ViewBooking.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function feedb() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="ViewFeedback.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function regcust() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="RegisteredUser.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}

function ctypreport() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="CarTypeReport.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function dwisereport() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="DatewiseReport.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}
function pyreport() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="PaymentReport.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}



function bkcar() {
    document.getElementById("stckk").innerHTML = '<object type="type/javascript" data="CustomerBooking.aspx" style="height:650px; width:100%" ></object>';
    document.getElementById("stckk").style.height = "100%";
    document.getElementById("stckk").style.width = "100%";
}


function sendeml() {
    document.getElementById("stck").innerHTML = '<object type="type/javascript" data="SendWishes.aspx" style="height:650px; width:100%" ></object>';
    document.getElementById("stck").style.height = "100%";
    document.getElementById("stck").style.width = "100%";
}




function calcu() {
    document.getElementById("stckk").innerHTML = '<object type="type/javascript" data="RentCalculation.aspx" style="height:700px; width:100%" ></object>';
    document.getElementById("stckk").style.height = "100%";
    document.getElementById("stckk").style.width = "100%";
}

function chngpwd() {
    document.getElementById("stckk").innerHTML = '<object type="type/javascript" data="Changepassword.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stckk").style.height = "100%";
    document.getElementById("stckk").style.width = "100%";
}

function chngpho() {
    document.getElementById("stckk").innerHTML = '<object type="type/javascript" data="ChangePhoto.aspx" style="height:530px; width:100%" ></object>';
    document.getElementById("stckk").style.height = "100%";
    document.getElementById("stckk").style.width = "100%";
}

function Edtprof() {
    document.getElementById("stckk").innerHTML = '<object type="type/javascript" data="EditProfile.aspx" style="height:570px; width:100%" ></object>';
    document.getElementById("stckk").style.height = "100%";
    document.getElementById("stckk").style.width = "100%";
}








function openWin() {
    myWindow = window.open("", "", "width=100, height=100");  // Opens a new window
}


function resizeWin() {
    myWindow.resizeTo(250, 250);                             // Resizes the new window
    myWindow.focus();                                        // Sets focus to the new window
}




$(document).ready(function () {
    $("#btn").click(function () {
        $("#Create").toggle();
    });
});

function togfun() {
    var x = document.getElementById("tog");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
