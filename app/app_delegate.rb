class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

# UIScreen describes the display the app is running on.
    app_frame = UIScreen.mainScreen.bounds
    @window = UIWindow.alloc.initWithFrame(app_frame)

# This is the special method of UIWindow which lets them exist outside of a parent view
    @window.makeKeyAndVisible
    zone_controller = ZoneController.alloc.init
    other_controller = OtherController.alloc.init

    tab_controller = UITabBarController.alloc.init

    tab_controller.viewControllers = [zone_controller, other_controller]
    nav_controller = UINavigationController.alloc.initWithRootViewController(tab_controller)
    @window.rootViewController = nav_controller



  end
end




















