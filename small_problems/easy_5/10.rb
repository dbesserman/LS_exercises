def print_in_box(msg)
  message_size = msg.size
  puts "+-#{ '-' * message_size }-+"
  puts "|#{ ' ' * ( message_size + 2 ) }|"
  puts "| #{msg} |"
  puts "|#{ ' ' * ( message_size + 2 ) }|"
  puts "+-#{ '-' * message_size }-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
