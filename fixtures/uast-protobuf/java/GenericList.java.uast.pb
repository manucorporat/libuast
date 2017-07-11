
CompilationUnit��
TypeDeclaration
	interfacefalse
internalRoletypes�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsY
TextElement
internalRole	fragments)
text!A class to provide a simple list.*g
TextElement7
text/List resizes automatically. Used to illustrate 
internalRole	fragments*.e
TextElement
internalRole	fragments5
text-various design and implementation details of *bI
TextElement
internalRole	fragments
texta class in Java.*�

TagElement
internalRoletags
tagName@author@
TextElement
text scottm
internalRole	fragments*�*�:��4
Modifier
internalRole	modifiers"public*�
9

SimpleName
internalRolename"GenericList*�
:�
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*�4
Modifier
internalRole	modifiers"static*�3
Modifier
internalRole	modifiers"final*�1

internalRoletype"int*��
VariableDeclarationFragment
internalRole	fragments9

SimpleName
internalRolename"DEFAULT_CAP*�:C

internalRoleinitializer
token10*�:v�
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*��
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*�:'
	Dimension
internalRole
dimensionso
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"iValues*�:�
FieldDeclaration 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*�1

internalRoletype"int*�m
VariableDeclarationFragment
internalRole	fragments3

SimpleName
internalRolename"iSize*�:�

MethodDeclaration 
internalRolebodyDeclarations
constructorfalse�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsn
TextElement
internalRole	fragments=
text5Default add method. Add x to the end of this IntList.*�W
TextElement
internalRole	fragments&
textSize of the list goes up by 1.*��

TagElement
internalRoletags
tagName@param4

SimpleName
internalRole	fragments"x*�:c
TextElement
internalRole	fragments2
text* The value to add to the end of this list.*�*�:��4
Modifier
internalRole	modifiers"public*�9

internalRolereturnType2"void*�2

SimpleName
internalRolename"add*�:4�
SingleVariableDeclaration
varargsfalse
internalRole
parametersX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*�:0

SimpleName
internalRolename"x*�:7*�:6�
Block
internalRolebody�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"insert*�:i9

SimpleName
internalRole	arguments"iSize*�:j5

SimpleName
internalRole	arguments"x*�:j:g::3_^*�:E2�
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*�_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"Object*�:2

SimpleName
internalRolename"get*�:4�
SingleVariableDeclaration
varargsfalse
internalRole
parameters1

internalRoletype"int*�2

SimpleName
internalRolename"pos*�:7*�:6�
Block
internalRolebody�
ReturnStatement
internalRole
statements�
ArrayAccess
internalRole
expression6

SimpleName
internalRolearray"iValues*�:2

SimpleName
internalRoleindex"pos*�::`:3_^*�:E2�
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsT
TextElement
internalRole	fragments#
textInsert obj at position pos.*�"d
TextElement
internalRole	fragments3
text+post: get(pos) = x, size() = old size() + 1*�#�

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"pos*�$:L
TextElement
internalRole	fragments
text 0 <= pos <= size()*�$*�$�

TagElement
internalRoletags
tagName@param6

SimpleName
internalRole	fragments"obj*�%:M
TextElement
text The element to add.
internalRole	fragments*�%*�%:��4
Modifier
internalRole	modifiers"public*�'9

internalRolereturnType2"void*�'5

SimpleName
internalRolename"insert*�':4�
SingleVariableDeclaration
varargsfalse
internalRole
parameters1

internalRoletype"int*�'2

SimpleName
internalRolename"pos*�':7*�':6�
SingleVariableDeclaration
internalRole
parameters
varargsfalseX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*�':2

SimpleName
internalRolename"obj*�':7*�':6�
Block
internalRolebody�
ExpressionStatement
internalRole
statementso
MethodInvocation
internalRole
expression<

SimpleName
internalRolename"
ForStatement
internalRole
statements�
VariableDeclarationExpression
internalRoleinitializers1

