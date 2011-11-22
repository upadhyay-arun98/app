config = 
{
  :course_name => 'Developer Bootcamp',
  :project => "app",
  :target => "Debug",
  :source_dir =>"source",
  :all_references => UniqueFiles.new(Dir.glob("packages/**/*.{dll,exe}")).all_files,
  :artifacts_dir => "artifacts",
  :compiled_web_path => delayed{"#{File.expand_path(File.join(configatron.artifacts_dir,"web"))}"},
  :config_dir => "source/config",
  :app_dir => delayed{"source/#{configatron.project}"},
  :log_file_name => delayed{"#{configatron.project}_log.txt"},
  :our_new_setting => "This is cool",
  :log_level => "DEBUG"
}
configatron.configure_from_hash config
