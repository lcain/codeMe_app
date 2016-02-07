$(document).ready(function(){
  
  $('.button').on('click', function(e){
    if (e.currentTarget.id === "signout"){
      $.ajax({
        url: '/users/sign_out',
        method: 'DELETE'
      }).done(function(){
        document.location.href="/"
      })

    } else if (e.currentTarget.id === "signin"){
      var email = $('#email').val();
      var password = $('#password').val();

      var req = {
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        },
        url: "/users/sign_in",
        method: "POST",
        dataType: 'json',
        data: {  
          user: {
            "email": email,
            "password": password,
            "remember_me": 1
          }
        }
      }  
    
      $.ajax(req).done(function(data){
        console.log(data)
        var ret = '';
        $('.login').html(
          '<li class="nav button" id="signout">Log out '+ data.email +'</li>'
        );

        $('.button').on('click', function(e){
          console.log('clicked')
          if (e.currentTarget.id === "signout"){
            $.ajax({
              url: '/users/sign_out',
              method: 'DELETE'
            }).done(function(){
              document.location.href="/"
            })
          }
        });
      })

    } else if (e.currentTarget.id === "signup"){
      console.log('YOU CLICKED ME')
      var email = $('#email').val();
      var password = $('#password').val();
      var hypertext = $('#txt').val();
      var req = {
        headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        },
        url: "/users",
        method: "POST",
        dataType: 'json',
        data: {  
          user: {
            "email": email,
            "password": password,
            "password_confirmation": password,
            "remember_me": 1,
            "hypertext": hypertext
          }
        }
      }
      $.ajax(req).done(function(data){
        console.log(data)
        var ret = '';
        $('.login').html(
          '<li class="nav button" id="signout">Log out '+ data.email +'</li>'
        );

        $('.button').on('click', function(e){
          console.log('clicked')
          if (e.currentTarget.id === "signout"){
            $.ajax({
              url: '/users/sign_out',
              method: 'DELETE'
            }).done(function(){
              document.location.href="/"
            })
          }
        });
      })

    }
  
  });

  // $(document).change(function(){
  //   console.log("document changed")
  //   $('.button').on('click', function(e){
  //     console.log('clicked')
  //     if (e.currentTarget.id === "signout"){
  //       $.ajax({
  //         url: '/users/sign_out',
  //         method: 'DELETE'
  //       }).done(function(){
  //         document.location.href="/"
  //       })
  //     }
  //   });
  // });


});