internalRoletype"int*�)�
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*�)::

SimpleName
internalRoleinitializer"iSize*�)::P�
InfixExpression
operator>
internalRole
expression7

SimpleName
internalRoleleftOperand"i*�)::

SimpleName
internalRolerightOperand"pos*�):*�):Q|
PostfixExpression
operator--
internalRoleupdaters2

SimpleName
internalRoleoperand"i*�):*�):R�
Block
internalRolebody�
ExpressionStatement
internalRole
statements�

Assignment
internalRole
expression
operator=�
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*�*:0

SimpleName
internalRoleindex"i*�*::��
ArrayAccess
internalRole

SimpleName
internalRolearray"iValues*�*:�
InfixExpression
operator-
internalRoleindex7

SimpleName
internalRoleleftOperand"i*�*:D

internalRolerightOperand

token1*�	*:v*�*:*:�*�*:�::S_^:O�
ExpressionStatement
internalRole
statements�

Assignment
internalRole
expression
operator=�
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*�	,:2

SimpleName
internalRoleindex"pos*�	,::�<

SimpleName
internalRole
ExpressionStatement
internalRole
statements�
PostfixExpression
internalRole
expression
operator++6

SimpleName
internalRoleoperand"iSize*�	-:*�	-:::3_^*�!:E2�
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*�	0_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"Object*�	0:5

SimpleName
internalRolename"remove*�	0:4�
SingleVariableDeclaration
internalRole
parameters
varargsfalse1

internalRoletype"int*�	02

SimpleName
internalRolename"pos*�	0:7*�	0:6�
Block
internalRolebody�
VariableDeclarationStatement
internalRole
statementsX

SimpleType
internalRoletype4

SimpleName
internalRolename"Object*�	1:�
VariableDeclarationFragment
internalRole	fragments:

SimpleName
internalRolename"removedValue*�	1:�
ArrayAccess
internalRoleinitializer6

SimpleName
internalRolearray"iValues*�
1:2

SimpleName
internalRoleindex"pos*�
1:�

ForStatement
internalRole
statements�
VariableDeclarationExpression
internalRoleinitializers1

internalRoletype"int*�
2�
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*�
2:8

SimpleName
internalRoleinitializer"pos*�
2::P�
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*�
2:�
InfixExpression
internalRolerightOperand
operator-;

SimpleName
internalRoleleftOperand"iSize*�
2:D


token1
internalRolerightOperand*�
2:v*�
2:**�
2:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*�
2:*�
2:R�
ExpressionStatement
internalRolebody�

Assignment
internalRole
expression
operator=�
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*�
3:0

SimpleName
internalRoleindex"i*�
3::��
ArrayAccess
internalRole

SimpleName
internalRolearray"iValues*�
3:�
InfixExpression
internalRoleindex
operator+7

SimpleName
internalRoleleftOperand"i*�
3:D

internalRolerightOperand

token1*�
3:v*�
3:):�*�
3:�:S:O�
ExpressionStatement
internalRole
statements�

Assignment
internalRole
expression
operator=�
ArrayAccess
internalRoleleftHandSide6

SimpleName
internalRolearray"iValues*�
4:�
InfixExpression
internalRoleindex
operator-;

SimpleName
internalRoleleftOperand"iSize*�4:D

internalRolerightOperand

token1*�4:v*�4:*:�7
NullLiteral
internalRole
4:�:�
ExpressionStatement
internalRole
statements�
PostfixExpression
internalRole
expression
operator--6

SimpleName
internalRoleoperand"iSize*�5:*�5::s
ReturnStatement
internalRole
statements@

SimpleName
internalRole
expression"removedValue*�6::`:3_^*�	0:E2�
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*�99

internalRolereturnType2"void*�9<

SimpleName
internalRolename"
Block
internalRolebody�
IfStatement
internalRole
statements�
InfixExpression
operator==
internalRole
expression;

