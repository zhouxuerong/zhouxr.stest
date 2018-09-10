*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               测试登录
# 注释
Library           Selenium2Library 
Resource          resource.robot

*** Test Cases *** 
# open login
# # 测试登录
#     Open Browser    url=http://localhost:3000/signin    browser=chrome
#     Click Element	link:登录
#     Input Text      id:name                            testuser1
    # Input Text      id:pass                            123456

open signup 
       Open Browser To Signin Page
       Input newUsername     id:loginname  testuser02
       Input newPassword     id:pass       123456
       Input newPasswordAgain    id:re_pass   123456
       Input emailName    id:email    1343932126@qqq.com
    #    Click Element  class:span-primary
       click signupButton 
       


# *** Settings ***
# Documentation     A test suite containing tests related to invalid login.
# ...
# ...               测试登录
# # 注释
# Library           Selenium2Library

# *** Test Cases *** 
# open login
# # 测试登录
#     Open Browser    url=http://118.31.19.120:3000   browser=chrome
#     Click Element	link:登录
#     Input Text      id:name                         testuser1
#     Input Text      id:pass                         123456