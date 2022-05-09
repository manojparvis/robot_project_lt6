* Settings *
Library     DatabaseLibrary
Test Setup      Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db     dbPassword=12345678     dbHost=db4free.net   dbPort=3306
Test Teardown       Disconnect From Database
* Test Cases *
Tc1

    ${row_count}        Row Count    select * from Products
    Log To Console    ${row_count}
    Log    ${row_count}
Tc2
    Table Must Exist    Products
    Row Count Is Equal To X    select * from Products    81
Tc3
    Execute Sql String    Insert into Products (product_id,productname,description) values('99007717','sakthi','name')
    Row Count Is Equal To X    select * from Products where product_id=99007717    1
Tc4
    Execute Sql String    update Products set productname='sakthi' where product_id=35656
    Row Count Is Equal To X    select * from Products where product_id=99007717     1
Tc5
    ${a}        Query    select * from Products
    Log To Console    ${a}
    Log    ${a}