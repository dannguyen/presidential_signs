namespace :bootstrap do
  task :presidents => :environment do |t, args|
    data = SEED_FILES.join('executive.yml').open{|f| YAML.load f.read}

    # select only objects that have "prez" as a term
    prezes = data.select{|d| d['terms'].any?{|t| t['type'] == 'prez'}}

    prezes.each do |p|
      president = President.build_from_sunlight_data(p)
      puts president.popular_name

      president.save
    end
  end


  task :sync => :environment do |t, args|
    President.all.each do |prez|
      signs = SigningStatement.where(named_president: prez.popular_name)
      prez.signing_statements = signs
      prez.save

      puts "President #{prez.popular_name} has #{prez.signing_statements.count} statements"
    end
  end
end