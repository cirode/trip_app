module UserStepsHelper  
  def sign_up(email='example@example.com', password='password', password_confirmation='password')
    visit path_to("sign up page")
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => password
    fill_in 'user_password_confirmation', :with => password_confirmation
    click_button "Sign up"
  end
end
World(UserStepsHelper)