<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Character encoding and viewport settings for responsiveness -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">

    <!-- Title of the page shown in browser tab -->
    <title>Customer Support for Cork Tourism</title>

    <!-- Links to other files -->
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>    
    <script src="javascript.js"></script>
</head>
<body>
    <!-- Main wrapper for the chat interface -->
    <div class="wrapper">
        
        <!-- Title section of the chat -->
        <div class="title">Customer Support - Cork Tourism</div>

        <!-- The form where messages are displayed -->
        <div class="form">

            <!-- Bot's first message (welcome message) -->
            <div class="bot-inbox inbox">
                <div class="icon">
                    <i class="fas fa-user"></i> <!-- Icon for the bot -->
                </div>
                <div class="msg-header">
                    <p>Hello there! How can I help you today?</p> <!-- Bot's message -->
                </div>
            </div>

            <!-- Suggested options for the user to click on -->
            <div class="suggestions">
                <button class="suggestion">Attractions</button>
                <button class="suggestion">Accommodation</button>
                <button class="suggestion">Transport</button>
            </div>
        </div>

        <!-- Input area for user to type their message -->
        <div class="typing-field">
            <div class="input-data">
                <!-- Text input field for typing a message -->
                <input id="data" type="text" placeholder="Type something here..." required>
                
                <!-- Button to send the typed message -->
                <button id="send-btn">Send</button>
            </div>
        </div>
    </div>
</body>
</html>
