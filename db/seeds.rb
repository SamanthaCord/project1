User.destroy_all

u1 = User.create :name => 'Sam', :email => 'sam@cordandberg.com'
u2 = User.create :name => 'Rachel', :email => 'rachel@cordandberg.com'

Benefit.destroy_all

b1 = Benefit.create :name => 'Stress Relief'
b2 = Benefit.create :name => 'Post Workout'
b3 = Benefit.create :name => 'Pre Workout'
b4 = Benefit.create :name => 'Energy Boost'
b5 = Benefit.create :name => 'Lots of Greens!'
b6 = Benefit.create :name => 'Immunity'

Menu.destroy_all
m1 = Menu.create :name => 'Smashed Avocado', :ingredients => 'Smashed avocado on sourdough toast served with cherry tomatoes, goats feta and rocket. Topped with lemon and pink salt.', :price => '$15.00', :size => 1, :weather => 3
m2 = Menu.create :name => 'Homemade Bone Broth', :ingredients => 'Chicken bone broth slow cooked over 24 hours. This gut healing elixir contains collagen, glutamine, glycine and proline and is rich in minerals that support the immune system.', :price => '(S) $6.00 (L) $10.00', :size => 1, :weather => 1


m2.benefits << b1 << b6
m1.benefits << b2 << b4

u1.menus << m1 << m2
u2.menus << m2