SimpleName
internalRoleleftOperand"iSize*�<:�

internalRolerightOperand:

SimpleName
internalRole	qualifier"iValues*�<:4

SimpleName
internalRolename"length*�<::*�<:G�
ExpressionStatement
internalRole
MethodInvocation
internalRole
expression5

SimpleName
internalRolename"resize*�=:i:g:H"if:F:3_^*�9:?2�
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*�

internalRolereturnType2"int*�

SimpleName
internalRolename"size*�
Block
internalRolebodyl
ReturnStatement
internalRole
statements9

SimpleName
internalRole
expression"iSize*�
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations5
Modifier
internalRole	modifiers"private*�E9

internalRolereturnType2"void*�E5

SimpleName
internalRolename"resize*�E:4�
Block
internalRolebody�
VariableDeclarationStatement
internalRole
statements�
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*�F:'
	Dimension
internalRole
dimensions�
VariableDeclarationFragment
internalRole	fragments2

SimpleName
internalRolename"temp*�F:�

internalRoleinitializer�
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*�F:'
	Dimension
internalRole
dimensions�
InfixExpression
internalRole
dimensions
operator*�

internalRoleleftOperand:

SimpleName
internalRole	qualifier"iValues*�F:4

SimpleName
internalRolename"length*�F::D

internalRolerightOperand

token2*�F:v*�F:+�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"System*�G:h8

SimpleName
internalRolename"	arraycopy*�G:i;

SimpleName
internalRole	arguments"iValues*�G:jA

internalRole	arguments

token0*�G:vj8

SimpleName
internalRole	arguments"temp*�G:jA


token0
internalRole	arguments*�G:vj�

internalRole	arguments:

SimpleName
internalRole	qualifier"iValues*�G:4

SimpleName
internalRolename"length*�G::j:g:�
ExpressionStatement
internalRole
statements�

Assignment
operator=
internalRole
expression?

SimpleName
internalRoleleftHandSide"iValues*�H:�=

SimpleName
internalRole
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsh
TextElement
internalRole	fragments7
text/Return a String version of this list. Size and *�LK
TextElement
internalRole	fragments
textelements included.*�M:��4
Modifier
internalRole	modifiers"public*�O_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*�O:7

SimpleName
internalRolename"toString*�O:4�
Block
internalRolebody�
VariableDeclarationStatement
internalRole
statementsX

SimpleType
internalRoletype4

SimpleName
internalRolename"String*�R:�
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*�R:�
InfixExpression
internalRoleinitializer
operator+A

internalRoleleftOperand""size: "*�R:y<

SimpleName
internalRolerightOperand"iSize*�R:L

internalRoleextendedOperands"", elements: ["*�R:y*�R:)�

ForStatement
internalRole
statements�
VariableDeclarationExpression
internalRoleinitializers1

internalRoletype"int*�S�
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*�S:B

internalRoleinitializer

token0*�S:v:P�
InfixExpression
internalRole
expression
operator<7

SimpleName
internalRoleleftOperand"i*�S:�
InfixExpression
operator-
internalRolerightOperand;

SimpleName
internalRoleleftOperand"iSize*�S:D

internalRolerightOperand

token1*�S:v*�S:**�S:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*�S:*�S:R�
ExpressionStatement
internalRolebody�

Assignment
internalRole
expression
operator+=>

SimpleName
internalRoleleftHandSide"result*�T:��
InfixExpression
internalRole
operator+�
MethodInvocation
internalRoleleftOperand�
ArrayAccess
internalRole
expression6

SimpleName
internalRolearray"iValues*�T:0

SimpleName
internalRoleindex"i*�T::h7

SimpleName
internalRolename"toString*�T:i:g>

internalRolerightOperand"", "*�T:y*�T:)�*�T:���):S:O�
IfStatement
internalRole
statements�
InfixExpression
operator>
internalRole
expression;

SimpleName
internalRoleleftOperand"iSize*�U:D


token0
internalRolerightOperand*�U:v*�U:G�
ExpressionStatement
internalRole

Assignment
operator+=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*�V:��
ArrayAccess
internalRole

SimpleName
internalRolearray"iValues*�V:�
InfixExpression
operator-
internalRoleindex;

SimpleName
internalRoleleftOperand"iSize*�V:D

internalRolerightOperand

token1*�V:v*�V:*:�*�V:���):H"if:F�
ExpressionStatement
internalRole
statements�

