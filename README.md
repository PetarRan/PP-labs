# PP-labs

# Lab - 1
## Group - 10

Kreira  JFlex  specifikaciju  za generisanje leksičkog analizatora jezika  koji  je definisan sledećom
gramakom:

Program → program Block .
Block → begin Variables StatementList end
Variables → Variables Declaraon  |  ε
Declaraon → NameList : Type ;
NameList → NameList , ID | ID
Type → integer | char | real | boolean
StatementList  → Statement | StatementList Statement 
Statement → WhileLoop  |  ID := Expression ;  |  Block
WhileLoop → while Expression : Statement else Statement
Expression → Expression or AndExpression  |  AndExpression 
AndExpression → AndExpression and RelExpression  |  RelExpression
RelExpression → Term RelOp Term  |  Term
RelOp →  <  |  <=  |  ==  |  <>  |  >  |  >=
Term → ID | CONST | ( Expression ) 
Terminalni simbol ID u ovom programskom jeziku označava idenfikator (niz slova, cifara i znaka $ u
kojem prvi znak ne može da bude cifra), a simbol CONST konstantu koja moze da bude zadata u
jednom od sledećih formata:

1. Konstante pa int:
[<oznaka_osnove>]<niz_cifara_zadate_osnove>

Pri čemu oznaka osnove može bi 
0 – za brojni sistem sa osnovom 8,

0x – za brojni sistem sa osnovom 16,
Ukoliko je oznaka osnove izostavljena, podrazumeva se osnova 10.
2. Konstante pa real:
<niz_cifara>.[<niz_cifara>][E[±]<niz_cifara>] i

. <niz_cifara>[E[±]<niz_cifara>]
3. Konstante pa char:
’<znak>’
4. Konstante pa boolean: 
true i false
Komentari u ovom programskom jeziku počinju simbolom ** i završavaju se simbolom **.

This project is licensed by University of Nis, Serbia
| License      | Owner |
| ----------- | ----------- |
| Student Project | University of Nis |
