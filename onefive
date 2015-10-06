%1.5 Unification and Variable Instantiation
%2-10-11

name(kevin, thorne).
name(nick, king).
name(mitch, talmadge).
name(rylan, stay).
name(bryan, mineer).

response1(last,lastname).
response1(lastname, lastname).
response1('last name', lastname).
response1('Last name', lastname).
response1('Last Name', lastname).
response1('LAST NAME', lastname).

response1(first, firstname).
response1(firstname, firstname).
response1('first name', firstname).
response1('First name', firstname).
response1('First Name', firstname).
response1('FIRST NAME', firstname).

response2(y, yes).
response2(yes, yes).
response2('Yes', yes).
response2('YES', yes).

response2(n, no).
response2(no, no).
response2('No', no).
response2('NO', no).

start :- write('Name Database'), nl,
	write('Are you entering first name or last name?'), nl,
	write('Please keep your entry ending in a period'),
	nl, getresponse1, !.

getresponse1 :- write('Entry: '), inputentry(Entry), nl, nl, getchoice(Entry).


inputentry(Entry) :- read(Answer), response1(Answer, Entry).

inputname(Name, Entry) :- read(Name), if(Entry is lastname, Choice is lastname, Choice is firstname), getname(Choice, Name).


getchoice(Entry) :- write('Name: '), inputname(Name, Entry).

getname(Choice, Name) :- if(Choice is firstname, name(Choice, Name), name(Name, Choice)), printname(Name).

printname(Name) :- write('Answer: '), write(Name), !.
