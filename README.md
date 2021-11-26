# PP-labs

![IntelliJ IDEA](https://img.shields.io/badge/IntelliJIDEA-000000.svg?style=for-the-badge&logo=intellij-idea&logoColor=white) ![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)

## Lab - 1
### Group - 10

Kreira JFlexspecifikaciju za generisanje leksičkog analizatora jezika koji je definisan sledećom
gramakom:

Program → programBlock.\
Block → beginVariablesStatementListend\
Variables → VariablesDeclaraon| ε\
Declaraon → NameList:Type;\
NameList → NameList,ID| ID\
Type → integer| char| real| boolean\
StatementList → Statement| StatementList Statement\
Statement → WhileLoop| ID:=Expression;| Block\
WhileLoop → whileExpression:StatementelseStatement\
Expression → ExpressionorAndExpression| AndExpression\
AndExpression → AndExpressionandRelExpression| RelExpression\
RelExpression → TermRelOpTerm| Term\
RelOp → \&lt;| \&lt;=| == | \&lt;\&gt;| \&gt; | \&gt;=\
Term → ID| CONST| ( Expression)\
Terminalni simbol ID u ovom programskom jeziku označava idenfikator (niz slova, cifara i znaka $u\
kojem prvi znak ne može da bude cifra), a simbol CONST konstantu koja moze da bude zadata u\
jednom od sledećih formata:\

1.Konstante pa int:\
[\&lt;oznaka\_osnove\&gt;]\&lt;niz\_cifara\_zadate\_osnove\&gt;\

Pri čemu oznaka osnove može bi\
0 – za brojni sistem sa osnovom 8,\

0x – za brojni sistem sa osnovom 16,\
Ukoliko je oznaka osnove izostavljena, podrazumeva se osnova 10.\
2.Konstante pa real:
\&lt;niz\_cifara\&gt;.[\&lt;niz\_cifara\&gt;][E[±]\&lt;niz\_cifara\&gt;] i\

. \&lt;niz\_cifara\&gt;[E[±]\&lt;niz\_cifara\&gt;]\
3.Konstante pa char:\
 &#39;\&lt;znak\&gt;&#39;\
4.Konstante pa boolean:\
true false\
Komentari u ovom programskom jeziku počinju simbolom \*\*i završavaju se simbolom \*\*.\


This project is licensed by University of Nis, Serbia
| License      | Owner |
| ----------- | ----------- |
| Student Project | University of Nis |
