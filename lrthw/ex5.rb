name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White' #ish
hair = 'Brown' 

# extra credit ~> Convert Inches and Pounds to Centimeters and kilos
cm_height = 2.54 * height
kg_weight = 0.453592 * weight


puts "Let's talk about %s." % name
puts "He's %d inches tall, (that's %d centimeters!)" % [height, cm_height]
puts "He's %d punds heavy (that's %d kilos!)." % [weight, kg_weight]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]




