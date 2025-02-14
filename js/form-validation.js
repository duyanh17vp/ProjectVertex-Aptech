$(function () {        

    $("form[name='modal-form']").validate({
      rules: {
        fullname: "required",
        email: {
          required: true,
          email: true
        },
        phone: {
          required: true,
          minlength: 9,
          maxlength: 11
        }
      },
      messages: {
        fullname: "Enter your fullname.",
        email: "Enter a valid email address.",
        phone: {
          required: "Enter a phone number.",
          minlength: "Your password must be in 9-11 characters long.",
          maxlength: "Your password must be in 9-11 characters long."
        },
      }
    });
});

$(function () {        

    $("form[name='resign-form']").validate({
        rules: {
            fullname: "required",
            Id_card: "required",
            Yearofbirth: "required",
            gender:"required",
            address:"required",
            email: {
              required: true,
              email: true
            },
            phone: {
              required: true,
              minlength: 9,
              maxlength: 11
            }
        },
        messages: {
          fullname:"Enter your fullname.",
          email: "Enter a valid email.",
          Id_card:"Enter your ID card.",
          Yearofbirth:"Enter your Year of birth.",
          gender:"Select gender.",
          address:"Enter your address.",
          phone: {
            required: "Enter a phone number.",
            minlength: "Your password must be in 9-11 characters long.",
            maxlength: "Your password must be in 9-11 characters long."
          },
        }
    });
});