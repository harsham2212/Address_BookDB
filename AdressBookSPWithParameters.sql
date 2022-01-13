select * from AddressBook

create Procedure spAddressBookWithParameters
--@FirstName varchar(50),
@City varchar(20)
--@State varchar(20),
--@Phone varchar(20)
as 
begin

select City from AddressBook where City = @City 
end

spAddressBookWithParameters 'Patna'

