name "myWEBrole"
description "this is web role"
run_list "recipe[mywebserver::installjava]","recipe[mywebserver::mywebrecipe]"