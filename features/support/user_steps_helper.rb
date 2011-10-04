module UserStepsHelper  
  def sign_up(email='example@example.com', password='password', password_confirmation='password')
    visit new_user_path
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => password
    fill_in 'user_password_confirmation', :with => password_confirmation
    click_button the_sign_up_text
  end
end
World(UserStepsHelper)