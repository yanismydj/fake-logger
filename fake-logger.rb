output_file = "log.txt"
sample_log = "sample_logs/access_log"

file = File.open(sample_log, "r")
@data = file.read.split("\n")

while true
  File.open("output/#{output_file}", 'w+') do |file|
    file.puts(@data[rand(@data.length)])
    sleep_for = (rand(10)/10.0)
    #puts "sleeping for #{sleep_for}"
    sleep(sleep_for)
  end
end
