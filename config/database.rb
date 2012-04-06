

case Padrino.env
  when :development then
    MongoMapper.connection = Mongo::Connection.new('localhost', 27017, :logger => logger)
    MongoMapper.database = 'ws_signcontrol'
  
  when :production  then 
    MongoMapper.connection = Mongo::Connection.new('flame.mongohq.com', 27021, :logger => logger)
    MongoMapper.database = 'app3738600'
    MongoMapper.database.authenticate('heroku','bluesky120')
  
  when :test        then MongoMapper.database = 'signcontrol_test'
end