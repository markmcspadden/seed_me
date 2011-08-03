module SeedMe
  def self.seed
    seed = []

    ActiveRecord::Base.connection.tables.each do |t|
      puts t
      t = t.camelize.singularize
      puts t
      
      begin
        if t.constantize.ancestors.include?(ActiveRecord::Base)
        
          t.constantize.all.each do |r| 
            attrs_hash_string = r.attributes.collect{ |attr| ":#{attr[0]} => \"#{attr[1]}\"" }.join(", ")
            seed << "#{t}.create(#{attrs_hash_string})"
          end
        end
      rescue
        puts "ERROR: Probably not a model for #{t}. #{$!}"
      end
      
      seed << ""
    end

    File.open("#{Rails.root}/db/seeds.rb", "wb+"){ |f| seed.each{ |s| f.puts s} }
  end
end
