class AppDelegate < PM::Delegate

	#have zaggle attribute on it so we keep all zaggles stored there

	attr_accessor :zaggles  #so it is not persisted, but that will do for now.


  def on_load(app, options)
  	self.zaggles = [] #initalize zaggles with empty array  #store info in array

    open ZaggstarFeed.new(nav_bar: true)
  end
end
