class HomeViewController < UIViewController

  def viewDidLoad
    # super
      view.backgroundColor = UIColor.redColor

      button_width = 80
      button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      button.setTitle(color_text, forState:UIControlStateNormal)
      button.setTitleColor(color, forState:UIControlStateNormal)
      button.sizeToFit
      button.frame = [ [30 + index*(button_width + 10), @label.frame.origin.y + button.frame.size.height + 30],
      [80, button.frame.size.height]]
      button.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin
      button.addTarget(self, action:"tap_#{color_text}", forControlEvents:UIControlEventTouchUpInside)
      self.view.addSubview(button)
      # y = 10

      # @pushme = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      # @pushme.frame = [[10, y], [view.frame.size.width-20, 44]]
      # @pushme.setTitle("Panic", forState:UIControlStateNormal)
      # @pushme.setTitleColor(UIColor.blackColor, forState:UIControlStateNormal)
      # @pushme.backgroundColor = UIColor.clearColor
      # @pushme.addTarget(self, action: 'pushed', forControlEvents:UIControlEventTouchUpInside)
      # view.addSubview(@pushme)
      # y += @pushme.frame.size.height
  end

  def pushed
    puts "pushed!"
  end


  # extend IB
  # super

# define ib outlet
  # outlet :title, UILabel # @property IBOutlet UILabel * title;
  # outlet :untyped_label  # @property IBOutlet id untyped_label;

  # # define ib outlet collection
  # outlet_collection :labels, UILabel # @property IBOutletCollection(UILabel) NSArray * labels;

  # # define ib action
  # def someAction sender
  # end


  # def loadView
  #   views = NSBundle.mainBundle.loadNibNamed "main", owner:self, options:nil
  #   self.view = views[0]
  # end

  # def loadView
  #   views = NSBundle.mainBundle.loadNibNamed "main", owner:self, options:nil
  #   self.view = views[0]
  #   @counter = 0
  #   @view_handle = self.view
  # end

  # def viewDidLoad
  #   # nav_bar = view.viewWithTag 0
  #   @question_label = view.viewWithTag 1
  #   panic_button = view.viewWithTag 2
  #   panic_edge_button = view.viewWithTag 3
  #   learning_button = view.viewWithTag 4
  #   comfort_edge_button = view.viewWithTag 5
  #   comfort_button = view.viewWithTag 6

  #   panic_button.addTarget(self, action:'panicTapped:', forControlEvents:UIControlEventTouchUpInside)
  #   panic_edge_button.addTarget(self, action:'panicEdgeTapped:', forControlEvents:UIControlEventTouchUpInside)
  #   learning_button.addTarget(self, action:'learningTapped:', forControlEvents:UIControlEventTouchUpInside)
  #   comfort_edge_button.addTarget(self, action:'comfortEdgeTapped:', forControlEvents:UIControlEventTouchUpInside)
  #   comfort_button.addTarget(self, action:'comfortTapped:', forControlEvents:UIControlEventTouchUpInside)
  # end

  # def panicTapped(sender)

  # end

  # def panicEdgeTapped(sender)

  # end

  # def learningTapped(sender)

  # end

  # def comfortEdgeTapped(sender)

  # end

  # def comfortTapped(sender)

  # end
end
