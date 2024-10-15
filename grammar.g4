grammar C;

program: (declaration)* EOF;

declaration: varDeclaration | funcDeclaration;

varDeclaration: type ID ('=' expression)? ';';

funcDeclaration: type ID '(' parameterList? ')' ';';

parameterList: parameter (',' parameter)*;

parameter: type ID;

type: 'int'
     | 'float'
     | 'double'
     | 'char'
     | 'void';

expression
    : expression ('+' | '-' | '*' | '/') expression
    | ID '=' expression
    | ID
    | INT
    | FLOAT
    | CHAR
    | '(' expression ')'
    ;

ID: [a-zA-Z_][a-zA-Z0-9_]*;
INT: [0-9]+;
FLOAT: [0-9]+ '.' [0-9]+;
CHAR: '\'' . '\'';

WS: [ \t\r\n]+ -> skip;
