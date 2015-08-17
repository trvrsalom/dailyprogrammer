(*
	alphabeticalwords.AppleScript
	Created for: https://www.reddit.com/r/dailyprogrammer/comments/3h9pde/20150817_challenge_228_easy_letters_in/
	Author: Trevor Salom
*)
on check()
	display dialog "Input Word?" default answer "" buttons {"Continue"} default button 1
	set var_word to text returned of result
	set var_count to 1
	set var_last to ""
	set var_alph to 1
	repeat length of var_word times
		if var_last is equal to "" then
			set var_curr to text var_count thru var_count of var_word
			set var_count to var_count + 1
		else if var_alph is equal to 1 then
			set var_curr to text var_count thru var_count of var_word
			set var_count to var_count + 1
			if var_curr comes before var_last or var_curr is equal to var_last then
				set var_alph to 0
			end if
		end if
		set var_last to var_curr
	end repeat
	if var_alph is equal to 1 then
		display dialog var_word & " IN ORDER"
	else
		display dialog var_word & " NOT IN ORDER"
	end if
	display dialog "Would you like to check another word?" buttons {"Yes", "Nope"}
	if the button returned of the result is "Yes" then
		check()
	end if
end check

check()
