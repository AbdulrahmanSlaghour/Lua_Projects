-- define a function to spring a string with give separator
function mysplit (inputstr, sep)
   -- if sep is null, set it as space
   if sep == nil then
      sep = '%s'
   end
   -- define an array
   local t={}
   -- split string based on sep   
   for str in string.gmatch(inputstr, '([^'..sep..']+)') 
   do
      -- insert the substring in table
      table.insert(t, str)
   end
   -- return the array
   return t
end
-- split the string based on space
ans = mysplit('hey bro whats up?')
-- iterate through array of substrings
for _, v in ipairs(ans) 
do 
   print(v) 
end
-- split the string based on comma
-- iterate through array of substrings
ans = mysplit('x,y,z,m,n',',')
for _, v in ipairs(ans) 
do 
   print(v) 
end