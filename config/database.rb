

case Padrino.env
  when :development then
    MongoMapper.connection = Mongo::Connection.new('localhost', 27017, :logger => logger)
    MongoMapper.database = 'ws_signcontrol'
  
  when :production  then 
    MongoMapper.connection = Mongo::Connection.new('staff.mongohq.com', 10018, :logger => logger)
    MongoMapper.database = 'app3138678'
    MongoMapper.database.authenticate('heroku','bluesky120')
  
  when :test        then MongoMapper.database = 'signcontrol_test'
end