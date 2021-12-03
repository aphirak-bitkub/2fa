#sandbox
robot -i testaccount --suite sandbox  request-2fa-automation
robot -i testaccount2 --suite sandbox request-2fa-automation
robot -i testaccount3 --suite sandbox request-2fa-automation
robot -i testaccount4 --suite sandbox request-2fa-automation
#staging
robot -i testaccount --suite staging  request-2fa-automation
robot -i testaccount2 --suite staging request-2fa-automation
robot -i testaccount3 --suite staging request-2fa-automation
robot -i testaccount4 --suite staging request-2fa-automation
robot -i testaccount8 --suite staging request-2fa-automation