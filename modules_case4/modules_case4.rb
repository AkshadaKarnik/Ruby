#using Snack module here in this .rb file

require "./snacks.rb"
include Snacks
$LOAD_PATH << '.'
Snacks.snack_name
Snacks.snack_price