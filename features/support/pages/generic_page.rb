class GenericPage

  def initialise
    @browser = browser
  end

  def text
    @browser.text
  end

  def find(css_selector)
    @browser.elements css: css_selector
  end

end
