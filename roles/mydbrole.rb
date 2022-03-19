name "myDBrole"
description "this is DB role"
run_list "recipe[mywebserver::installjava]","recipe[mywebserver::mysql]"