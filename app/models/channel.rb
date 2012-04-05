class Channel
  include MongoMapper::Document

  # key <name>, <type>
  key :name, String
  key :mode, String
  
  key :twitter, String
  key :html, String
  key :rss, String
  
  timestamps!
end
