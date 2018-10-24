def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "AE3489"
    puts "Welcome back Mr. Bond, Please proceed to Mother's office"
  else

    puts "Access Denied, #{name}"
    puts "This message will self destruct in 5"
    puts "This message will self destruct in 4"
    puts "This message will self destruct in 3"
    puts "This message will self destruct in 2"
    puts "This message will self destruct in 1"
    puts "............"

  end
end

authenticate_agent("006", "James", "AE3489")
