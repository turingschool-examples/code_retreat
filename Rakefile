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
    while minutes > 0
      sleep(60)
      minutes -= 1
      puts "  #{minutes} minutes left"
    end
    `say "Reset in 10 seconds"`
    puts "Resetting..."
    Rake::Task[:reset].invoke
  end
end