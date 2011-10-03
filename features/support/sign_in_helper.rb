module PageHelper
  def sign_out
    visit path_to 'root page'
    if page.has_content?('sign out')
      click_link('sign out')
    end
  end
  
  def sign_in(user, password='password')
    visit path_to("sign in page")
    fill_in 'user_email', :with => user.email
    fill_in 'user_password', :with => password
    click_button "Sign in"
  end
end
World(PageHelper)