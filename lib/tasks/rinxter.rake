namespace :rinxter do
  desc 'retrieve some data'
  task :retrieve => :environment do
    new_data = RinxterService.list_bouts
    display_results(new_data, "bouts")
  end

  def display_results(data, resource)
    puts "Retrieved #{data.count} new #{resource} from Rave!"
    if data.count > 0
      puts "Here they are:"
      puts data
    end  
  end
end
