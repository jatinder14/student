<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>

<form class="user" id="registerform"  method="post" action="" >
    <div class="form-group row">
        <span id="check_mail"></span>
        <input  class="form-control form-control-user " id="email" placeholder="Email Address" name="email"/>
    </div>
    <button type="submit" name="submit" id="submit" class="btn btn-primary btn-user btn-block">
        Register Account
    </button>
</form>
<script>
    $("#registerform").validate({
        rules: {
            email: {
                required: true,
                email: true,
                remote: {
                    url: "registration_validation.php",
                    type: "post",
                }
            },
        },
        messages: {
            email: {
                required: "Please enter email address.",
                email: "Please enter a valid email address.",
                remote: "Email address already registered.",
            },
        },
        submitHandler: function(form) {
            form.submit();
        }
    });
</script>