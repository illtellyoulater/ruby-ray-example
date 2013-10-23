# beware this code is about 2 ys. old.

require 'ray'

#require 'pry'

Ray.game "Hello world!" do
  register { add_hook :quit, method(:exit!) }

  scene :hello do
    @text = text "Hello world!", :angle => 30, :at => [100, 100], :size => 30
    
    # binding.pry

    on :key_press, key(:a) do
		@text.x -= 10
	end

    on :key_press, key(:d) do
  		@text.x += 10
	end

	on :key_press, key(:w) do
  		@text.y -= 10
	end

	on :key_press, key(:s) do
  		@text.y += 10
	end
	

    render { |win| win.draw @text }
  end

  scenes << :hello
end