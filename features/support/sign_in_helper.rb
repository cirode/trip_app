module SignInHelper
  def sign_out
    visit path_to 'root page'
    if page.has_content?('sign out')
      click_link('sign out')
    end
  end
  
  def sign_in(email, password='password')
    visit path_to("sign in page")
    fill_in 'user_session_email', :with => email
    fill_in 'user_session_password', :with => password
    click_button "Sign in"
  end
end
World(SignInHelper)