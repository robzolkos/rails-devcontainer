inside 'config' do
  gsub_file 'database.yml', 'database: workspace_development', "database: #{ENV['APP_NAME']}_development"
  gsub_file 'database.yml', 'database: workspace_test', "database: #{ENV['APP_NAME']}_test"
  gsub_file 'database.yml', 'database: workspace_production', "database: #{ENV['APP_NAME']}_production"
end
