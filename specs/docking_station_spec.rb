# # Part 1
# As a member of the public
# So I can return bikes I’ve hired
# I want to dock my bike at the docking station




it 'docking a bike' do

  # set up
  dockingstation = Dockingstation.new
  bike = Bike.new



  # execute
  val3 = dockingstation.dock(bike)  == [bike]



  # verify
    assert_equals(val3, true)


end
