inside 'config' do
  gsub_file 'database.yml', 'database: workspace_development', "database: #{ENV['APP_NAME']}_development"
  gsub_file 'database.yml', 'database: workspace_test', "database: #{ENV['APP_NAME']}_test"
  gsub_file 'database.yml', 'database: workspace_production', "database: #{ENV['APP_NAME']}_production"

  database_config = File.read('database.yml')
  database_config.gsub!(/adapter: postgresql\n/, "adapter: postgresql\n  host: <%= ENV.fetch('DB_HOST', 'localhost') %>\n  password: postgres\n")
  File.open('database.yml', 'w') { |file| file.puts database_config }
end
