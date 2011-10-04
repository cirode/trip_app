module SignInHelper
  def sign_out
    visit path_to 'root page'
    if page.has_content?(the_sign_out_text)
      click_link(the_sign_out_text)
    end
  end
  
  def sign_in(email, password='password')
    visit path_to('sign in page')
    fill_in 'user_session_email', :with => email
    fill_in 'user_session_password', :with => password
    click_button the_sign_in_text
  end
end
World(SignInHelper)