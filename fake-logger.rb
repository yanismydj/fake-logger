output_file = "log.txt"
sample_log = "sample_logs/access_log"

file = File.open(sample_log, "r")
@data = file.read.split("\n")

while true
  File.open("output/#{output_file}", 'w+') do |file|
    file.puts(@data[rand(@data.length)])
    sleep(rand(10)/10.0)
  end
end
