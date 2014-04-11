class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
        # UIScreen describes the display the app is running on.
    app_frame = UIScreen.mainScreen.applicationFrame
    @window = UIWindow.alloc.initWithFrame(app_frame)
    # This is the special method of UIWindow which lets them exist outside of a parent view
    @window.makeKeyAndVisible

#panic button
    @panicButton = UIButton.alloc.initWithFrame(CGRectMake(20, 50, 280, 50))
    @panicButton.setTitle("Panic Zone", forState:UIControlStateNormal)
    @panicButton.backgroundColor = UIColor.redColor
    @window.addSubview(@panicButton)
    @panicButton.addTarget(self, action:"panic_tapped", forControlEvents:UIControlEventTouchUpInside)

#panic_edge button
    @panicEdgeButton = UIButton.alloc.initWithFrame(CGRectMake(20, 125, 280, 50))
    @panicEdgeButton.setTitle("Panic Edge Zone", forState:UIControlStateNormal)
    @panicEdgeButton.backgroundColor = UIColor.orangeColor
    @window.addSubview(@panicEdgeButton)
    @panicEdgeButton.addTarget(self, action:"panic_edge_tapped", forControlEvents:UIControlEventTouchUpInside)

#learning button
    @learningButton = UIButton.alloc.initWithFrame(CGRectMake(20, 200, 280, 50))
    @learningButton.setTitle("Learning Zone", forState:UIControlStateNormal)
    @learningButton.backgroundColor = UIColor.greenColor
    @window.addSubview(@learningButton)
    @learningButton.addTarget(self, action:"learning_tapped", forControlEvents:UIControlEventTouchUpInside)

#comfort edge button
    @comfortEdgeButton = UIButton.alloc.initWithFrame(CGRectMake(20, 275, 280, 50))
    @comfortEdgeButton.setTitle("Comfort Edge", forState:UIControlStateNormal)
    @comfortEdgeButton.backgroundColor = UIColor.orangeColor
    @window.addSubview(@comfortEdgeButton)
    @comfortEdgeButton.addTarget(self, action:"comfort_edge_tapped", forControlEvents:UIControlEventTouchUpInside)


#comfort button
    @comfortButton = UIButton.alloc.initWithFrame(CGRectMake(20, 350, 280, 50))
    @comfortButton.setTitle("Comfort", forState:UIControlStateNormal)
    @comfortButton.backgroundColor = UIColor.redColor
    @window.addSubview(@comfortButton)
    @comfortButton.addTarget(self, action:"comfort_tapped", forControlEvents:UIControlEventTouchUpInside)


    true
  end

  def panic_tapped

    data = {answer: "panic"}

    BubbleWrap::HTTP.post("http://dbcgoldilocks.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      puts "response = #{response}"
      puts "response.body = #{response.body.to_str rescue ''}"
      puts "response.error_message = #{response.error_message}"
      puts "response.status_code = #{response.status_code.to_s rescue ''}"
      puts "response ok = #{response.ok?}"

      if response.ok?
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




















