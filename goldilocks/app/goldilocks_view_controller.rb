class GoldilocksViewController < UIViewController

  def loadView
    views = NSBundle.mainBundle.loadNibNamed "interface", owner:self, options:nil
    self.view = views[0]
    @counter = 0
    @view_handle = self.view
  end

  def viewDidLoad
    panic_button = view.viewWithTag 5
    panic_edge_button = view.viewWithTag 4
    learning_button = view.viewWithTag 3
    comfort_edge_button = view.viewWithTag 2
    comfort_button = view.viewWithTag 1

    panic_button.addTarget(self, action:'panicTapped:', forControlEvents:UIControlEventTouchUpInside)
    panic_edge_button.addTarget(self, action:'panicEdgeTapped:', forControlEvents:UIControlEventTouchUpInside)
    learning_button.addTarget(self, action:'learningTapped:', forControlEvents:UIControlEventTouchUpInside)
    comfort_edge_button.addTarget(self, action:'comfortEdgeTapped:', forControlEvents:UIControlEventTouchUpInside)
    comfort_button.addTarget(self, action:'comfortTapped:', forControlEvents:UIControlEventTouchUpInside)
  end
