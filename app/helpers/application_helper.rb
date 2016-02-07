module ApplicationHelper



  def funkynav
    nav = ''

    nav += '<div class="login">'
    if user_signed_in?
      nav += '<li class="nav button" id="signout">' + "Log out #{ current_user.email }" + '</li>'
    else
      nav += '<p class="nav">Email:</p>' + '<input type="text" id="email" class="nav">'
      nav += '<p class="nav">Password:</p>' + '<input type="password" id="password" class="nav">'
      nav += '<li class="nav button" id="signin">' + "Sign in" + '</li>'
      nav += '<li class="nav button" id="singles">' + "Sign up" + '</li>' 
    end
    nav += '</div>'

    nav

  end


end
