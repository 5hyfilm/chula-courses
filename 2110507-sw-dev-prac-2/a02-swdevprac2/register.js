// Function to validate form inputs
function validateForm(event) {
    // Prevent the form from submitting
    event.preventDefault();

    // Get form elements
    var contactName = document.getElementById('contactName').value.trim();
    var contactPhone = document.getElementById('contactPhone').value.trim();
    var travelerCount = document.getElementById('travelerCount').value.trim();
    var joinLand = document.querySelector('input[name="joinLand"]').checked;

    // Validate Contact Name
    if (contactName.length == 0) {
        alert('ชื่อผู้ติดต่อห้ามเป็นค่าว่าง');
        return false;
    }

    // Validate Contact Phone
    if (contactPhone.length == 0) {
        alert('เบอร์ผู้ติดต่อห้ามเป็นค่าว่าง');
        return false;
    }

    // Validate Traveler Count
    if (travelerCount.length == 0 || isNaN(travelerCount) || travelerCount < 1 || travelerCount > 15) {
        alert('จำนวนผู้ร่วมเดินทางต้องเป็นตัวเลขระหว่าง 1 ถึง 15 เท่านั้น');
        return false;
    }

    // Handle Join Land checkbox
    if (joinLand) {
        var confirmJoinLand = confirm('คุณต้องการซื้อบัตรโดยสารเครื่องบินเองใช่หรือไม่?');
        if (confirmJoinLand) {
            alert('คุณเลือกซื้อบัตรโดยสารเครื่องบินเอง');
        }
    }

    // If all validations pass, refresh the page
    alert('ฟอร์มถูกต้อง');
    window.location.reload();  // Refresh the page
}

// Add event listener to the form on submit
document.querySelector('form').addEventListener('submit', validateForm);