Assignment
operator+=
internalRole
expression>

SimpleName
internalRoleleftHandSide"result*�W:�?

internalRole
ReturnStatement
internalRole
statements:

SimpleName
internalRole
expression"result*�X::`:3_^*�K:E2�"
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations4
Modifier
internalRole	modifiers"public*�]_

SimpleType
internalRolereturnType24

SimpleName
internalRolename"String*�]:H

SimpleName
internalRolename"toStringUsingStringBuffer*�]:4� 
Block
internalRolebody�
VariableDeclarationStatement
internalRole
statements^

SimpleType
internalRoletype:

SimpleName
internalRolename"StringBuffer*�^:�
VariableDeclarationFragment
internalRole	fragments4

SimpleName
internalRolename"result*�^:�
ClassInstanceCreation
internalRoleinitializer^

SimpleType
internalRoletype:

SimpleName
internalRolename"StringBuffer*�^:�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�_:h5

SimpleName
internalRolename"append*�_:i?

internalRole	arguments""size: "*�_:yj:g:�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�`:h5

SimpleName
internalRolename"append*�`:i9

SimpleName
internalRole	arguments"iSize*�`:j:g:�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�a:h5

SimpleName
internalRolename"append*�a:iF

internalRole	arguments"", elements: ["*�a:yj:g:�
ForStatement
internalRole
statements�
VariableDeclarationExpression
internalRoleinitializers1

internalRoletype"int*�b�
VariableDeclarationFragment
internalRole	fragments/

SimpleName
internalRolename"i*�b:B

internalRoleinitializer

token0*�b:v:P�
InfixExpression
operator<
internalRole
expression7

SimpleName
internalRoleleftOperand"i*�b:�
InfixExpression
internalRolerightOperand
operator-;

SimpleName
internalRoleleftOperand"iSize*�b:D


token1
internalRolerightOperand*�b:v*�b:**�b:Q|
PostfixExpression
internalRoleupdaters
operator++2

SimpleName
internalRoleoperand"i*�b:*�b:R�
Block
internalRolebody�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�c:h5

SimpleName
internalRolename"append*�c:i�
ArrayAccess
internalRole	arguments6

SimpleName
internalRolearray"iValues*�c:0

SimpleName
internalRoleindex"i*�c::j:g:�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�d:h5

SimpleName
internalRolename"append*�d:i;

internalRole	arguments"", "*�d:yj:g::S_^:O�
IfStatement
internalRole
statements�
InfixExpression
internalRole
expression
operator>;

SimpleName
internalRoleleftOperand"iSize*�f:D

internalRolerightOperand

token0*�f:v*�f:G�
ExpressionStatement
internalRole
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�g:h5

SimpleName
internalRolename"append*�g:i�
ArrayAccess
internalRole	arguments6

SimpleName
internalRolearray"iValues*�g:�
InfixExpression
operator-
internalRoleindex;

SimpleName
internalRoleleftOperand"iSize*�g:D

internalRolerightOperand

token1*�g:v*�g:*:j:g:H"if:F�
ExpressionStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�h:h5

SimpleName
internalRolename"append*�h:i:

internalRole	arguments""]"*�h:yj:g:�
ReturnStatement
internalRole
statements�
MethodInvocation
internalRole
expression;

SimpleName
internalRole
expression"result*�i:h7

