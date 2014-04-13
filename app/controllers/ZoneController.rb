class ZoneController < UIViewController

  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Zone', image:nil, tag:1)
    end
    self
  end

  def viewDidLoad
    super
    right_button = UIBarButtonItem.alloc.initWithTitle("About Us", style: UIBarButtonItemStyleBordered, target:self, action:'push')
    self.navigationItem.rightBarButtonItem = right_button

    #panic button
    @panicButton = UIButton.alloc.initWithFrame(CGRectMake(20, 100, 280, 50))
    @panicButton.setTitle("Panic Zone", forState:UIControlStateNormal)
    @panicButton.backgroundColor = UIColor.redColor
    @panicButton.addTarget(self, action:"panic_tapped", forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@panicButton)

    #panic_edge button
    @panicEdgeButton = UIButton.alloc.initWithFrame(CGRectMake(20, 175, 280, 50))
    @panicEdgeButton.setTitle("Panic Edge Zone", forState:UIControlStateNormal)
    @panicEdgeButton.backgroundColor = UIColor.orangeColor
    @panicEdgeButton.addTarget(self, action:"panic_edge_tapped", forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@panicEdgeButton)

    #learning button
    @learningButton = UIButton.alloc.initWithFrame(CGRectMake(20, 250, 280, 50))
    @learningButton.setTitle("Learning Zone", forState:UIControlStateNormal)
    @learningButton.backgroundColor = UIColor.greenColor
    @learningButton.addTarget(self, action:"learning_tapped", forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@learningButton)

    #comfort edge button
    @comfortEdgeButton = UIButton.alloc.initWithFrame(CGRectMake(20, 325, 280, 50))
    @comfortEdgeButton.setTitle("Comfort Edge", forState:UIControlStateNormal)
    @comfortEdgeButton.backgroundColor = UIColor.orangeColor
    @comfortEdgeButton.addTarget(self, action:"comfort_edge_tapped", forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@comfortEdgeButton)

    #comfort button
    @comfortButton = UIButton.alloc.initWithFrame(CGRectMake(20, 400, 280, 50))
    @comfortButton.setTitle("Comfort", forState:UIControlStateNormal)
    @comfortButton.backgroundColor = UIColor.redColor
    @comfortButton.addTarget(self, action:"comfort_tapped", forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(@comfortButton)
  end

  def push
    new_controller = ZoneController.alloc.initWithNibName(nil, bundle: nil)
    self.navigationController.pushViewController(new_controller, animated: true)
  end

  def panic_tapped

    data = {answer: "panic"}

    BubbleWrap::HTTP.post("http://dbcgoldilocks.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        # message = ["Hey Dan, Shut the fuck up.", "Ian, you're a real cunt.", "John. Please. Fist yourself. Please.", "Devin. Suicide?"].sample
        App.alert("response was ok!")
      else
         App.alert("Fail")
      end
    end
  end


    def panic_edge_tapped
    data = {answer: "panic edge"}
    BubbleWrap::HTTP.post("http://dbcgoldilocks.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("response was ok!")
      else
         App.alert("Fail")
      end
    end
  end

    def learning_tapped
    data = {answer: "learning"}
    BubbleWrap::HTTP.post("http://dbcgoldilocks.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("response was ok!")
      else
         App.alert("Fail")
      end
    end
  end



    def comfort_edge_tapped
    data = {answer: "comfort edge"}
    BubbleWrap::HTTP.post("http://dbcgoldilocks.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("response was ok!")
      else
         App.alert("Fail")
      end
    end
  end



    def comfort_tapped
    data = {answer: "comfort"}
    BubbleWrap::HTTP.post("http://dbcgoldilocks.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("response was ok!")
      else
         App.alert("Fail")
      end
    end
  end
end
