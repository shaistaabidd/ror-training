module Portal
  def display_portal
    puts "\n\n*********PORTAL***********\n\n\n"
    puts "  Press '1' for Employee  "
    puts "  Press '2' for Kitchen Management  "
    puts "  Press any key -> to exit  "
    puts "\n\n**************************"
  end
  def display_employee_dashboard
    puts "\n\n\n\nPress 1 -> New Order \n"
    puts "Press 2 -> Check Status \n"
    puts "Press 3 -> Message \n"
    puts "Press 4 -> History \n"
    puts "Press any key-> to exit \n"
  end
  def display_kitchen_management_dashboard
    puts "\n\n\n\nPress 1 -> Status Update \n"
    puts "Press 2 -> Message \n"
    puts "Press any key -> to EXIT -> Exit \n"
  end
end