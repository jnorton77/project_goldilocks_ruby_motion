class OtherController < UIViewController


	def init
      if super
        self.tabBarItem = UITabBarItem.alloc.initWithTitle('About', image:nil, tag:1)
      end
      self
  	end

  def viewDidLoad
    super
      self.view.backgroundColor = UIColor.blackColor
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('About', image:nil, tag:1)

      @contentField = UILabel.alloc.initWithFrame(CGRectMake(50, 110, 200, 500))
      @contentField.backgroundColor = UIColor.whiteColor
      @contentField.text = "About Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us ContentAbout Us Content"
      @contentField.lineBreakMode = true
      @contentField.sizeToFit

      # @contentField.returnKeyType = UIReturnKeyDone
      # @contentField.delegate = self
      self.view.addSubview(@contentField)



  end


end
