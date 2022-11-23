# uni-prolog-lab

## Commands

Here are some useful Prolog commands:

* Print working dir: ``pwd.``
* Change working dir ``cd('<asbolute_or_relative_path'>).``
* Consult knowledge base from user input: ``consult(user).`` or ``[user].``
* Consult knowledge base from file: ``consult('<file_name>.pl').`` or ``[<file_name>].``
* Consult knowledge base from previously consulted file: ``make.``
* Edit a file: ``edit(<file_name>).``
* Create a file: ``edit(file('<file_name>.pl')).``
* Show facts and rules given a predicate: ``listing(<predicate_name>).``

## Operators
### Comparison operators
* ``X = Y`` succeeds if X and Y unify (match) in the Prolog sense, does not evaluate
* ``X \= Y`` succeeds if X and Y do not unify; i.e. if not (X = Y), does not evaluate
* ``T1 == T2`` succeeds if terms T1 and T2 are identical; e.g. names of variables have to be the same, does not evaluate
* ``T1 \== T2`` succeeds if terms T1 and T2 are not identical, does not evaluate
* ``E1 =:= E2`` succeeds if values of expressions E1 and E2 are equal, evaluates
* ``E1 =\= E2`` succeeds if values of expressions E1 and E2 are not equal, evaluates
* ``E1 < E2`` succeeds if numeric value of expression E1 is < numeric value of E2, evaluates
* ``E1 =< E2`` succeeds if numeric value of expression E1 is ≤ numeric value of E2, evaluates
* ``E1 > E2`` succeeds if numeric value of expression E1 is > numeric value of E2, evaluates
* ``E1 >= E2`` succeeds if numeric value of expression E1 is ≥ numeric value of E2, evaluates
* ``T1 @< T2`` succeeds if T1 is alphabetically < T2, does not evaluate
* ``T1 @=< T2`` succeeds if T1 is alphabetically ≤ T2, does not evaluate
* ``T1 @> T2`` succeeds if T1 is alphabetically > T2, does not evaluate
* ``T1 @>= T2`` succeeds if T1 is alphabetically ≥ T2, does not evaluate

See also ``is``. ``is`` is not a comparison operator, but is frequently confused with = by novice Prolog programmers. Briefly, you use X is Exp to evaluate an arithmetic expression, like Y + 2, that contains an arithmetic operator, like +, and bind the resulting value to the variable X to the left of the the operator is.
### Arithmetic operators
* ``+``	Addition
* ``-``	Subtraction
* ``*``	Multiplication
* ``/``	Division
* ``**`` Power
* ``//`` Integer Division
* ``mod`` Modulus