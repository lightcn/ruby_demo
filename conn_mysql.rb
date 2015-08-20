require 'mysql'
begin
  db = Mysql.init
#  db.options(Mysql::SET_CHAR_NAME, 'utf8')
  db = Mysql.real_connect("172.28.2.31", "root", "1204516", "ruby_base", "37510");
  db.query("SET NAMES utf8")
  db.query("drop table if exists test")
  db.query("create table tb_test (id int, text LONGTEXT) ENGINE=MyISAM DEFAULT CHARSET=utf8")
  db.query("insert into tb_test (id, text) values(1, 'first line'), (2, 'second line')")
  printf "%d rows were inserted \n", db.affected_rows
  rslt = db.query("select text from tb_test")
  while row = rslt.fecch_row do
    puts row[0]
  end
rescue Mysql::Error => e
  puts "Error code: #{e.errno}"
  puts "Error mesage: #{e.error}"
  puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
  db.close if db
end

