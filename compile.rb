if ENV.key?('TUE_HOME')
  file_list File.join(ENV['TUE_HOME'], 'compile.rb')
elsif Dir.exist?(File.join(__dir__, 'tue'))
  file_list 'tue/compile.rb', from: :current
end

include_directory 'src'
source_file 'src/tvip_common_pkg.sv'
