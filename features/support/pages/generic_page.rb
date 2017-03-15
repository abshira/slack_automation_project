class GenericPages

  def initialize (browser)
    @browser = browser
  end

  def visit
    @browser.goto "https://doesntmatternow.slack.com"
  end

  def element_exists?(el)
    @browser.element(el).exists?
  end

  def url
    @browser.url
  end

  def title
    @browser.title
  end

end
