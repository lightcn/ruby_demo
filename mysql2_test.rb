require 'mysql2'
begin
  db = Mysql.init
  db.options(Mysql::SET_CHARSET_NAME, 'utf8')
  db = Mysql.real_connect("localhost", 'developer', '123456', 'shops_prod_20131018')
  rslt = db.query("select count(id) from users")
  while row = rslt.fetch_row do
    puts row[0]
  end

rescue Mysql::Error => e
  puts "Error code: #{e.errno}"
  puts "Error message: #{e.error}"
  puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
  db.close if db
end
