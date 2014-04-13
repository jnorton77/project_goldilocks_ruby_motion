class HelpScreen < PM::WebScreen
  title "DBC Snapshot"

#when present things modally. Think about how close it
  def on_load
    set_nav_bar_button :right, title: "Done", action: :close_help_screen
    # self.view.backgroundColor = UIColor.whiteColor
  end

  # def viewDidLoad
  #   self.view.backgroundColor = UIColor.whiteColor
  # end

#tell webscreen what we want our content to be
  def content
    #return an NSURL
    NSURL.URLWithString('http://dbcgoldilocks.herokuapp.com')
  end

#let webscreen know what it should do when the load fails
  def load_failed
    # App.alert("Failed")
    UIAlert.alloc.initWithTitle('Failed to load',
      message: "Help content failed",
      delegate: nil,
      cancelButtonTitle: 'OK',
      otherButtonTitles: nil
      ).show
  end

  def close_help_screen
      close
  end

end
