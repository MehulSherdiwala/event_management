let parsley = $("#reg-parsley").parsley();
$("#login").on('click', function (){
    let email       = $("#email").val();
    let password    = $("#password").val();

    $.ajax({
        url: 'login.php',
        method: 'post',
        data: {
            email    : email,
            password : password
        },
        success:function (res){
            if (res == 'error'){
                $("#error").text("Invalid Email or Password");
            } else {
                window.location = res;
            }
        }
    })
});

$("#register").on('click', function (){
    parsley.validate();

    if(parsley.isValid()) {
        let email       = $("#reg-email").val();
        let username    = $("#username").val();
        let password    = $("#reg-password").val();
        let contact     = $("#contact").val();
        let address     = $("#address").val();

        $.ajax({
            url: 'registration.php' ,
            method: 'post' ,
            data: {
                email: email ,
                username: username ,
                password: password ,
                contact: contact ,
                address: address
            } ,
            success: function (res) {
                if (res != '') {
                    if (res == 'error'){
                        $("#reg-error").text('User can\'t register.')
                    } else {
                        window.location = res;
                    }
                }
            }
        })

    }
});
