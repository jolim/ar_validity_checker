task ar_validity_checker: :environment do
  dev_null = Logger.new("/dev/null")
  Rails.logger = dev_null
  ActiveRecord::Base.logger = dev_null
  
  Rails.application.eager_load!
  ActiveRecord::Base.send(:subclasses).each do |model|
    begin
      model.find_each do |instance|
        if !instance.valid?
          puts "-------------------------------"
          puts instance.inspect
          puts instance.errors.full_messages 
        end
      end
    rescue
    end
  end

end