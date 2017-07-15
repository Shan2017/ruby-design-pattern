def dir_list
  list = []
  Dir.foreach("./") do |d|
    list << d if File.directory?(d) && !d.start_with?('.')
  end
  list
end

def exec_main_rb dir
  cd dir
  puts dir
  sh "ruby main.rb"
  cd ".."
end

desc "run all tasks"
task :all do
  dir_list.each do |dir|
    puts "*" * 20
    exec_main_rb dir
  end
end

dir_list.each do |dir|
  desc "run \"#{dir}\""
  task dir.to_sym do
    exec_main_rb dir
  end
end

dir_list.each do |dir|
  id = dir.match(/(\d+)\S+/)[1]
  desc "run \"#{dir}\""
  task id.to_sym => dir.to_sym
end

task :default => :all
