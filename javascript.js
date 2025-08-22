$(document).ready(function(){
    // Handle suggestion button click
    $(document).on("click", ".suggestion", function(){
        var question = $(this).text();
        $("#data").val(question);
        $("#send-btn").click();
    });

    // Trigger send on 'Enter' key press
    $("#data").keypress(function(e){
        if(e.which == 13 && !e.shiftKey){
            $("#send-btn").click();
        }
    });

    // Send message when send button is clicked
    $("#send-btn").on("click", function(){
        var value = $("#data").val().trim();
        if (value === "") return; // Avoid sending empty messages

        // Append user's message to chat
        var userMsg = '<div class="user-inbox inbox"><div class="msg-header"><p>' + value + '</p></div></div>';
        $(".form").append(userMsg);
        $("#data").val(''); // Clear input field

        // Send the message to the server
        $.ajax({
            url: 'message.php',
            type: 'POST',
            data: { text: value },
            dataType: 'json',
            success: function(response){
                // Display bot's reply
                var botReply = '<div class="bot-inbox inbox"><div class="icon"><i class="fas fa-user"></i></div><div class="msg-header"><p>' + response.reply + '</p></div></div>';
                $(".form").append(botReply);

                // Clear previous suggestions and display new ones
                $(".suggestions").html('');
                if (response.suggestions.length > 0) {
                    var suggestionHTML = '<div class="suggestions">';
                    response.suggestions.forEach(function(suggestion) {
                        suggestionHTML += '<button class="suggestion">' + suggestion + '</button>';
                    });
                    suggestionHTML += '</div>';
                    $(".form").append(suggestionHTML);
                }

                // Scroll to the latest message
                $(".form").scrollTop($(".form")[0].scrollHeight);
            }
        });
    });
});
