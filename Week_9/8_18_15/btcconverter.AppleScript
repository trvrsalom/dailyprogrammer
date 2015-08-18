(*
	btcconverter.AppleScript
	Created for: https://www.reddit.com/r/dailyprogrammer/comments/3hj4o2/20150819_challenge_228_intermediate_use_a_web/
	Author: Trevor Salom
*)
display dialog "Currency Code?" default answer "USD" buttons {"Continue"} default button 1
set source to text returned of result
display dialog "Amount?" default answer "0.00" buttons {"Continue"} default button 1
set amount to text returned of result as real

set req to "\"https://blockchain.info/tobtc?currency=" & source & "&value=" & amount & "\""
set req to "curl -X GET " & req
do shell script req without altering line endings
set req to result

display dialog req & " BTC = " & amount & " " & source
