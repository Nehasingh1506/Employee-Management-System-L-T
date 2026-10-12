document.addEventListener("DOMContentLoaded", function () {

    console.log("Employee Management System loaded successfully.");

    // Delete confirmation
    const deleteButtons = document.querySelectorAll(".delete-btn");

    deleteButtons.forEach(function (button) {

        button.addEventListener("click", function (event) {

            const confirmed = confirm(
                "Are you sure you want to delete this employee?"
            );

            if (!confirmed) {
                event.preventDefault();
            }

        });

    });

});