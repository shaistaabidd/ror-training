#Write a ruby program to remove all Student data from file
def remove_file_data
  File.open('/home/shaista/ror-training/month-1/Twenty_Problems_Ruby/text_file', 'w') {|file| file.truncate(0) }
end
remove_file_data
