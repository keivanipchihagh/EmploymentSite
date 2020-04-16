// Adjust Centeral Point For Panel
function setCenter() {
    var screenHight = screen.availHeight || document.availHeight || document.documentElement.clientHeight || document.body.clientHeight || window.innerHeight;
    if (window.location.href.includes("register"))
        screenHight *= 0.15;
    else
        screenHight *= 0.2;
    document.getElementsByClassName('panel')[0].style.marginTop = screenHight + 'px';
}

function validate(object) {
    var regexPattern = /^[0-9]+$/;

    switch (object.id) {
        case 'entry_firstname':
        case 'entry_lastname':
            if (regexPattern.test(object.value) === true || object.value.indexOf('-') !== -1 || object.value === '') {
                object.style.outline = '1px solid #ff0000'; // RED
                return false;
            } else
                object.style.outline = '1px solid #5cb85c'; // GREEN
            break;
    }
}

function validateSubmit() {
    if (validate(document.getElementById('entry_firstname')) === false || document.getElementById('entry_firstname').value === '') {
        alert('First Name, has Incorrect format');
        document.getElementById('entry_firstname').value = '';
    } else if (validate(document.getElementById('entry_lastname')) === false || document.getElementById('entry_lastname').value === '') {
        alert('Last Name, has Incorrect format');
        document.getElementById('entry_lastname').value = '';
    } else if (document.getElementById('entry_male_sex').checked === false && document.getElementById('entry_female_sex').checked === false)
        alert('Gender has not been selected');
    else
        document.getElementById('entry_form').submit();
}

function submit() {
    var request = new XMLHttpRequest();
    request.open('GET', 'responder.aspx?Action=submit&FirstName=' + document.getElementById('preview_firstname').value + "&LastName=" + document.getElementById('preview_lastname').value + "&Sex=" + document.getElementById('preview_sex').value + "&MaritalStatus=" + document.getElementById('preview_marital_status').value + "&Education=" + document.getElementById('preview_education').value + "&FavColors=" + document.getElementById('preview_fav_colors').value);
    request.send();

    var success = true;
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            if (request.responseText === 'true') {
                document.getElementById('information').innerHTML = '<h6>Request Has Been Processed Successfully.</h6>';
                document.getElementById('submit').value = "Return Home";
                document.getElementById("submit").setAttribute('onclick', 'window.location = \'default.aspx\'');
                document.getElementById('back').setAttribute('type', 'hidden');

            } else success = false;
        } else success = false;
    };

    if (success === false)
        document.getElementById('information').innerHTML = '<h6>Something went wrong while processing your request; Server might be temporarily down. Sorry for the Inconvenience.</h6>';
}