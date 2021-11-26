# PP-labs

![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white) ![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)

## Lab - 1
### Group - 10

Kreira JFlexspecifikaciju za generisanje leksičkog analizatora jezika koji je definisan sledećom
gramakom:

Program → program Block.\
Block → begin VariablesStatementList end\
Variables → VariablesDeclaraon | ε\
Declaraon → NameList : Type ;\
NameList → NameList, ID| ID\
Type → integer| char| real| boolean\
StatementList → Statement| StatementList Statement\
Statement → WhileLoop| ID:=Expression;| Block\
WhileLoop → whileExpression:StatementelseStatement\
Expression → ExpressionorAndExpression| AndExpression\
AndExpression → AndExpressionandRelExpression| RelExpression\
RelExpression → TermRelOpTerm| Term\
RelOp → < | <= | == | <> | > | >=
Term → ID| CONST| ( Expression)\
Terminalni simbol ID u ovom programskom jeziku označava idenfikator (niz slova, cifara i znaka $ u kojem prvi znak ne može da bude cifra), a simbol CONST konstantu koja moze da bude zadata u jednom od sledećih formata: \

1.Konstante pa int:\
[<oznaka\_osnove\>] <niz\_cifara\_zadate\_osnove\>\

Pri čemu oznaka osnove može biti\
0 – za brojni sistem sa osnovom 8,\
0x – za brojni sistem sa osnovom 16,\
Ukoliko je oznaka osnove izostavljena, podrazumeva se osnova 10.\
2.Konstante pa real:
<niz\_cifara\>[<niz\_cifara\>][E[±] <niz\_cifara\>] i\
<niz\_cifara\> [E[±] <niz\_cifara\>]\
3.Konstante pa char:\
 <'znak'>\
4.Konstante pa boolean:\
true i false\
Komentari u ovom programskom jeziku počinju simbolom \*\* i završavaju se simbolom \*\*.\


This project is licensed by University of Nis, Serbia
| License      | Owner |
| ----------- | ----------- |
| Student Project | University of Nis |
