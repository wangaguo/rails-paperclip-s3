Rails paperclip upload to Amazon S3 Example
============

Step
----
  * $ bundle install
  * $ vim config/database.yml
    * set username; password
  * $ rake db:create
  * $ rake db:migrate
  * $ vim config/environments/development.rb
    * Set S3
    * :bucket => ENV['S3_BUCKET_NAME'],
    * :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
    * :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'
  * rails s
  * Browse http://localhost:3000