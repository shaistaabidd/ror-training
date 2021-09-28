class KitchenManagement
  def self.status_update(order_id,status,index)
    File.open('/home/shaista/ruby_projects/ror-training/food_order_management_system/data/order_status', 'r+') do |f|
      old_pos = 0   
      f.each do |line|
        f.pos = old_pos
        start=line[0..line.index('|')]+status.capitalize+"\n"
        f.print line.gsub(index, start)
        old_pos = f.pos
      end
    end
    puts "Status Updated Successfully"
  end
end
