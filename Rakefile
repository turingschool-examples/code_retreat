desc "Reset all code after an iteration"
task :reset do
  `git reset --hard`
  `git clean -fxd .`
end

desc "Run an auto-reset timer constraint"
task :timer do
  minutes = 2
  while true
    puts "Waiting #{minutes} minutes..."
    sleep(60)
    while minutes > 0
      minutes -= 1
      puts "  #{minutes} left"
      sleep(60)
    end
    puts "Resetting..."
    Rake::Task[:reset].invoke
  end
end