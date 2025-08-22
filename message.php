<?php
// Connecting to database
// Connecting to domain_chatbot database
$conn = mysqli_connect("localhost", "root", "", "domain chatbot") or die("Database Error");

// Getting user message and cleaning it
$getMesg = mysqli_real_escape_string($conn, trim($_POST['text']));

// Checking if the user's query has a direct match (case-insensitive)
$check_data = "SELECT replies, suggestions FROM chatbot WHERE LOWER(queries) = LOWER('$getMesg')";
$run_query = mysqli_query($conn, $check_data) or die("Error fetching data");

$response = array();

if (mysqli_num_rows($run_query) > 0) {
    // Fetch reply and suggestions
    $fetch_data = mysqli_fetch_assoc($run_query);
    
    $response['reply'] = $fetch_data['replies']; // Main reply

    // Check if there are any suggestions before sending
    if (!empty($fetch_data['suggestions'])) {
        $response['suggestions'] = explode(",", $fetch_data['suggestions']); 
    } else {
        $response['suggestions'] = []; 
    }
} else {
    $response['reply'] = "Sorry, I don't understand you, I can  assist you with the following topics:";
    $response['suggestions'] = ["Attractions", "Accommodation", "Transport"]; 
}

// Return JSON response
echo json_encode($response);
?>


