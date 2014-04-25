namespace :rinxter do
  desc 'retrieve some data'
  task :retrieve => :environment do
    new_data = RinxterService.list_bouts('7', '2012')
    display_results(new_data, "bouts")
  end

  def display_results(data, resource)
    puts "Retrieved #{data.count} from #{resource} from Rinxter!"
    if data.count > 0
      puts data
    end  
  end
end
