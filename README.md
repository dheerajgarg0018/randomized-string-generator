# randomized-string-generator
This shell script generates a randomized string from 
a given alphabet. 
The script takes an alphabet, count and 
length parameters as input. The strings are generated 
according to the following rules:

The string shall have a length no more than the 
specified length.

There may be any number of character substrings. 
However at no time the length of such a substring may 
exceed the count. So the count 4 and with alphabet a, b
we may have any number of character strings like 
a, aa, aaa, b, bb, bbb appearing anywhere in the final 
string.

There are 2 random number generators. The first one 
determines the character to be repeated and the second 
one determines the number of times it repeated.
