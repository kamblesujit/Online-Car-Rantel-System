//Login Validation

function loginval() {
    var usid, pwd, emlexpr,pincode;
    usid = document.getElementById("txtusrid").value;
    pwd = document.getElementById("txtpwd").value;
    emlexpr = document.getElementById("txtusrid").value;
    pincode="^\d{3}\s?\d{3}$";

}

//Registration Validation
function regis() {
    var name, mobile, gender, addrs, eml, usid, pwd, cpwd;
    name = document.getElementById("txtnm").value;
    mobile = document.getElementById("txtmob").value;
    gender = document.getElementById("RadioButtonList1").value;
    addrs = document.getElementById("txtaddr").value;
    eml = document.getElementById("txtemlid").value;
    usid = document.getElementById("txtusrid").value;
    pwd = document.getElementById("txtpwd").value;
    cpwd = document.getElementById("txtcpwd").value;

    if (name == null || name == '' && mobile == null || mobile == '' && gender == null || gender == '' && addrs == null || addrs == '' && eml == null || eml == '' && usid == null || usid == '' && pwd == null || pwd == '' && cpwd == null || cpwd == '') {
        alert("Pls. Do Not Blank the fields");
        return false;
    }

}