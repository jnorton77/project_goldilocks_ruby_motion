class GoldilocksViewController < UIViewController

  def loadView
    views = NSBundle.mainBundle.loadNibNamed "interface", owner:self, options:nil
    self.view = views[0]
    @counter = 0
    @view_handle = self.view
  end
