-- w3.lua 
-- w3 write a function leapYear, parameter is number type (the year) and result is boolean (true if the year is leap year)
--    put example year xx/yy result on WorkPad1/2
--    hint: you will use math (calculation), comparison, and control.

module(..., package.seeall)

-- your function leapYear here
local function leapYear(theYear)
	-- your calcuation here

	-- e.g.
	if (theYear == 4) then
		return true
	else 
		return false
	end 
end


local function uhhyear(theYear)
	if ( theYear % 4) ==0 then 
	 	if (theYear % 100)==0 then
	 		if (theYear % 400)==0 then
	 			return true -- 400, 800, ..
	 		else
	 			return false --- 500, 600,
	 		end
	 	else
	 		return true -- 8, 16, 96
	 	end
	 else 
	 	return false -- 3,7,99, ..
	 end

	 
	 if (theYear % 400)==0 then
	 	return true
	 else 
	 	return false
	 end

 end

run = function()
   -- call your function on year xxxx
	local year1 = 2010
	local uhhYear1 = uhhyear(year1)
	if (uhhYear1 == true) then
		WorkPad2:setText("year " .. year1 .. " is leap ")
	else
		WorkPad2:setText("year " .. year1 .. " is not leap ")
	end
	

   -- call your function on year yyyy
   -- and put on WorkPad2

end