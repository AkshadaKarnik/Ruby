#using Snacks module here in this .rb file
#Note that snacks.rb in some other directory and current modules_case4.rb is in another

require "./snacks.rb"
include Snacks
$LOAD_PATH << '.'

Snacks.snack_name
Snacks.snack_price