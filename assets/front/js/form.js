document.addEventListener("DOMContentLoaded", function () {
    // Your code here
    var batchingPlantSelect = document.getElementById("batchingPlantSelect");
    var otherBatchingPlantInput = document.getElementById("otherBatchingPlantInput");

    batchingPlantSelect.addEventListener("click", function () {
        if (batchingPlantSelect.value === "other") {
            otherBatchingPlantInput.style.display = "block";
        } else {
            otherBatchingPlantInput.style.display = "none";
        }
    });

    var methodPaymentSelect = document.getElementById("methodPaymentSelect");
    var otherMethodPaymentInput = document.getElementById("otherMethodPaymentInput");

    methodPaymentSelect.addEventListener("click", function () {
        if (methodPaymentSelect.value === "other") {
            otherMethodPaymentInput.style.display = "block";
        } else {
            otherMethodPaymentInput.style.display = "none";
        }
    });
});
