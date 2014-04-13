class AddZaggleForm < PM::FormotionScreen #2PM::WebScreen #FormotionScreen #PM::Screen #PM::FormotionScreen

	title "Create an Account"

#As soon as you create a modal, think about how you are going to close it.
	def on_load
		set_nav_bar_button :left, title: "Cancel", action: :close_screen
    	# self.view.backgroundColor = UIColor.whiteColor

	end


	#Now to wire up the backend we use an on_submit method:

	def on_submit(form) # YOU MUST INCLUDE THE param (form) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		data = form.render #gives us the information from the form

	#Form Validation: Make sure it is at least 20 characters long and they both exist
	#Formotion comes with Bubble wrap?
	# App.alert("message") COMES FROM BUBBLE WRAP

		[['Title', :title], ['Content', :content]].each do |field|
			# if data[field[1]].length < 20
			# 	App.alert("#{field[0]} is too long")
			# 	return
			# end

			if data[field[1]].length == 0
        App.alert("#{field[0]} is required")
			end
		end

	#put the data in an array
		app_delegate.zaggles << data
		close
	end




	def close_screen
		close
	end



	def table_data
		# form = Formotion::Form.new

		{
			sections: [{
				rows: [{
					title: "Title",
					key: :title, #how we access the attribute when we get the form data
					placeholder: "Enter your name",
					type: :string
				}, {
					title: "Content",
					key: :content,
					placeholder: "your_email@email.com",
					type: :string
				 }]
			}, {
				rows: [{
					title: "Publish",
					type: :submit,

				}]
			}]
		}

	end





end













