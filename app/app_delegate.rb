class AppDelegate < PM::Delegate

  include BW::KVO
  attr_accessor :user

  # def application(application, didFinishLaunchingWithOptions:launchOptions)
  #   @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  #   @user = User.new
  #   @user.id = "123"
  #   @user.name = "Clay"
  #   @user.email = "clay@mail.com"
  #   @user_controller = UserController.alloc.initWithUser(@user)
  #   @nav_controller = UINavigationController.alloc.initWithRootViewController(@user_controller)
  #   @window.rootViewController = @nav_controller
  #   @window.makeKeyAndVisible
  #   true
  # end

	#have zaggle attribute on it so we keep all zaggles stored there

	# attr_accessor :zaggles  #so it is not persisted, but that will do for now.

  # include BW::KVO
  # attr_accessor :user

# def application(application, didFinishLaunchingWithOptions:launchOptions)



#     # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
#     # @window.makeKeyAndVisible

#     # @name_label = UILabel.alloc.initWithFrame([[0, 0], [100, 30]])
#     # @name_label.backgroundColor = UIColor.whiteColor
#     # @window.addSubview(@name_label)

#     # @email_label = UILabel.alloc.initWithFrame([[0, @name_label.frame.size.height + 10], @name_label.frame.size])
#     # @email_label.backgroundColor = UIColor.whiteColor
#     # @window.addSubview(@email_label)

#     # @id_label = UILabel.alloc.initWithFrame([[0, @email_label.frame.origin.y + @email_label.frame.size.height + 10], @name_label.frame.size])
#     # @id_label.backgroundColor = UIColor.whiteColor
#     # @window.addSubview(@id_label)

#     self.user = User.new

#     ["name", "id", "email"].each { |prop|
#       observe(self.user, prop) do |old_value, new_value|
#         instance_variable_get("@#{prop}_label").text = new_value
#       end
#     }

#     true
#   end


  def on_load(app, options)
  	# self.zaggles = [] #initalize zaggles with empty array  #store info in array

    open ZaggstarFeed.new(nav_bar: true)
      # open FuckingForm.new(nav_bar: true)


    self.user = User.new

    ["name", "id", "email"].each { |prop|
      observe(self.user, prop) do |old_value, new_value|
        instance_variable_get("@#{prop}_label").text = new_value
      end
    }

  end





  # attr_accessor :todoListController

  # def application(application, didFinishLaunchingWithOptions:launchOptions)
  #   @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

  #   self.todoListController = TodoListController.new

  #   navController = UINavigationController.alloc.initWithRootViewController(self.todoListController)
  #   @window.rootViewController = navController

  #   @window.makeKeyAndVisible
  #   true
  # end






end
