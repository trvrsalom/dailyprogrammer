(*
	exchangerates.AppleScript
	Created for: https://www.reddit.com/r/ProgrammingPrompts/comments/3dhi4q/easy_currency_converter/
	Author: Trevor Salom
*)
display dialog "Source currency?" default answer "USD" buttons {"Continue"} default button 1
set source to text returned of result
display dialog "Source amount?" default answer "0.00" buttons {"Continue"} default button 1
set amount to text returned of result as real
display dialog "Final Currency?" default answer "AUD" buttons {"Continue"} default button 1
set final to text returned of result

set req to "\"https://rate-exchange.herokuapp.com/fetchRate?from=" & source & "&to=" & final & "\""
set req to "curl -X GET " & req
do shell script req without altering line endings

set resp to result
set mJson to resp
set AppleScript's text item delimiters to {","}
set keyValueList to (every text item in mJson) as list
set AppleScript's text item delimiters to ""

repeat with thiskeyValuePair from 1 to (count keyValueList)
	set theKeyValuePair to item thiskeyValuePair of keyValueList
	set AppleScript's text item delimiters to {":"}
	set theKeyValueBufferList to (every text item in theKeyValuePair) as list
	set AppleScript's text item delimiters to ""
	set theKey to item 1 of theKeyValueBufferList
	set theValue to item 2 of theKeyValueBufferList
end repeat

set theValue to text 2 thru 7 of theValue as real
set finalValue to theValue * amount as string
display dialog finalValue & " " & final