SimpleName
internalRolename"toString*�i:i:g:`:3_^*�]:E2�
MethodDeclaration
constructortrue 
internalRolebodyDeclarations�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsd
TextElement
internalRole	fragments3
text+Default constructor. Creates an empty list.*�m:��4
Modifier
internalRole	modifiers"public*�o:

SimpleName
internalRolename"GenericList*�o:4�
Block
internalRolebodys
ConstructorInvocation
internalRole
statements>

SimpleName
internalRole	arguments"DEFAULT_CAP*�q::3_^*�l:E2�
MethodDeclaration 
internalRolebodyDeclarations
constructortrue�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsg
TextElement
internalRole	fragments6
text.Constructor to allow user of class to specify *�vj
TextElement
internalRole	fragments9
text1initial capacity in case they intend to add a lot*�wh
TextElement
internalRole	fragments7
text/of elements to new list. Creates an empty list.*�x�

TagElement
tagName@param
internalRoletags=

SimpleName
internalRole	fragments"
initialCap*�y:=
TextElement
internalRole	fragments
text > 0*�y*�y:��4
Modifier
internalRole	modifiers"public*�{:

SimpleName
internalRolename"GenericList*�{:4�
SingleVariableDeclaration
internalRole
parameters
varargsfalse1

internalRoletype"int*�{9

SimpleName
internalRolename"
initialCap*�{:7*�{:6�
Block
internalRolebody�
AssertStatement
internalRole
statements�
InfixExpression
operator>
internalRole
expression@

SimpleName
internalRoleleftOperand"
initialCap*�|:D

internalRolerightOperand

token0*�|:v*�|:�
InfixExpression
internalRolemessage
operator+r

internalRoleleftOperand"9"Violation of precondition. IntListVer1(int initialCap):"*�|:yt

internalRolerightOperand":"initialCap must be greater than 0. Value of initialCap: "*�}:yD

SimpleName 
internalRoleextendedOperands"
initialCap*�}:*�|:):f�
ExpressionStatement
internalRole
statements�

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"iValues*�~:��

internalRole
	ArrayType
internalRoletype_

SimpleType
internalRoleelementType4

SimpleName
internalRolename"Object*�~:'
	Dimension
internalRole
dimensions>

SimpleName
internalRole
dimensions"
initialCap*�~::�*�~:�:�
ExpressionStatement
internalRole
statements�

Assignment
operator=
internalRole
expression=

SimpleName
internalRoleleftHandSide"iSize*�:�F

internalRole

token0*�:v�*�:�::3_^*�u:E2�1
MethodDeclaration
constructorfalse 
internalRolebodyDeclarations�
Javadoc
internalRolejavadoc�

TagElement
internalRoletagsl
TextElement
internalRole	fragments:
text2Return true if this IntList is equal to other.<br>*��C
TextElement
internalRole	fragments
text	pre: none*���

TagElement
internalRoletags
tagName@param9

SimpleName
internalRole	fragments"other*��:X
TextElement
internalRole	fragments&
text The object to comapre to this*��*���

TagElement
internalRoletags
tagName@returnf
TextElement
internalRole	fragments4
text, true if other is a non null, IntList object*��k
TextElement
internalRole	fragments9
text1that is the same size as this IntList and has the*��k
TextElement
internalRole	fragments9
text1same elements in the same order, false otherwise.*��*��:��5
Modifier
internalRole	modifiers"public*� �=

internalRolereturnType2"boolean*� �6

SimpleName
internalRolename"equals*� �:4�
SingleVariableDeclaration
internalRole
parameters
varargsfalseY

SimpleType
internalRoletype5

SimpleName
internalRolename"Object*� �:5

SimpleName
internalRolename"other*� �:7*� �:6�'
Block
internalRolebody�
VariableDeclarationStatement
internalRole
statements6

internalRoletype"boolean*� �o
VariableDeclarationFragment
internalRole	fragments5

SimpleName
internalRolename"result*� �:�$
IfStatement
internalRole
statements�
InfixExpression
internalRole
expression
operator==<

