# # Part 1
# As a member of the public
# So I can return bikes I’ve hired
# I want to dock my bike at the docking station



# Part 2
# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I’d like docking stations not to release bikes when there are none available.
#
# As a system maintainer,
# So that I can control the distribution of bikes,
# I’d like docking stations not to accept more bikes than their capacity, which is by default 20.

it 'docking a bike : ' do
  # set up
  dockingstation = Dockingstation.new
  bike = Bike.new
  # execute
  val3 = dockingstation.dock(bike)  == [bike]
  # verify
    assert_equals(val3, true)
end
# As a member of the public,
# So that I can use a bike,
# I’d like a docking station to release a bike.

it 'releasing a bike : ' do

# set up
dockingstation = Dockingstation.new
bike = Bike.new
dockingstation.dock(bike)  == [bike]


# execute
val4 = dockingstation.release(bike)


# verify
  assert_equals(val4, bike)
end




# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I’d like docking stations not to release bikes when there are none available.


it 'not releasing a bike' do

#set up
dockingstation = Dockingstation.new
bike = Bike.new
dockingstation.dock(bike)  == [bike]
dockingstation.release(bike)


#execute

val5 = dockingstation.notrelease(bike)
p "puts value 5 #{val5}"

#verify
assert_equals(val5, true)

end
