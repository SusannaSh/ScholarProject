function confirmdata() {
    var orderNumber = document.form1.orderNum.value;
var documentType = document.form1.docuType.value;
document.getElementById("confirm").appendChild("<p>Order Number: " + orderNumber + "</p>");
document.getElementById("confirm").appendChild("<p>Document Type: " + documentType + "</p>");
}