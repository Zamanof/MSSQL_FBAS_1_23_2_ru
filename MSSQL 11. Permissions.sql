-- Permissions

-- CREATE LOGIN
-- https://learn.microsoft.com/en-us/sql/t-sql/statements/create-login-transact-sql?view=sql-server-ver16

-- ALTER LOGIN
-- https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-login-transact-sql?view=sql-server-ver16

-- DROP LOGIN
-- https://learn.microsoft.com/en-us/sql/t-sql/statements/drop-login-transact-sql?view=sql-server-ver16

/*
-- Syntax for SQL Server
CREATE LOGIN login_name { WITH <option_list1> | FROM <sources> }

<option_list1> ::=
    PASSWORD = { 'password' | hashed_password HASHED } [ MUST_CHANGE ]
    [ , <option_list2> [ ,... ] ]

<option_list2> ::=
    SID = sid
    | DEFAULT_DATABASE = database
    | DEFAULT_LANGUAGE = language
    | CHECK_EXPIRATION = { ON | OFF}
    | CHECK_POLICY = { ON | OFF}
    | CREDENTIAL = credential_name

<sources> ::=
    WINDOWS [ WITH <windows_options>[ ,... ] ]
    | EXTERNAL PROVIDER
    | CERTIFICATE certname
    | ASYMMETRIC KEY asym_key_name

<windows_options> ::=
    DEFAULT_DATABASE = database
    | DEFAULT_LANGUAGE = language

*/




/*
CREATE USER
https://learn.microsoft.com/en-us/sql/t-sql/statements/create-user-transact-sql?view=sql-server-ver16

ALTER USER
https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-user-transact-sql?view=sql-server-ver16

DROP USER
https://learn.microsoft.com/en-us/sql/t-sql/statements/drop-user-transact-sql?view=sql-server-ver16



-- Syntax for SQL Server, Azure SQL Database, and Azure SQL Managed Instance
  
-- Syntax Users based on logins in master  
CREATE USER user_name   
    [   
        { FOR | FROM } LOGIN login_name   
    ]  
    [ WITH <limited_options_list> [ ,... ] ]   
[ ; ]  
  
-- Users that authenticate at the database  
CREATE USER   
    {  
      windows_principal [ WITH <options_list> [ ,... ] ]  
  
    | user_name WITH PASSWORD = 'password' [ , <options_list> [ ,... ]   
    | Microsoft_Entra_principal FROM EXTERNAL PROVIDER [WITH OBJECT_ID = 'objectid'] 
    }  
  
 [ ; ]  
  
-- Users based on Windows principals that connect through Windows group logins  
CREATE USER   
    {   
          windows_principal [ { FOR | FROM } LOGIN windows_principal ]  
        | user_name { FOR | FROM } LOGIN windows_principal  
}  
    [ WITH <limited_options_list> [ ,... ] ]   
[ ; ]  
  
-- Users that cannot authenticate   
CREATE USER user_name   
    {  
         WITHOUT LOGIN [ WITH <limited_options_list> [ ,... ] ]  
       | { FOR | FROM } CERTIFICATE cert_name   
       | { FOR | FROM } ASYMMETRIC KEY asym_key_name   
    }  
 [ ; ]  
  
<options_list> ::=  
      DEFAULT_SCHEMA = schema_name  
    | DEFAULT_LANGUAGE = { NONE | lcid | language name | language alias }  
    | SID = sid   
    | ALLOW_ENCRYPTED_VALUE_MODIFICATIONS = [ ON | OFF ] ]  
  
<limited_options_list> ::=  
      DEFAULT_SCHEMA = schema_name ]   
    | ALLOW_ENCRYPTED_VALUE_MODIFICATIONS = [ ON | OFF ] ]  
  
-- SQL Database syntax when connected to a federation member  
CREATE USER user_name  
[;]

-- Syntax for users based on Microsoft Entra logins for Azure SQL Managed Instance
CREATE USER user_name   
    [   { FOR | FROM } LOGIN login_name  ]  
    | FROM EXTERNAL PROVIDER
    [ WITH <limited_options_list> [ ,... ] ]   
[ ; ]  

<limited_options_list> ::=  
      DEFAULT_SCHEMA = schema_name 
    | DEFAULT_LANGUAGE = { NONE | lcid | language name | language alias }   
    | ALLOW_ENCRYPTED_VALUE_MODIFICATIONS = [ ON | OFF ] ]
*/

/*
Koqda sozdayotsya baza dannix po umolchaniyu sozdayutsya 4 user-a

+ dbo tot kto sozdayot bazu dannix avtomaticheski stanovitsya 
	vladelsem etoy bazi dannix i sitema etomu user-u dayet rol  db_owner

+ guest 

+ INFORMATION_SCEMA

+ sys 

*/

/*
Role
Roli delyatsya na kateqorii (Isxodya iz toqo kto eti roli sozdaval)

- Predustanovlenniye roli 
- Polzovatelskiye roli

Roli delyatsya eshe na druqie kateqorii (Isxodya iz toqo kakiye prava budet davat)

+ Server level roles
https://learn.microsoft.com/en-us/sql/relational-databases/security/authentication-access/server-level-roles?view=sql-server-ver16

+ Database level roles
https://learn.microsoft.com/ru-ru/sql/relational-databases/security/authentication-access/database-level-roles?view=sql-server-ver16

+ Application role
https://learn.microsoft.com/ru-ru/sql/relational-databases/security/authentication-access/application-roles?view=sql-server-ver16

*/

ALTER LOGIN vsyoctouqodno
WITH
PASSWORD = '12345' MUST_CHANGE,
CHECK_EXPIRATION = ON,
DEFAULT_DATABASE = master


SELECT *
FROM sys.syslogins

EXEC sp_helplogins

CREATE USER kakto
FOR LOGIN vsyoctouqodno

EXEC sp_helplogins 'vsyoctouqodno'

CREATE ROLE book_reader

EXEC sp_helprole

GRANT SELECT ON [Library].dbo.Books TO book_reader
GRANT SELECT ON [Library].dbo.Authors TO book_reader
GRANT SELECT ON [Library].dbo.Categories TO book_reader
GRANT SELECT ON [Library].dbo.Themes TO book_reader
GRANT SELECT ON [Library].dbo.Press TO book_reader

ALTER ROLE book_reader
ADD MEMBER kakto