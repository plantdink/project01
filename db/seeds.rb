User.destroy_all
u1 = User.create :email => 'craigsy@ga.co', :username => 'craigsy', :image => 'app/assets/images/robot-avatar-01.png'
u2 = User.create :email => 'jonsey@ga.co', :username => 'DA-CLAW', :image => 'app/assets/images/claw-avatar-03.png'
u3 = User.create :email => 'gary@ga.co', :username => 'Gary', :image => 'app/assets/images/robot-avatar-02.png'
puts "#{ User.count } users."

Post.destroy_all
p1 = Post.create :title => 'Sum of Two Numbers', :example => 'def sum_eq_n?(arr, n)\r  return true if arr.empty? && n == 0\r  arr.product(arr).reject { |a,b| a == b }.any? { |a,b| a + b == n }\r end', :content => 'When you use this method is like having a loop inside a loop that combines all values in array A with all values in array B.'
p2 = Post.create :title => 'Each with Block', :example => '[1,2,3].each do |n|\r puts n\r end', :content => 'This is a basic For Each method.'
p3 = Post.create :title => 'If / Else', :example => 'n = 20\r if n > 1\r puts "Greater than 1"\r else\r puts "Less than 1"\r end', :content => ' This is an example of If / Else'
p4 = Post.create :title => 'Sample method', :example => '[1, 2, 3].sample', :content => 'Imagine that you need to get a random element from an array. The .sample method gives you that option in an easy & elegant way. This example will give you a random number from the array of 1, 2 & 3.'
p5 = Post.create :title => 'Square the number', :example => 'def sqr(x)\r return x*x\r end', :content => 'A simple method to get the square of a number '
puts "#{ Post.count } posts."

Comment.destroy_all
c1 = Comment.create :content => 'Worst. Code. Ever. You will destroy us all if you continue in this field, please consider manual labour as a future career.'
c2 = Comment.create :content => 'Welcome to your new job at weRtheNet, please get in touch with me as you are just what we are missing at my startup.'
c3 = Comment.create :content => 'I think you have missed a return in there somewhere, not sure where but it just feels like it needs one somewhere'
c4 = Comment.create :content => 'This has an implied return as part of the overall language'
puts "#{ Comment.count } comments."

Tag.destroy_all
m1 = Tag.create :language => 'Ruby'
m2 = Tag.create :language => 'JavaScript'
m3 = Tag.create :language => 'HTML'
m4 = Tag.create :language => 'SQL'
puts "#{ Tag.count } tags."
