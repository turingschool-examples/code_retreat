desc "Reset all code after an iteration"
task :reset do
  `say "Resetting"`
  `git reset --hard`
  `git clean -fxd .`
end

DEFAULT_INTERVAL_MINUTES = 4

desc "Run an auto-reset timer constraint"
task :timer, :minutes do |t, args|
  while true
    minutes = args[:minutes] ? args[:minutes].to_i : DEFAULT_INTERVAL_MINUTES
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

DEFAULT_SESSION_MINUTES = 40

desc "Automatically branch and start a timer for a session"
task :start, :minutes do |t, args|
  dir_name = `pwd`.chomp.split("/").last.gsub(" ","_")
  branch_name = dir_name + "_" + Time.now.strftime("%m_%e_%y_%H%M")
  `git checkout master`
  `git checkout -b #{branch_name}`
  minutes = args[:minutes] ? args[:minutes].to_i : DEFAULT_SESSION_MINUTES
  puts "Running a session for #{minutes} minutes"
  while minutes > 0
    sleep(60)
    minutes -= 1
    if minutes == 1 || (minutes % 5 == 0 && minutes > 0)
      text = (minutes == 1) ? "minute" : "minutes"
      puts "  #{minutes} #{text} left"
      `say "#{minutes} #{text}"`
    end
  end
  `say "Reset in 10 seconds"`
  sleep(10)
  puts "Resetting..."
  `git checkout master`
  `git branch -d #{branch_name}`
end