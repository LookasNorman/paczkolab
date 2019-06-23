$(document).ready(function() {

    var urlAddress = '../../router.php/address/',
        urlUser = '../../router.php/user/',
        urlSize = '../../router.php/size/',
        urlParcel = '../../router.php/parcel/';

    // Functions which get data from other classes
    var optionRecipient = $('#recipient_option'),
        optionSender = $('#sender_option'),
        optionSize = $('#size_option');

    function showRecipientOption(user) {
        $.each(user, function(){
            var option = $('<option>');

            optionRecipient.append(option);
            option.text(this.name + ' ' + this.surname);
            option.attr('data-id', this.id);
        });
    }

    function showSenderOption(user) {
        $.each(user, function(){
            var option = $('<option>');
                
            optionSender.append(option);
            option.text(this.name + ' ' + this.surname);
            option.attr('data-id', this.id);
        });
    }

     function showSizeOption(size) {
        $.each(size, function(){
            var option = $('<option>');
                
            optionSize.append(option);
            option.text(this.size);
            option.attr('data-id', this.id);
        });
    }

    /// Show available data in select input to add a new Parcel
    /// Send request to various classes to get data
    function loadDataToAddParcel() {

        $.ajax({
            type: 'GET',
            url: urlAddress,
            contentType: 'application/json',
            dataType: 'json'
        }).done(function (response) {
            showAddressOption(response);
        }).fail(function (response) {
            alert( "Wystąpił błąd");
        });

        $.ajax({
            type: 'GET',
            url: urlUser,
            contentType: 'application/json',
            dataType: 'json'
        }).done(function (response) {
            showRecipientOption(response);
            showSenderOption(response);
        }).fail(function (response){
            alert( "Wystąpił błąd");
        });

        $.ajax({
            type: 'GET',
            url: urlSize,
            contentType: 'application/json',
            dataType: 'json'
        }).done(function (response) {
            showSizeOption(response);
        }).fail(function (response) {
            alert( "Wystąpił błąd");
        });
    }

    loadDataToAddParcel();

    // Send new PARCEL to database
    $('#add-parcel input[type=submit]').on('click', function(event) {
        event.preventDefault();
        var recipient = $('#recipient_option option:selected').attr('data-id'),
            sender = $('#sender_option option:selected').attr('data-id'),
            size = $('#size_option option:selected').attr('data-id');
            
        $.ajax({
            type: 'POST',
            url: urlParcel,
            data: {
                recipient_id: recipient,
                sender_id: sender,
                size_id: size
            },
            dataType: 'json'
        }).done(function(response){
            alert('Dodano nową paczkę');
            $('#recipient_option, #sender_option, #size_option').val('');
        }).fail(function(response){
            alert( "Wystąpił błąd");
        });
    });
});