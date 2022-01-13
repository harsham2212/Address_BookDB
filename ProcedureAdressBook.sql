select * from AddressBook

create Procedure spGetAddressBook
As
begin
	select FirstName,LastName,Address,CIty,State from AddressBook
end

spGetAddressBook