SimpleName
internalRoleleftOperand"other*� �:5
NullLiteral
internalRolerightOperand"null:u*� �:G�
ExpressionStatement
internalRole

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*�!�:�S
BooleanLiteral
booleanValuefalse
internalRole
IfStatement
internalRole
InfixExpression
internalRole
expression
operator===

SimpleName
internalRolerightOperand"other*�!�:3
ThisExpression
internalRoleleftOperand:�*�!�:G�
ExpressionStatement
internalRole

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*�"�:�R
BooleanLiteral
booleanValuetrue
internalRole
IfStatement
internalRole
InfixExpression
internalRole
expression
operator!=�
MethodInvocation
internalRoleleftOperand8

SimpleName
internalRolename"getClass*�#�:i2
ThisExpression
internalRole
expression:h�:g�
MethodInvocation
internalRolerightOperand;

SimpleName
internalRole
expression"other*�#�:h8

SimpleName
internalRolename"getClass*�#�:i:g*�"�:G�
ExpressionStatement
internalRole

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*�#�:�S
BooleanLiteral
internalRole
booleanValuefalse*�#�:o�*�#�:�:H�
Block
internalRole
VariableDeclarationStatement
internalRole
statements^

SimpleType
internalRoletype:

SimpleName
internalRolename"GenericList*�$�:�
VariableDeclarationFragment
internalRole	fragments8

SimpleName
internalRolename"	otherList*�$�:�
CastExpression
internalRoleinitializer^

SimpleType
internalRoletype:

SimpleName
internalRolename"GenericList*�$�::

SimpleName
internalRole
expression"other*�$�:�
ExpressionStatement
internalRole
statements�

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*�%�:��
InfixExpression
internalRole
operator==�
MethodInvocation
internalRoleleftOperand4

SimpleName
internalRolename"size*�%�:i2
ThisExpression
internalRole
expression:h�:g�
MethodInvocation
internalRolerightOperand?

SimpleName
internalRole
expression"	otherList*�%�:h4

SimpleName
internalRolename"size*�%�:i:g*�%�:�*�%�:�:�
VariableDeclarationStatement
internalRole
statements2

internalRoletype"int*�%��
VariableDeclarationFragment
internalRole	fragments0

SimpleName
internalRolename"i*�%�:C


token0
internalRoleinitializer*�%�:v�
WhileStatement
internalRole
statements�
InfixExpression
internalRole
expression
operator&&�
InfixExpression
operator<
internalRoleleftOperand8

SimpleName
internalRoleleftOperand"i*�%�:=

SimpleName
internalRolerightOperand"iSize*�%�:*�%�:>

SimpleName
internalRolerightOperand"result*�%�:*�%�:V%�
Block
internalRolebody�
ExpressionStatement
internalRole
statements�

Assignment
internalRole
expression
operator=?

SimpleName
internalRoleleftHandSide"result*�&�:��
MethodInvocation
internalRole
ArrayAccess
internalRole
expression�
FieldAccess
internalRolearray6

SimpleName
internalRolename"iValues*�&�:1
ThisExpression
internalRole
expression:�1

SimpleName
internalRoleindex"i*�&�::h6

SimpleName
internalRolename"equals*�&�:i�
ArrayAccess
internalRole	arguments�

internalRolearray=

SimpleName
internalRole	qualifier"	otherList*�&�:6

SimpleName
internalRolename"iValues*�&�::1

SimpleName
internalRoleindex"i*�&�::j:g�*�&�:�:�
ExpressionStatement
internalRole
statements
PostfixExpression
operator++
internalRole
expression3

SimpleName
internalRoleoperand"i*�&�:*�&�:::W_^:U:I_^"if:IF"if:IF"if:Fn
ReturnStatement
internalRole
statements;

SimpleName
internalRole
expression"result*�'�::`:3_^*��:E2*:E::$