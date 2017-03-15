class LoginPage < GenericPages

	def set_email(email)
		@browser.text_field(id: 'email').set email
	end

	def set_password(password)
	   @browser.text_field(id: 'password').set password
	end

	def submit
	  @browser.button(id: "signin_btn").click
	end

  def login(email, password)
    set_email(email)
    set_password(password)
    submit
  end

  def error?
    @browser.p(class: 'alert_info').exists?
  end

  def logout
    @browser.div(id: 'team_menu').click
    @browser.li(id: 'logout').click
  end
end
