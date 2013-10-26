desc "Reset all code after an iteration"
task :reset do
  `say "Resetting"`
  `git reset --hard`
  `git clean -fxd .`
end

DEFAULT_MINUTES = 5

desc "Run an auto-reset timer constraint"
task :timer, :minutes do |t, args|
  while true
    minutes = args[:minutes] ? args[:minutes].to_i : DEFAULT_MINUTES
    puts "Waiting #{minutes} minutes..."
    while minutes > 0
      sleep(60)
      minutes -= 1
      if minutes > 0
        text = (minutes == 1) ? "minute" : "minutes"
        puts "  #{minutes} #{text} left"
        `say "#{minutes} #{text}"`
      end
    end
    `say "Reset in 10 seconds"`
    sleep(10)
    puts "Resetting..."
    Rake::Task[:reset].invoke
  end
end