const btn = document.getElementById('btn');
btn.addEventListener('click', checkAll);

function checkAll(e) {
    if (cvv() && cardNumber() && dateCheck() == true) {

    } else {
        alert("try again!")
        e.preventDefault();
    }
}

function cardNumber() {
    const cardNum = document.getElementById("ccnum").value;
    const regexp = /^5[1-5][0-9]{14}$/;

    if (cardNum.match(regexp)) {
        return true;
    } else {
        return false;
    }
}


function cvv() {
    const cvvNum = document.getElementById("cvv").value;
    const regexp = /^[0-9]{3,4}$/;

    if (cvvNum.match(regexp)) {

        return true;
    } else {
        return false;
    }
}


function dateCheck() {

    const expiryMonth = document.getElementById("expiryMonth").value;
    const expiryYear = document.getElementById("expiryYear").value;

    if (expiryYear < 2022 && expiryMonth <= 2) {
        return false;
    } else {
        return true;
    }
}