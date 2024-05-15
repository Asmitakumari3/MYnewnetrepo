create function userLogin(@uName varchar(20),@Pwd varchar(20)) returns varchar(50)
as
begin
if (@uName='Admin'and @Pwd ='Admin@1234')
begin
	return 'Login Successful'


end
return 'Invalid Credentials'
end

select dbo.userLogin('Admin','Admin@1234')