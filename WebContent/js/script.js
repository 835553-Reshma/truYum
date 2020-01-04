function valid() {
    var title = document.forms["user"]["title"].value;
    if (title == "") {
        alert("Title is required.");
        return false;
    }
    if (title.length < 2 || title.length > 65) {
        alert("Title should have 2 to 65 characters.");
        return false;
    }
    var price = document.forms["user"]["price"].value;
    if (price == "") {
        alert("Price is required.");
        return false;
    }
    if (isNaN(price)) {
        alert("Price has to be a number.");
        return false;
    }
    var dateOfLaunch = document.forms["user"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is required.");
        return false;
    }
    var category = document.forms["user"]["category"].value;
    if (category == "") {
        alert("Select one category.");
        return false;
    }
}
