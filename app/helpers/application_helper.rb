module ApplicationHelper



  def funkynav
    nav = ''

    nav += '<div class="login">'
    if user_signed_in?
      nav += '<li class="nav button" id="signout">' + "Log out #{ current_user.email }" + '</li>'
    else
      nav += '<nav class="nav">Email:</nav>' + '<input type="text" id="email" class="nav">'
      nav += '<nav class="nav">Password:</nav>' + '<input type="password" id="password" class="nav">'
      nav += '<li class="nav button" id="signin">' + "Sign in" + '</li>'
      nav += '<li class="nav button" id="signup">' + "Sign up" + '</li>' 
    end
    nav += '</div>'

    nav

  end


end
