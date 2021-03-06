
ModuleÜ
Expr
internalRolebody¶
StringLiteral
internalRolevalue
PreviousNoops

end_lineno16
internalRolenoops_previousC
NoopLine
internalRolelines"#!/usr/bin/env python
*:/
NoopLine
internalRolelines"#
*:G
NoopLine
internalRolelines"# Copyright 2009 Facebook
*:/
NoopLine
internalRolelines"#
*:w
NoopLine
internalRolelines"J# Licensed under the Apache License, Version 2.0 (the "License"); you may
*:w
NoopLine
internalRolelines"J# not use this file except in compliance with the License. You may obtain
*:H
NoopLine
internalRolelines"# a copy of the License at
*:/
NoopLine
internalRolelines"#
*:^
NoopLine
internalRolelines"1#     http://www.apache.org/licenses/LICENSE-2.0
*	:/
NoopLine
internalRolelines"#
*
:s
NoopLine
internalRolelines"F# Unless required by applicable law or agreed to in writing, software
*:y
NoopLine
internalRolelines"L# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
*:x
NoopLine
internalRolelines"K# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
*:w
NoopLine
internalRolelines"J# License for the specific language governing permissions and limitations
*:B
NoopLine
internalRolelines"# under the License.
*:.
NoopLine
internalRolelines"
*:*:"óA non-blocking, single-threaded HTTP server.

Typical applications have little direct interaction with the `HTTPServer`
class except to start a server at the beginning of the process
(and even that is often done indirectly via `tornado.web.Application.listen`).

This module also defines the `HTTPRequest` class which is exposed via
`tornado.web.RequestHandler.request`.
*:y*:ų

ImportFrom
internalRolebody

level0{
PreviousNoops

end_lineno26
internalRolenoops_previous.
NoopLine
internalRolelines"
*:*:µ
ImportFrom.names
promotedPropertyListtrue-
alias
asname<nil>"absolute_import:1&
alias
asname<nil>"division:1,
alias
asname<nil>"with_statement:1"
__future__*:/ų
Import
internalRolebody{
PreviousNoops

end_lineno28
internalRolenoops_previous.
NoopLine
internalRolelines"
*:*:R
Import.names
promotedPropertyListtrue$
alias
asname<nil>"Cookie:1*:/|
Import
internalRolebodyS
Import.names
promotedPropertyListtrue%
alias
asname<nil>"logging:1*:/{
Import
internalRolebodyR
Import.names
promotedPropertyListtrue$
alias
asname<nil>"socket:1*:/y
Import
internalRolebodyP
Import.names
promotedPropertyListtrue"
alias
asname<nil>"time:1* :/ó

ImportFrom
internalRolebody

level0{
PreviousNoops

end_lineno33
internalRolenoops_previous.
NoopLine
internalRolelines"
*!:*!:¬
ImportFrom.names
promotedPropertyListtrue"
alias
asname<nil>"utf8:1(
alias
asname<nil>"
native_str:1,
alias
asname<nil>"parse_qs_bytes:1"tornado.escape*":/

ImportFrom
internalRolebody

level0X
ImportFrom.names
promotedPropertyListtrue&
alias
asname<nil>"httputil:1"tornado*#:/

ImportFrom
internalRolebody

level0X
ImportFrom.names
promotedPropertyListtrue&
alias
asname<nil>"iostream:1"tornado*$:/£

ImportFrom
internalRolebody

level0Y
ImportFrom.names
promotedPropertyListtrue'
alias
asname<nil>"	TCPServer:1"tornado.netutil*%:/

ImportFrom
internalRolebody

level0]
ImportFrom.names
promotedPropertyListtrue+
alias
asname<nil>"stack_context:1"tornado*&:/Ā

ImportFrom
internalRolebody

level0{
ImportFrom.names
promotedPropertyListtrue
alias
asname<nil>"b:1(
alias
asname<nil>"
bytes_type:1"tornado.util*':/
	TryExcept
internalRolebodyĪ
Import
internalRolebody{
PreviousNoops
internalRolenoops_previous

end_lineno40.
NoopLine
internalRolelines"
*(:*(:W
SameLineNoops
col_end29
internalRolenoops_sameline"# Python 2.6+**:O
Import.names
promotedPropertyListtrue!
alias
asname<nil>"ssl:1**:/”
ExceptHandler
internalRolehandlers¤
Assign
internalRolebody=
Name
ctxStore
internalRoletargets"ssl*,:;
Name
internalRolevalue
ctxLoad"None*,:*,:?
Name
ctxLoad
internalRoletype"ImportError*+:"<nil>*+:c*):cÄ:
ClassDef
internalRolebody
ClassDef.bases
promotedPropertyListtrueÕ
Name
ctxLoad«
PreviousNoops

end_lineno46
internalRolenoops_previous.
NoopLine
internalRolelines"
*-:.
NoopLine
internalRolelines"
*.:*-:"	TCPServer*/::<’7
ClassDef.body
promotedPropertyListtrue
Expr
StringLiteral
internalRolevalue"ŲA non-blocking, single-threaded HTTP server.

    A server is defined by a request callback that takes an HTTPRequest
    instance as an argument and writes a valid HTTP response with
    `HTTPRequest.write`. `HTTPRequest.finish` finishes the request (but does
    not necessarily close the connection in the case of HTTP/1.1 keep-alive
    requests). A simple example server that echoes back the URI you
    requested::

        import httpserver
        import ioloop

        def handle_request(request):
           message = "You requested %s\n" % request.uri
           request.write("HTTP/1.1 200 OK\r\nContent-Length: %d\r\n\r\n%s" % (
                         len(message), message))
           request.finish()

        http_server = httpserver.HTTPServer(handle_request)
        http_server.listen(8888)
        ioloop.IOLoop.instance().start()

    `HTTPServer` is a very basic connection handler. Beyond parsing the
    HTTP request body and headers, the only HTTP semantics implemented
    in `HTTPServer` is HTTP/1.1 keep-alive connections. We do not, however,
    implement chunked encoding, so the request callback must provide a
    ``Content-Length`` header or implement chunked encoding for HTTP/1.1
    requests for the server to run correctly for HTTP/1.1 clients. If
    the request handler is unable to do this, you can provide the
    ``no_keep_alive`` argument to the `HTTPServer` constructor, which will
    ensure the connection is closed on every request no matter what HTTP
    version the client is using.

    If ``xheaders`` is ``True``, we support the ``X-Real-Ip`` and ``X-Scheme``
    headers, which override the remote IP and HTTP scheme for all requests.
    These headers are useful when running Tornado behind a reverse proxy or
    load balancer.

    `HTTPServer` can serve SSL traffic with Python 2.6+ and OpenSSL.
    To make this server serve SSL traffic, send the ssl_options dictionary
    argument with the arguments required for the `ssl.wrap_socket` method,
    including "certfile" and "keyfile"::

       HTTPServer(applicaton, ssl_options={
           "certfile": os.path.join(data_dir, "mydomain.crt"),
           "keyfile": os.path.join(data_dir, "mydomain.key"),
       })

    `HTTPServer` initialization follows one of three patterns (the
    initialization methods are defined on `tornado.netutil.TCPServer`):

    1. `~tornado.netutil.TCPServer.listen`: simple single-process::

            server = HTTPServer(app)
            server.listen(8888)
            IOLoop.instance().start()

       In many cases, `tornado.web.Application.listen` can be used to avoid
       the need to explicitly create the `HTTPServer`.

    2. `~tornado.netutil.TCPServer.bind`/`~tornado.netutil.TCPServer.start`:
       simple multi-process::

            server = HTTPServer(app)
            server.bind(8888)
            server.start(0)  # Forks multiple sub-processes
            IOLoop.instance().start()

       When using this interface, an `IOLoop` must *not* be passed
       to the `HTTPServer` constructor.  `start` will always start
       the server on the default singleton `IOLoop`.

    3. `~tornado.netutil.TCPServer.add_sockets`: advanced multi-process::

            sockets = tornado.netutil.bind_sockets(8888)
            tornado.process.fork_processes(0)
            server = HTTPServer(app)
            server.add_sockets(sockets)
            IOLoop.instance().start()

       The `add_sockets` interface is more complicated, but it can be
       used with `tornado.process.fork_processes` to give you more
       flexibility in when the fork happens.  `add_sockets` can
       also be used in single-process servers if you want to create
       your listening sockets in some way other than
       `tornado.netutil.bind_sockets`.

    *:y*:
FunctionDef°
	arguments
internalRoleargs
kwargkwargs
vararg<nil><
Name
ctxParam
internalRoleargs"self*:67H
Name
ctxParam
internalRoleargs"request_callback*:67E
Name
internalRoleargs
ctxParam"no_keep_alive**:67?
Name
ctxParam
internalRoleargs"io_loop*?:67@
Name
internalRoleargs
ctxParam"xheaders*:67C
Name
ctxParam
internalRoleargs"ssl_options*":67Ė
arguments.defaults
promotedPropertyListtrue$
Name
ctxLoad"False*8:#
Name
ctxLoad"None*G:$
Name
ctxLoad"False*:#
Name
ctxLoad"None*.::8*:6±

FunctionDef.body
promotedPropertyListtrueģ
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*	:"request_callback*	:H
Name
ctxLoad
internalRolevalue"request_callback*!:*	:ę
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"no_keep_alive*	:E
Name
ctxLoad
internalRolevalue"no_keep_alive*:*	:Ü
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"xheaders*	:@
Name
ctxLoad
internalRolevalue"xheaders*:*	:Ä
Expr±
Call
internalRolevalue
starargs<nil>:
Name
ctxLoad
internalRoleargs"self*:j
	Attribute
internalRolefunc
ctxLoad?
Name
ctxLoad
internalRolevalue"	TCPServer*	:"__init__*	:iit
keyword
internalRolekeywords>
Name
ctxLoad
internalRolevalue"io_loop**:m"io_loop*:k|
keyword
internalRolekeywordsB
Name
ctxLoad
internalRolevalue"ssl_options*?:m"ssl_options*:k=
Name
ctxLoad
internalRolekwargs"kwargs*:*	:g*	::3"__init__*:24¢	
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
internalRoleargs
ctxParam~
PreviousNoops

end_lineno143
internalRolenoops_previous/
NoopLine
internalRolelines"
*:*:"self*:67>
Name
ctxParam
internalRoleargs"stream*:67?
Name
internalRoleargs
ctxParam"address*%:67*:6ź
FunctionDef.body
promotedPropertyListtrue“
Expr”
Call
internalRolevalue
kwargs<nil>
starargs<nil><
Name
ctxLoad
internalRoleargs"stream*:j=
Name
ctxLoad
internalRoleargs"address* :j
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*):"request_callback*):j
	Attribute
internalRoleargs
ctxLoad:
Name
internalRolevalue
ctxLoad"self*:"no_keep_alive*:j
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*,:"xheaders*,:jE
Name
ctxLoad
internalRolefunc"HTTPConnection*	:ii*	:g*	::3"handle_stream*:24:;"
HTTPServer*/::
ClassDef
internalRolebody
ClassDef.bases
promotedPropertyListtrueŚ
Name
ctxLoadÆ
PreviousNoops

end_lineno148
internalRolenoops_previous/
NoopLine
internalRolelines"
*:/
NoopLine
internalRolelines"
*:*:"	Exception*::<“
ClassDef.body
promotedPropertyListtruep
Expr^
StringLiteral
internalRolevalue",Exception class for malformed HTTP requests.*:y*:
Pass*:n:;"_BadRequestException*::Ā«
ClassDef
internalRolebody
ClassDef.bases
promotedPropertyListtrue×
Name
ctxLoadÆ
PreviousNoops
internalRolenoops_previous

end_lineno153/
NoopLine
internalRolelines"
*:/
NoopLine
internalRolelines"
*:*:"object*::<õØ
ClassDef.body
promotedPropertyListtrue÷
Exprę
StringLiteral
internalRolevalue"µHandles a connection to an HTTP client, executing HTTP requests.

    We parse HTTP headers and bodies, and execute the request callback
    until the HTTP conection is closed.
    *:y*:ś
FunctionDefą
	arguments
vararg<nil>
internalRoleargs
kwarg<nil><
Name
internalRoleargs
ctxParam"self* :67>
Name
internalRoleargs
ctxParam"stream* :67?
Name
ctxParam
internalRoleargs"address*  :67H
Name
ctxParam
internalRoleargs"request_callback* ):67E
Name
internalRoleargs
ctxParam"no_keep_alive* ;:67@
Name
internalRoleargs
ctxParam"xheaders*”:67
arguments.defaults
promotedPropertyListtrue$
Name
ctxLoad"False* I:$
Name
ctxLoad"False*”::8* :6ń
FunctionDef.body
promotedPropertyListtrueŲ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¢	:"stream*¢	:>
Name
ctxLoad
internalRolevalue"stream*¢:*¢	:Ś
Assign
	Attribute
ctxStore
internalRoletargets:
Name
internalRolevalue
ctxLoad"self*£	:"address*£	:?
Name
ctxLoad
internalRolevalue"address*£:*£	:ģ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¤	:"request_callback*¤	:H
Name
ctxLoad
internalRolevalue"request_callback*¤!:*¤	:ę
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*„	:"no_keep_alive*„	:E
Name
internalRolevalue
ctxLoad"no_keep_alive*„:*„	:Ü
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¦	:"xheaders*¦	:@
Name
ctxLoad
internalRolevalue"xheaders*¦:*¦	:Ų
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*§	:"_request*§	:<
Name
ctxLoad
internalRolevalue"None*§:*§	:ā
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*Ø	:"_request_finished*Ø	:=
Name
ctxLoad
internalRolevalue"False*Ø":*Ø	:·
AssignÄ
	Attribute
internalRoletargets
ctxStoreń
Name
ctxLoad
internalRolevalue“
PreviousNoops

end_lineno170
internalRolenoops_previousu
NoopLine
internalRolelines"G        # Save stack context here, outside of any request.  This keeps
*©:n
NoopLine
internalRolelines"@        # contexts from one request from leaking into the next.
*Ŗ:*©:"self*«	:"_header_callback*«	:Ś
Call
internalRolevalue
kwargs<nil>
starargs<nil>
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*«4:"_on_headers*«4:j
	Attribute
ctxLoad
internalRolefuncC
Name
internalRolevalue
ctxLoad"stack_context*«!:"wrap*«!:ii*«!:g*«	:š
ExprŻ
Call
starargs<nil>
internalRolevalue
kwargs<nil>½
Call
starargs<nil>
internalRoleargs
kwargs<nil>6
StringLiteral
internalRoleargs"

*¬":yj8
Name
ctxLoad
internalRolefunc"b*¬ :ii*¬ :jg
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*¬/:"_header_callback*¬/:jÅ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*¬	:"stream*¬	:"
read_until*¬	:ii*¬	:g*¬	:ß
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*­	:"_write_callback*­	:<
Name
ctxLoad
internalRolevalue"None*­ :*­	::3"__init__* :24Ļ
FunctionDefę
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno174/
NoopLine
internalRolelines"
*®:*®:"self*Æ:67=
Name
ctxParam
internalRoleargs"chunk*Æ:67@
Name
ctxParam
internalRoleargs"callback*Æ:67Z
arguments.defaults
promotedPropertyListtrue#
Name
ctxLoad"None*Æ%::8*Æ:6Ć
FunctionDef.body
promotedPropertyListtruek
ExprY
StringLiteral
internalRolevalue"'Writes a chunk of output to the stream.*°	:y*°	:Ņ
Assert>
StringLiteral
internalRolemsg"Request closed*±:y~
	Attribute
ctxLoad
internalRoletest:
Name
ctxLoad
internalRolevalue"self*±:"_request*±:*±	:fĖ

IfÓ
If.body
promotedPropertyListtrue¹
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*³:"_write_callback*³:
Call
starargs<nil>
internalRolevalue
kwargs<nil>>
Name
internalRoleargs
ctxLoad"callback*³7:j
	Attribute
ctxLoad
internalRolefuncC
Name
ctxLoad
internalRolevalue"stack_context*³$:"wrap*³$:ii*³$:g*³:ź
Expr×
Call
internalRolevalue
kwargs<nil>
starargs<nil>;
Name
internalRoleargs
ctxLoad"chunk*“:j
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*“&:"_on_write_complete*“&:jĄ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*“:"stream*“:"write*“:ii*“:g*“::Hä
UnaryOp
internalRoletest$
Not
internalRoleop"!*²:'
Call
kwargs<nil>
starargs<nil>
internalRoleoperandĮ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*²:"stream*²:"closed*²:ii*²:g*²:G*²	:F:3"write*Æ:24
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno181
internalRolenoops_previous/
NoopLine
internalRolelines"
*µ:*µ:"self*¶:67*¶:6Ų	
FunctionDef.body
promotedPropertyListtrueY
ExprG
StringLiteral
internalRolevalue"Finishes the request.*·	:y*·	:Ņ
Assert>
StringLiteral
internalRolemsg"Request closed*ø:y~
	Attribute
internalRoletest
ctxLoad:
Name
internalRolevalue
ctxLoad"self*ø:"_request*ø:*ø	:fį
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*¹	:"_request_finished*¹	:<
Name
ctxLoad
internalRolevalue"True*¹":*¹	:
If
If.body
promotedPropertyListtrueč
ExprÕ
Call
internalRolevalue
kwargs<nil>
starargs<nil>
	Attribute
internalRolefunc
ctxLoad:
Name
ctxLoad
internalRolevalue"self*»:"_finish_request*»:ii*»:g*»::Hå
UnaryOp
internalRoletest$
Not
internalRoleop"!*ŗ:'
Call
kwargs<nil>
starargs<nil>
internalRoleoperandĀ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*ŗ:"stream*ŗ:"writing*ŗ:ii*ŗ:g*ŗ:G*ŗ	:F:3"finish*¶:24 
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
internalRoleargs
ctxParam~
PreviousNoops

end_lineno188
internalRolenoops_previous/
NoopLine
internalRolelines"
*¼:*¼:"self*½:67*½:6ä
FunctionDef.body
promotedPropertyListtrue
If
If.body
promotedPropertyListtrueć
AssignC
Name
ctxStore
internalRoletargets"callback*æ:
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*æ:"_write_callback*æ:*æ:ß
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*Ą:"_write_callback*Ą:<
Name
internalRolevalue
ctxLoad"None*Ą$:*Ą:
Expr
Call
internalRolevalue
kwargs<nil>
starargs<nil>?
Name
ctxLoad
internalRolefunc"callback*Į:ii*Į:g*Į::HŁ
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"None*¾(::
	Attribute
internalRoleleft
ctxLoad:
Name
ctxLoad
internalRolevalue"self*¾:"_write_callback*¾:G
Compare.ops
promotedPropertyListtrue
IsNot"not is*¾::*¾:G*¾	:FŖ
If
If.body
promotedPropertyListtrueč
ExprÕ
Call
starargs<nil>
internalRolevalue
kwargs<nil>
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*Ź:"_finish_request*Ź:ii*Ź:g*Ź::H
BoolOp
internalRoletest!
And
internalRoleop*É:%Ź
	Attribute
internalRolevalues
ctxLoadś
Name
ctxLoad
internalRolevalue½
PreviousNoops

end_lineno200
internalRolenoops_previousr
NoopLine
internalRolelines"D        # _on_write_complete is enqueued on the IOLoop whenever the
*Ā:u
NoopLine
internalRolelines"G        # IOStream's write buffer becomes empty, but it's possible for
*Ć:n
NoopLine
internalRolelines"@        # another callback that runs on the IOLoop before it to
*Ä:s
NoopLine
internalRolelines"E        # simultaneously write more data and finish the request.  If
*Å:f
NoopLine
internalRolelines"8        # there is still data in the IOStream, a future
*Ę:k
NoopLine
internalRolelines"=        # _on_write_complete will be responsible for calling
*Ē:I
NoopLine
internalRolelines"        # _finish_request.
*Č:*Ā:"self*É:"_request_finished*É:ę
UnaryOp
internalRolevalues$
Not
internalRoleop"!*É:'
Call
starargs<nil>
internalRoleoperand
kwargs<nil>Ā
	Attribute
internalRolefunc
ctxLoad}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*É+:"stream*É+:"writing*É+:ii*É+:g*É':*É:G*É	:F:3"_on_write_complete*½:24Č-
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno203
internalRolenoops_previous/
NoopLine
internalRolelines"
*Ė:*Ė:"self*Ģ:67*Ģ:6+
FunctionDef.body
promotedPropertyListtrueŽ
IfÅ
If.body
promotedPropertyListtrue
AssignE
Name
ctxStore
internalRoletargets"
disconnect*Ī:<
Name
ctxLoad
internalRolevalue"True*Ī:*Ī::Hž
	If.orelse
promotedPropertyListtrue÷
AssignL
Name
internalRoletargets
ctxStore"connection_header*Š:
Call
internalRolevalue
kwargs<nil>
starargs<nil><
StringLiteral
internalRoleargs"
Connection*Š;:yj
	Attribute
ctxLoad
internalRolefuncĆ
	Attribute
ctxLoad
internalRolevalue
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*Š!:"_request*Š!:"headers*Š!:"get*Š!:ii*Š!:g*Š:
Ifė
If.body
promotedPropertyListtrue¾
AssignL
Name
ctxStore
internalRoletargets"connection_header*Ņ:Ś
Call
kwargs<nil>
starargs<nil>
internalRolevalue
	Attribute
internalRolefunc
ctxLoadG
Name
ctxLoad
internalRolevalue"connection_header*Ņ%:"lower*Ņ%:ii*Ņ%:g*Ņ::H
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"None*Ń)::G
Name
internalRoleleft
ctxLoad"connection_header*Ń:G
Compare.ops
promotedPropertyListtrue
IsNot"not is*Ń::*Ń:G*Ń:Fŗ
If
If.body
promotedPropertyListtrueę
AssignE
Name
ctxStore
internalRoletargets"
disconnect*Ō:
Compare
internalRolevalueU
Compare.comparators
promotedPropertyListtrue 
StringLiteral"close*Ō3:yF
Name
ctxLoad
internalRoleleft"connection_header*Ō:=
Compare.ops
promotedPropertyListtrue
Eq"==*Ō:*Ō:*Ō::Hō
	If.orelse
promotedPropertyListtrueÅ
If
If.body
promotedPropertyListtrueī
AssignE
Name
internalRoletargets
ctxStore"
disconnect*×:
Compare
internalRolevalueZ
Compare.comparators
promotedPropertyListtrue%
StringLiteral"
keep-alive*×3:yF
Name
ctxLoad
internalRoleleft"connection_header*×:@
Compare.ops
promotedPropertyListtrue
NotEq"!=*×:*×:*×::HĒ
	If.orelse
promotedPropertyListtrue
AssignE
Name
ctxStore
internalRoletargets"
disconnect*Ł:<
Name
internalRolevalue
ctxLoad"True*Ł:*Ł::IĢ
BoolOp
internalRoletest 
Or
internalRoleop*Õ:&
Compare
internalRolevaluesā
Compare.comparators
promotedPropertyListtrue¬
	Attribute
ctxLoad
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*Õ':"_request*Õ':"headers*Õ':?
StringLiteral
internalRoleleft"Content-Length*Õ:y=
Compare.ops
promotedPropertyListtrue
In"in*Õ:*Õļ
Compare
internalRolevaluesĮ
Compare.comparators
promotedPropertyListtrue
Tuple
ctxLoad5
StringLiteral
internalRoleelts"HEAD*Ö1:y4
StringLiteral
internalRoleelts"GET*Ö9:y*Ö1:zĮ
	Attribute
ctxLoad
internalRoleleft
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ö:"_request*Ö:"method*Ö:=
Compare.ops
promotedPropertyListtrue
In"in*Ö:*Ö*Õ:G*Õ:F:I
Call
internalRoletest
kwargs<nil>
starargs<nil>Ī
	Attribute
ctxLoad
internalRolefunc
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*Ó:"_request*Ó:"supports_http_1_1*Ó:ii*Ó:gG*Ó:F:I
	Attribute
ctxLoad
internalRoletest:
Name
ctxLoad
internalRolevalue"self*Ķ:"no_keep_alive*Ķ:G*Ķ	:FŲ
Assign
	Attribute
internalRoletargets
ctxStore:
Name
internalRolevalue
ctxLoad"self*Ś	:"_request*Ś	:<
Name
ctxLoad
internalRolevalue"None*Ś:*Ś	:ā
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*Ū	:"_request_finished*Ū	:=
Name
ctxLoad
internalRolevalue"False*Ū":*Ū	:Å
Ifņ
If.body
promotedPropertyListtrue”
Expr
Call
kwargs<nil>
starargs<nil>
internalRolevalueĄ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ż:"stream*Ż:"close*Ż:ii*Ż:g*Ż:"
Return
value<nil>*Ž:`:H@
Name
ctxLoad
internalRoletest"
disconnect*Ü:G*Ü	:Fš
ExprŻ
Call
kwargs<nil>
starargs<nil>
internalRolevalue½
Call
kwargs<nil>
starargs<nil>
internalRoleargs6
StringLiteral
internalRoleargs"

*ß":yj8
Name
internalRolefunc
ctxLoad"b*ß :ii*ß :jg
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*ß/:"_header_callback*ß/:jÅ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ß	:"stream*ß	:"
read_until*ß	:ii*ß	:g*ß	::3"_finish_request*Ģ:24µc
FunctionDefĒ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno224
internalRolenoops_previous/
NoopLine
internalRolelines"
*ą:*ą:"self*į:67<
Name
ctxParam
internalRoleargs"data*į:67*į:6Ā`
FunctionDef.body
promotedPropertyListtrue`
	TryExcept
Assign
internalRolebody?
Name
ctxStore
internalRoletargets"data*ć:
Call
kwargs<nil>
starargs<nil>
internalRolevalue
Call
starargs<nil>
internalRoleargs
kwargs<nil>8
StringLiteral
internalRoleargs"latin1*ć+:yj~
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"data*ć:"decode*ć:ii*ć:jgA
Name
ctxLoad
internalRolefunc"
native_str*ć:ii*ć:g*ć:ķ
Assign
internalRolebody>
Name
ctxStore
internalRoletargets"eol*ä:
Call
internalRolevalue
kwargs<nil>
starargs<nil>4
StringLiteral
internalRoleargs"
*ä:yj|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"data*ä:"find*ä:ii*ä:g*ä:ć
Assign
internalRolebodyE
Name
ctxStore
internalRoletargets"
start_line*å:š
	Subscript
ctxLoad
internalRolevaluex
Slice
internalRoleslice
lower<nil>
step<nil>9
Name
ctxLoad
internalRoleupper"eol*å ::
Name
ctxLoad
internalRolevalue"data*å:*å:*å:
	TryExcept
internalRolebody©
Assign
internalRolebodyņ
Tuple
ctxStore
internalRoletargets<
Name
internalRoleelts
ctxStore"method*ē:9
Name
ctxStore
internalRoleelts"uri*ē:=
Name
ctxStore
internalRoleelts"version*ē:*ē:z
Call
internalRolevalue
kwargs<nil>
starargs<nil>3
StringLiteral
internalRoleargs" *ē9:yj
	Attribute
internalRolefunc
ctxLoad@
Name
ctxLoad
internalRolevalue"
start_line*ē(:"split*ē(:ii*ē(:g*ē:­
ExceptHandler
internalRolehandlersÆ
Raise
inst<nil>
internalRolebody
tback<nil>ę
Call
internalRoletype
kwargs<nil>
starargs<nil>M
StringLiteral
internalRoleargs"Malformed HTTP request line*é,:yjK
Name
internalRolefunc
ctxLoad"_BadRequestException*é:ii*é:g*é:e?
Name
internalRoletype
ctxLoad"
ValueError*č:"<nil>*č:c*ę:cį
If
internalRolebodyÖ
If.body
promotedPropertyListtrue©
Raise
tback<nil>
inst<nil>ö
Call
internalRoletype
kwargs<nil>
starargs<nil>]
StringLiteral
internalRoleargs"+Malformed HTTP version in HTTP Request-Line*ė,:yjK
Name
ctxLoad
internalRolefunc"_BadRequestException*ė:ii*ė:g*ė:e:Hį
UnaryOp
internalRoletest$
Not
internalRoleop"!*ź:'
Call
internalRoleoperand
kwargs<nil>
starargs<nil>7
StringLiteral
internalRoleargs"HTTP/*ź':yj
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"version*ź:"
startswith*ź:ii*ź:g*ź:G*ź:Fū
Assign
internalRolebodyB
Name
ctxStore
internalRoletargets"headers*ģ:
Call
starargs<nil>
internalRolevalue
kwargs<nil>ī
	Subscript
internalRoleargs
ctxLoadx
Slice
step<nil>
upper<nil>
internalRoleslice9
Name
ctxLoad
internalRolelower"eol*ģ7::
Name
internalRolevalue
ctxLoad"data*ģ2:*ģ2:jŹ
	Attribute
ctxLoad
internalRolefunc
	Attribute
ctxLoad
internalRolevalue>
Name
ctxLoad
internalRolevalue"httputil*ģ:"HTTPHeaders*ģ:"parse*ģ:ii*ģ:g*ģ:Ń
If
internalRolebodyŃ
If.body
promotedPropertyListtrue¤
Assignļ
Name
ctxStore
internalRoletargetsØ
PreviousNoops

end_lineno242
internalRolenoops_previousw
NoopLine
internalRolelines"I                # Jython 2.5.2 doesn't have the socket.family attribute,
*ń:`
NoopLine
internalRolelines"2                # so just assume IP in that case.
*ņ:*ń:"	remote_ip*ó:
	Subscript
ctxLoad
internalRolevalue`
Index
internalRoleslice@

NumLiteral
NumTypeint
internalRolevalue"0*ó*:v~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ó:"address*ó:*ó:*ó::H
	If.orelse
promotedPropertyListtrueŁ
Assign
Name
ctxStore
internalRoletargetsæ
PreviousNoops

end_lineno245
internalRolenoops_previousp
NoopLine
internalRolelines"B                # Unix (or other) socket; fake the remote address
*õ:*õ:"	remote_ip*ö:;
StringLiteral
internalRolevalue"0.0.0.0*ö:y*ö::IĖ	
Compare
internalRoletestŪ
Compare.comparators
promotedPropertyListtrue¢
Tuple
ctxLoad
	Attribute
ctxLoad
internalRoleelts<
Name
ctxLoad
internalRolevalue"socket*š:"AF_INET*š:
	Attribute
internalRoleelts
ctxLoad<
Name
ctxLoad
internalRolevalue"socket*š!:"AF_INET6*š!:*š:z:ž
Call
internalRoleleft
kwargs<nil>
starargs<nil>Ą
	Attribute
ctxLoad
internalRoleargs}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*ļ:"stream*ļ:"socket*ļ:j8
StringLiteral
internalRoleargs"family*ļ,:yj
	Attribute
ctxLoad
internalRoleargs<
Name
ctxLoad
internalRolevalue"socket*ļ6:"AF_INET*ļ6:j°
Name
ctxLoad
internalRolefuncļ
PreviousNoops

end_lineno238
internalRolenoops_previous/
NoopLine
internalRolelines"
*ķ:o
NoopLine
internalRolelines"A            # HTTPRequest wants an IP, not a full socket address
*ī:*ķ:"getattr*ļ:ii*ļ:g@
Compare.ops
promotedPropertyListtrue
In"in*ļ::*ļ:G*ļ:F	
Assign
internalRolebody
	Attribute
internalRoletargets
ctxStoreŗ
Name
internalRolevalue
ctxLoad~
PreviousNoops
internalRolenoops_previous

end_lineno247/
NoopLine
internalRolelines"
*÷:*÷:"self*ų:"_request*ų:Ļ
Call
internalRolevalue
kwargs<nil>
starargs<nil>B
Name
ctxLoad
internalRolefunc"HTTPRequest*ų:iit
keyword
internalRolekeywords;
Name
ctxLoad
internalRolevalue"self*ł:m"
connection*ų:kr
keyword
internalRolekeywords=
Name
ctxLoad
internalRolevalue"method*ł):m"method*ų:kl
keyword
internalRolekeywords:
Name
ctxLoad
internalRolevalue"uri*ł5:m"uri*ų:kt
keyword
internalRolekeywords>
Name
ctxLoad
internalRolevalue"version*łB:m"version*ų:kt
keyword
internalRolekeywords>
Name
ctxLoad
internalRolevalue"headers*ś:m"headers*ų:kx
keyword
internalRolekeywords@
Name
ctxLoad
internalRolevalue"	remote_ip*ś,:m"	remote_ip*ų:k*ų:g*ų:
Assign
internalRolebodyÉ
Name
ctxStore
internalRoletargets~
PreviousNoops

end_lineno251
internalRolenoops_previous/
NoopLine
internalRolelines"
*ū:*ū:"content_length*ü:
Call
internalRolevalue
kwargs<nil>
starargs<nil>@
StringLiteral
internalRoleargs"Content-Length*ü*:yj~
	Attribute
internalRolefunc
ctxLoad=
Name
ctxLoad
internalRolevalue"headers*ü:"get*ü:ii*ü:g*ü:š
If
internalRolebody
If.body
promotedPropertyListtrue°
AssignI
Name
ctxStore
internalRoletargets"content_length*ž:Ļ
Call
internalRolevalue
kwargs<nil>
starargs<nil>D
Name
ctxLoad
internalRoleargs"content_length*ž&:j:
Name
internalRolefunc
ctxLoad"int*ž":ii*ž":g*ž:õ
IfĀ
If.body
promotedPropertyListtrue
Raise
inst<nil>
tback<nil>ā
Call
kwargs<nil>
starargs<nil>
internalRoletypeI
StringLiteral
internalRoleargs"Content-Length too long*0:yjK
Name
ctxLoad
internalRolefunc"_BadRequestException*:ii*:g*:e:H
Compare
internalRoletestė
Compare.comparators
promotedPropertyListtrue²
	Attribute
ctxLoad}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*’%:"stream*’%:"max_buffer_size*’%::D
Name
ctxLoad
internalRoleleft"content_length*’:?
Compare.ops
promotedPropertyListtrue
Gt">*’::*’:G*’:F
If„
If.body
promotedPropertyListtrueų
Exprå
Call
internalRolevalue
kwargs<nil>
starargs<nil>Ō
Call
internalRoleargs
kwargs<nil>
starargs<nil>M
StringLiteral
internalRoleargs"HTTP/1.1 100 (Continue)

*):yj8
Name
ctxLoad
internalRolefunc"b*':ii*':jgĄ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"stream*:"write*:ii*:g*::HÕ
Compare
internalRoletest_
Compare.comparators
promotedPropertyListtrue'
StringLiteral"100-continue*-:y:
Call
internalRoleleft
kwargs<nil>
starargs<nil>8
StringLiteral
internalRoleargs"Expect* :yj~
	Attribute
internalRolefunc
ctxLoad=
Name
ctxLoad
internalRolevalue"headers*:"get*:ii*:g@
Compare.ops
promotedPropertyListtrue
Eq"==*::*:G*:Fö
Exprć
Call
internalRolevalue
kwargs<nil>
starargs<nil>D
Name
ctxLoad
internalRoleargs"content_length*(:j
	Attribute
internalRoleargs
ctxLoad:
Name
internalRolevalue
ctxLoad"self*8:"_on_request_body*8:jÅ
	Attribute
ctxLoad
internalRolefunc}
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*:"stream*:"
read_bytes*:ii*:g*:"
Return
value<nil>*:`:HD
Name
ctxLoad
internalRoletest"content_length*ż:G*ż:F
Expr
internalRolebodyŲ
Call
internalRolevalue
kwargs<nil>
starargs<nil>
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*#:"_request*#:j
	Attribute
ctxLoad
internalRolefuncŗ
Name
internalRolevalue
ctxLoad~
PreviousNoops
internalRolenoops_previous

end_lineno261/
NoopLine
internalRolelines"
*:*:"self*:"request_callback*:ii*:g*:Ļ	
ExceptHandler
internalRolehandlers”
Expr
internalRolebodyų
Call
internalRolevalue
kwargs<nil>
starargs<nil>T
StringLiteral
internalRoleargs""Malformed HTTP request from %s: %s*:yj
	Subscript
ctxLoad
internalRoleargs`
Index
internalRoleslice@

NumLiteral
NumTypeint
internalRolevalue"0*':v~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"address*:*:j7
Name
ctxLoad
internalRoleargs"e*+:j
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"logging*:"info*:ii*:g*:·
Expr
internalRolebody
Call
starargs<nil>
internalRolevalue
kwargs<nil>Ą
	Attribute
internalRolefunc
ctxLoad}
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"stream*:"close*:ii*:g*:8
Return
internalRolebody
value<nil>*:`7
Name
ctxStore
internalRolename"e*&:I
Name
internalRoletype
ctxLoad"_BadRequestException*:*	:c*ā	:c:3"_on_headers*į:24Č@
FunctionDefĒ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs¼
Name
internalRoleargs
ctxParam~
PreviousNoops
internalRolenoops_previous

end_lineno268/
NoopLine
internalRolelines"
*:*:"self*:67<
Name
ctxParam
internalRoleargs"data* :67*:6Š=
FunctionDef.body
promotedPropertyListtrue
AssignÅ
	Attribute
internalRoletargets
ctxStore
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*	:"_request*	:"body*	:<
Name
ctxLoad
internalRolevalue"data*:*	:¦
AssignG
Name
internalRoletargets
ctxStore"content_type*	:Ē
Call
starargs<nil>
internalRolevalue
kwargs<nil>>
StringLiteral
internalRoleargs"Content-Type*2:yj0
StringLiteral
internalRoleargs*B:yj
	Attribute
ctxLoad
internalRolefuncĆ
	Attribute
ctxLoad
internalRolevalue
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"_request*:"headers*:"get*:ii*:g*	:č3
If¤/
If.body
promotedPropertyListtrue÷.
If©
If.body
promotedPropertyListtrueÄ
AssignD
Name
ctxStore
internalRoletargets"	arguments*:č
Call
internalRolevalue
kwargs<nil>
starargs<nil>Ń
Call
internalRoleargs
kwargs<nil>
starargs<nil>Ą
	Attribute
ctxLoad
internalRoleargs
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*7:"_request*7:"body*7:jA
Name
ctxLoad
internalRolefunc"
native_str*,:ii*,:jgE
Name
ctxLoad
internalRolefunc"parse_qs_bytes*:ii*:g*:µ
For

For.body
promotedPropertyListtrueø
AssignA
Name
ctxStore
internalRoletargets"values*:ß
ListComp
internalRolevalue5
Name
ctxLoad
internalRoleelt"v*:ł
ListComp.generators
promotedPropertyListtrueĆ
comprehension5
Name
ctxLoad
internalRoleifs"v*4:<
Name
ctxLoad
internalRoleiter"values**:R:
Name
ctxStore
internalRoletarget"v*%:Q:T*:*:®
Ifß
If.body
promotedPropertyListtrue²
Expr
Call
starargs<nil>
internalRolevalue
kwargs<nil><
Name
internalRoleargs
ctxLoad"values*:j
	Attribute
ctxLoad
internalRolefuncĪ
Call
internalRolevalue
kwargs<nil>
starargs<nil>:
Name
ctxLoad
internalRoleargs"name*<:j4
List
internalRoleargs
ctxLoad*B:sj
	Attribute
ctxLoad
internalRolefuncÅ
	Attribute
internalRolevalue
ctxLoad
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"_request*:"	arguments*:"
setdefault*:ii*:g"extend*:ii*:g*::H<
Name
ctxLoad
internalRoletest"values*:G*:F:SŌ
Call
internalRoleiter
kwargs<nil>
starargs<nil>
	Attribute
ctxLoad
internalRolefunc?
Name
ctxLoad
internalRolevalue"	arguments*%:"	iteritems*%:ii*%:gQ²
Tuple
ctxStore
internalRoletarget:
Name
ctxStore
internalRoleelts"name*:<
Name
ctxStore
internalRoleelts"values*:*:zR*:T:H
	If.orelse
promotedPropertyListtrueŪ
IfØ
If.body
promotedPropertyListtrueć
AssignA
Name
internalRoletargets
ctxStore"fields*:
Call
internalRolevalue
kwargs<nil>
starargs<nil>3
StringLiteral
internalRoleargs";*-:yj
	Attribute
ctxLoad
internalRolefuncB
Name
internalRolevalue
ctxLoad"content_type*:"split*:ii*:g*:
For 
For.body
promotedPropertyListtrue
Assignē
Tuple
internalRoletargets
ctxStore7
Name
ctxStore
internalRoleelts"k*:9
Name
internalRoleelts
ctxStore"sep*:7
Name
ctxStore
internalRoleelts"v*:*:z
Call
kwargs<nil>
starargs<nil>
internalRolevalue3
StringLiteral
internalRoleargs"=*9:yj
	Attribute
ctxLoad
internalRolefuncĖ
Call
internalRolevalue
kwargs<nil>
starargs<nil>~
	Attribute
ctxLoad
internalRolefunc;
Name
internalRolevalue
ctxLoad"field*!:"strip*!:ii*!:g"	partition*!:ii*!:g*:×

IfĀ
If.body
promotedPropertyListtrue
Exprļ
Call
kwargs<nil>
starargs<nil>
internalRolevalueĮ
Call
internalRoleargs
kwargs<nil>
starargs<nil>7
Name
ctxLoad
internalRoleargs"v*":j;
Name
ctxLoad
internalRolefunc"utf8*:ii*:jg:
Name
ctxLoad
internalRoleargs"data*&:jÅ
	Attribute
ctxLoad
internalRoleargs
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*:"_request*:"	arguments*:jĮ
	Attribute
internalRoleargs
ctxLoad
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self* :"_request* :"files* :j
	Attribute
ctxLoad
internalRolefunc>
Name
ctxLoad
internalRolevalue"httputil*:"parse_multipart_form_data*:ii*:g*:
Break*”:[:H
BoolOp
internalRoletest!
And
internalRoleop*:%ł
Compare
internalRolevaluesX
Compare.comparators
promotedPropertyListtrue#
StringLiteral"boundary*:y6
Name
ctxLoad
internalRoleleft"k*:=
Compare.ops
promotedPropertyListtrue
Eq"==*:*8
Name
ctxLoad
internalRolevalues"v*,:*:G*:F:S<
Name
ctxLoad
internalRoleiter"fields*:Qā

For.orelse
promotedPropertyListtrue²
Expr
Call
starargs<nil>
internalRolevalue
kwargs<nil>M
StringLiteral
internalRoleargs"Invalid multipart/form-data*£%:yj
	Attribute
ctxLoad
internalRolefunc=
Name
ctxLoad
internalRolevalue"logging*£:"warning*£:ii*£:g*£::I>
Name
internalRoletarget
ctxStore"field*:R*:T:H
Call
starargs<nil>
internalRoletest
kwargs<nil>E
StringLiteral
internalRoleargs"multipart/form-data**:yj
	Attribute
ctxLoad
internalRolefuncB
Name
internalRolevalue
ctxLoad"content_type*:"
startswith*:ii*:gG*:F:I­
Call
internalRoletest
kwargs<nil>
starargs<nil>S
StringLiteral
internalRoleargs"!application/x-www-form-urlencoded*(:yj
	Attribute
ctxLoad
internalRolefuncB
Name
ctxLoad
internalRolevalue"content_type*:"
startswith*:ii*:gG*:F:H°
Compare
internalRoletestü
Compare.comparators
promotedPropertyListtrueĆ
Tuple
ctxLoad5
StringLiteral
internalRoleelts"POST*%:y6
StringLiteral
internalRoleelts"PATCH*-:y4
StringLiteral
internalRoleelts"PUT*6:y*%:z:Ā
	Attribute
ctxLoad
internalRoleleft
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"_request*:"method*:@
Compare.ops
promotedPropertyListtrue
In"in*::*:G*	:Fź
Expr×
Call
internalRolevalue
kwargs<nil>
starargs<nil>
	Attribute
internalRoleargs
ctxLoad:
Name
ctxLoad
internalRolevalue"self*¤:"_request*¤:j
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"self*¤	:"request_callback*¤	:ii*¤	:g*¤	::3"_on_request_body*:24:;"HTTPConnection*::×ū
ClassDef
internalRolebody
ClassDef.bases
promotedPropertyListtrue×
Name
ctxLoadÆ
PreviousNoops

end_lineno294
internalRolenoops_previous/
NoopLine
internalRolelines"
*„:/
NoopLine
internalRolelines"
*¦:*„:"object*§::<ł
ClassDef.body
promotedPropertyListtrueŁ
ExprČ
StringLiteral
internalRolevalue"A single HTTP request.

    All attributes are type `str` unless otherwise noted.

    .. attribute:: method

       HTTP request method, e.g. "GET" or "POST"

    .. attribute:: uri

       The requested uri.

    .. attribute:: path

       The path portion of `uri`

    .. attribute:: query

       The query portion of `uri`

    .. attribute:: version

       HTTP version specified in request, e.g. "HTTP/1.1"

    .. attribute:: headers

       `HTTPHeader` dictionary-like object for request headers.  Acts like
       a case-insensitive dictionary with additional methods for repeated
       headers.

    .. attribute:: body

       Request body, if present, as a byte string.

    .. attribute:: remote_ip

       Client's IP address as a string.  If `HTTPServer.xheaders` is set,
       will pass along the real IP address provided by a load balancer
       in the ``X-Real-Ip`` header

    .. attribute:: protocol

       The protocol used, either "http" or "https".  If `HTTPServer.xheaders`
       is set, will pass along the protocol used by a load balancer if
       reported via an ``X-Scheme`` header.

    .. attribute:: host

       The requested hostname, usually taken from the ``Host`` header.

    .. attribute:: arguments

       GET/POST arguments are available in the arguments property, which
       maps arguments names to lists of values (to support multiple values
       for individual names). Names are of type `str`, while arguments
       are byte strings.  Note that this is different from
       `RequestHandler.get_argument`, which returns argument values as
       unicode strings.

    .. attribute:: files

       File uploads are available in the files property, which maps file
       names to lists of :class:`HTTPFile`.

    .. attribute:: connection

       An HTTP request is attached to a single HTTP connection, which can
       be accessed through the "connection" attribute. Since connections
       are typically kept open in HTTP/1.1, multiple requests can be handled
       sequentially on a single connection.
    *ī:y*ī:ģe
FunctionDefė
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs<
Name
ctxParam
internalRoleargs"self*ļ:67>
Name
ctxParam
internalRoleargs"method*ļ:67;
Name
ctxParam
internalRoleargs"uri*ļ :67?
Name
internalRoleargs
ctxParam"version*ļ%:67?
Name
ctxParam
internalRoleargs"headers*ļ9:67<
Name
ctxParam
internalRoleargs"body*š:67A
Name
internalRoleargs
ctxParam"	remote_ip*š:67@
Name
ctxParam
internalRoleargs"protocol*š-:67<
Name
internalRoleargs
ctxParam"host*š<:67=
Name
ctxParam
internalRoleargs"files*ń:67B
Name
ctxParam
internalRoleargs"
connection*ń:67Ż
arguments.defaults
promotedPropertyListtrue#
StringLiteral"HTTP/1.0*ļ-:y#
Name
ctxLoad"None*ļA:#
Name
ctxLoad"None*š:#
Name
ctxLoad"None*š':#
Name
ctxLoad"None*š6:#
Name
ctxLoad"None*šA:#
Name
ctxLoad"None*ń:#
Name
ctxLoad"None*ń)::8*ļ:6Ų\
FunctionDef.body
promotedPropertyListtrueŲ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ņ	:"method*ņ	:>
Name
ctxLoad
internalRolevalue"method*ņ:*ņ	:Ń
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*ó	:"uri*ó	:;
Name
ctxLoad
internalRolevalue"uri*ó:*ó	:Ś
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*ō	:"version*ō	:?
Name
ctxLoad
internalRolevalue"version*ō:*ō	:
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*õ	:"headers*õ	:å
BoolOp
internalRolevalue 
Or
internalRoleop*õ:&>
Name
ctxLoad
internalRolevalues"headers*õ:Ö
Call
internalRolevalues
kwargs<nil>
starargs<nil>
	Attribute
ctxLoad
internalRolefunc>
Name
ctxLoad
internalRolevalue"httputil*õ#:"HTTPHeaders*õ#:ii*õ#:g*õ:*õ	:Õ
Assign
	Attribute
internalRoletargets
ctxStore:
Name
ctxLoad
internalRolevalue"self*ö	:"body*ö	:¼
BoolOp
internalRolevalue 
Or
internalRoleop*ö:&;
Name
ctxLoad
internalRolevalues"body*ö:1
StringLiteral
internalRolevalues*ö:y*ö:*ö	:Č,
If³
If.body
promotedPropertyListtrue¾
AssignÅ
	Attribute
ctxStore
internalRoletargetsł
Name
ctxLoad
internalRolevalue¼
PreviousNoops
internalRolenoops_previous

end_lineno376m
NoopLine
internalRolelines"?            # Squid uses X-Forwarded-For, others use X-Real-Ip
*ų:*ų:"self*ł:"	remote_ip*ł:ą
Call
internalRolevalue
kwargs<nil>
starargs<nil>;
StringLiteral
internalRoleargs"	X-Real-Ip*ś:yj
Call
internalRoleargs
kwargs<nil>
starargs<nil>A
StringLiteral
internalRoleargs"X-Forwarded-For*ś/:yj?
Name
ctxLoad
internalRoleargs"	remote_ip*śB:jæ
	Attribute
internalRolefunc
ctxLoad~
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*ś:"headers*ś:"get*ś:ii*ś:jgæ
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ł:"headers*ł:"get*ł:ii*ł:g*ł:Ę
If
If.body
promotedPropertyListtrueŽ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*ü:"	remote_ip*ü:A
Name
ctxLoad
internalRolevalue"	remote_ip*ü":*ü::H§
UnaryOp
internalRoletest$
Not
internalRoleop"!*ū:'Ō
Call
internalRoleoperand
kwargs<nil>
starargs<nil>
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*ū#:"	remote_ip*ū#:j
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"self*ū:"	_valid_ip*ū:ii*ū:g*ū:G*ū:F§
Assign®
	Attribute
ctxStore
internalRoletargetsć
Name
ctxLoad
internalRolevalue¦
PreviousNoops

end_lineno381
internalRolenoops_previousW
NoopLine
internalRolelines")            # AWS uses X-Forwarded-Proto
*ż:*ż:"self*ž:"protocol*ž:ą
Call
internalRolevalue
kwargs<nil>
starargs<nil>:
StringLiteral
internalRoleargs"X-Scheme*’:yj
Call
starargs<nil>
internalRoleargs
kwargs<nil>C
StringLiteral
internalRoleargs"X-Forwarded-Proto*’.:yj>
Name
ctxLoad
internalRoleargs"protocol*’C:jæ
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*’:"headers*’:"get*’:ii*’:jgæ
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*ž:"headers*ž:"get*ž:ii*ž:g*ž:Ņ
If
If.body
promotedPropertyListtrueŌ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*:"protocol*:8
StringLiteral
internalRolevalue"http*!:y*::H½
Compare
internalRoletestĘ
Compare.comparators
promotedPropertyListtrue
Tuple
ctxLoad5
StringLiteral
internalRoleelts"http*&:y6
StringLiteral
internalRoleelts"https*.:y*&:z:
	Attribute
internalRoleleft
ctxLoad:
Name
ctxLoad
internalRolevalue"self*:"protocol*:G
Compare.ops
promotedPropertyListtrue
NotIn"not in*::*:G*:F:Hē
	If.orelse
promotedPropertyListtrueŽ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*:"	remote_ip*:A
Name
internalRolevalue
ctxLoad"	remote_ip*:*:×
If
If.body
promotedPropertyListtrueÜ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*:"protocol*:@
Name
ctxLoad
internalRolevalue"protocol*!:*::Hś
	If.orelse
promotedPropertyListtrueĖ
If
If.body
promotedPropertyListtrueÕ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
internalRolevalue
ctxLoad"self*:"protocol*:9
StringLiteral
internalRolevalue"https*!:y*::H
	If.orelse
promotedPropertyListtrueŌ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*:"protocol*:8
StringLiteral
internalRolevalue"http*!:y*::IÆ
BoolOp
internalRoletest!
And
internalRoleop*:%A
Name
ctxLoad
internalRolevalues"
connection*:
Call
starargs<nil>
internalRolevalues
kwargs<nil>
	Attribute
ctxLoad
internalRoleargs@
Name
ctxLoad
internalRolevalue"
connection*,:"stream*,:j
	Attribute
ctxLoad
internalRoleargs>
Name
ctxLoad
internalRolevalue"iostream*,:"SSLIOStream*,:jA
Name
internalRolefunc
ctxLoad"
isinstance*!:ii*!:g*:G*:F:I>
Name
ctxLoad
internalRoletest"protocol*:G*:F:I
BoolOp
internalRoletest!
And
internalRoleop*÷:%A
Name
ctxLoad
internalRolevalues"
connection*÷:
	Attribute
internalRolevalues
ctxLoad@
Name
ctxLoad
internalRolevalue"
connection*÷:"xheaders*÷:*÷:G*÷	:F©
Assign
	Attribute
ctxStore
internalRoletargets:
Name
internalRolevalue
ctxLoad"self*	:"host*	:
BoolOp
internalRolevalue 
Or
internalRoleop*:&;
Name
ctxLoad
internalRolevalues"host*:Ę
Call
internalRolevalues
kwargs<nil>
starargs<nil>6
StringLiteral
internalRoleargs"Host*.:yjæ
	Attribute
ctxLoad
internalRolefunc~
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*:"headers*:"get*:ii*:g<
StringLiteral
internalRolevalues"	127.0.0.1*9:y*:*	:Ī
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"files*	:“
BoolOp
internalRolevalue 
Or
internalRoleop*:&<
Name
ctxLoad
internalRolevalues"files*:(
Dict
internalRolevalues*:t*:*	:ą
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"
connection*	:B
Name
ctxLoad
internalRolevalue"
connection*:*	:ė
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"_start_time*	:Ė
Call
internalRolevalue
kwargs<nil>
starargs<nil>|
	Attribute
ctxLoad
internalRolefunc:
Name
internalRolevalue
ctxLoad"time*:"time*:ii*:g*	:Ü
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"_finish_time*	:<
Name
internalRolevalue
ctxLoad"None*:*	:
Assignņ
Tuple
internalRoletargets
ctxStoreü
	Attribute
ctxStore
internalRoleeltsŗ
Name
ctxLoad
internalRolevalue~
PreviousNoops

end_lineno400
internalRolenoops_previous/
NoopLine
internalRolelines"
*:*:"self*	:"path*	:9
Name
internalRoleelts
ctxStore"sep*:|
	Attribute
ctxStore
internalRoleelts:
Name
ctxLoad
internalRolevalue"self*:"query*:*	:z
Call
kwargs<nil>
starargs<nil>
internalRolevalue3
StringLiteral
internalRoleargs"?*4:yj
	Attribute
ctxLoad
internalRolefunc9
Name
ctxLoad
internalRolevalue"uri*&:"	partition*&:ii*&:g*	:ī
AssignD
Name
ctxStore
internalRoletargets"	arguments*	:
Call
internalRolevalue
kwargs<nil>
starargs<nil>|
	Attribute
ctxLoad
internalRoleargs:
Name
ctxLoad
internalRolevalue"self*$:"query*$:jE
Name
internalRolefunc
ctxLoad"parse_qs_bytes*:ii*:g*	:Ę
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*	:"	arguments*	:)
Dict
internalRolevalue*:t*	:õ

For×
For.body
promotedPropertyListtrueø
AssignA
Name
ctxStore
internalRoletargets"values*:ß
ListComp
internalRolevalue5
Name
ctxLoad
internalRoleelt"v*:ł
ListComp.generators
promotedPropertyListtrueĆ
comprehension5
Name
ctxLoad
internalRoleifs"v*,:<
Name
internalRoleiter
ctxLoad"values*":R:
Name
ctxStore
internalRoletarget"v*:Q:T*:*:ī
If
If.body
promotedPropertyListtrueņ
Assign
	Subscript
ctxStore
internalRoletargetsZ
Index
internalRoleslice:
Name
ctxLoad
internalRolevalue"name* :
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*:"	arguments*:*:>
Name
ctxLoad
internalRolevalue"values*(:*::H<
Name
ctxLoad
internalRoletest"values*:G*:F:SŌ
Call
starargs<nil>
internalRoleiter
kwargs<nil>
	Attribute
internalRolefunc
ctxLoad?
Name
ctxLoad
internalRolevalue"	arguments*:"	iteritems*:ii*:gQ²
Tuple
ctxStore
internalRoletarget:
Name
internalRoleelts
ctxStore"name*:<
Name
ctxStore
internalRoleelts"values*:*:zR*	:T:3"__init__*ļ:24Ć
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno408/
NoopLine
internalRolelines"
*:*:"self*:67*:6
FunctionDef.body
promotedPropertyListtrue|
Exprj
StringLiteral
internalRolevalue"8Returns True if this request supports HTTP/1.1 semantics*	:y*	:Ō
Returnæ
Compare
internalRolevalueX
Compare.comparators
promotedPropertyListtrue#
StringLiteral"HTTP/1.1* :y}
	Attribute
internalRoleleft
ctxLoad:
Name
ctxLoad
internalRolevalue"self*:"version*:=
Compare.ops
promotedPropertyListtrue
Eq"==*:**	:`:3"supports_http_1_1*:24·
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno412
internalRolenoops_previous/
NoopLine
internalRolelines"
*:*:"self*:67*:6”
FunctionDef.body
promotedPropertyListtruej
ExprX
StringLiteral
internalRolevalue"&A dictionary of Cookie.Morsel objects.*	:y*	:é
Ifż
If.body
promotedPropertyListtrueó
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*”:"_cookies*”:Ö
Call
kwargs<nil>
starargs<nil>
internalRolevalue
	Attribute
internalRolefunc
ctxLoad<
Name
internalRolevalue
ctxLoad"Cookie*”:"SimpleCookie*”:ii*”:g*”:Ś
Ifž
If.body
promotedPropertyListtrueŃ
	TryExceptŽ
Expr
internalRolebodyµ
Call
kwargs<nil>
starargs<nil>
internalRolevalue£
Call
internalRoleargs
kwargs<nil>
starargs<nil>
	Subscript
ctxLoad
internalRoleargsX
Index
internalRoleslice8
StringLiteral
internalRolevalue"Cookie*„1:y~
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*„$:"headers*„$:*„$:jA
Name
internalRolefunc
ctxLoad"
native_str*„:ii*„:jgĮ
	Attribute
ctxLoad
internalRolefunc
	Attribute
ctxLoad
internalRolevalue:
Name
internalRolevalue
ctxLoad"self*¤:"_cookies*¤:"load*¤:ii*¤:g*¤:Ų
ExceptHandler
internalRolehandlersŪ
Assign
internalRolebody
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*§:"_cookies*§:)
Dict
internalRolevalue*§%:t*§:>
Name
ctxLoad
internalRoletype"	Exception*¦:"<nil>*¦:c*£:c:HČ
Compare
internalRoletest
Compare.comparators
promotedPropertyListtrueg
	Attribute
ctxLoad:
Name
ctxLoad
internalRolevalue"self*¢:"headers*¢::8
StringLiteral
internalRoleleft"Cookie*¢:y@
Compare.ops
promotedPropertyListtrue
In"in*¢::*¢:G*¢:F:HŲ
UnaryOp
internalRoletest$
Not
internalRoleop"!* :'
Call
kwargs<nil>
starargs<nil>
internalRoleoperand:
Name
ctxLoad
internalRoleargs"self* :j:
StringLiteral
internalRoleargs"_cookies* :yj>
Name
internalRolefunc
ctxLoad"hasattr* :ii* :g* :G* 	:F
Return
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ø:"_cookies*Ø:*Ø	:`:3c
FunctionDef.decorator_list
promotedPropertyListtrue'
Name
ctxLoad"property*:"cookies*:24Ć
FunctionDefę
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno425
internalRolenoops_previous/
NoopLine
internalRolelines"
*©:*©:"self*Ŗ:67=
Name
internalRoleargs
ctxParam"chunk*Ŗ:67@
Name
ctxParam
internalRoleargs"callback*Ŗ:67Z
arguments.defaults
promotedPropertyListtrue#
Name
ctxLoad"None*Ŗ%::8*Ŗ:6·
FunctionDef.body
promotedPropertyListtruer
Expr`
StringLiteral
internalRolevalue".Writes the given chunk to the response stream.*«	:y*«	:Æ
Assert
msg<nil>
Call
internalRoletest
kwargs<nil>
starargs<nil>;
Name
internalRoleargs
ctxLoad"chunk*¬:j@
Name
ctxLoad
internalRoleargs"
bytes_type*¬":jA
Name
ctxLoad
internalRolefunc"
isinstance*¬:ii*¬:g*¬	:fŪ
ExprČ
Call
starargs<nil>
internalRolevalue
kwargs<nil>;
Name
internalRoleargs
ctxLoad"chunk*­:jÅ
	Attribute
ctxLoad
internalRolefunc
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*­	:"
connection*­	:"write*­	:iiv
keyword
internalRolekeywords?
Name
ctxLoad
internalRolevalue"callback*­/:m"callback*­:k*­	:g*­	::3"write*Ŗ:24ō
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno430
internalRolenoops_previous/
NoopLine
internalRolelines"
*®:*®:"self*Æ:67*Æ:6Ä
FunctionDef.body
promotedPropertyListtruev
Exprd
StringLiteral
internalRolevalue"2Finishes this HTTP request on the open connection.*°	:y*°	:§
Expr
Call
internalRolevalue
kwargs<nil>
starargs<nil>Ę
	Attribute
ctxLoad
internalRolefunc
	Attribute
internalRolevalue
ctxLoad:
Name
ctxLoad
internalRolevalue"self*±	:"
connection*±	:"finish*±	:ii*±	:g*±	:ģ
Assign
	Attribute
ctxStore
internalRoletargets:
Name
ctxLoad
internalRolevalue"self*²	:"_finish_time*²	:Ė
Call
internalRolevalue
kwargs<nil>
starargs<nil>|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"time*²:"time*²:ii*²:g*²	::3"finish*Æ:24	
FunctionDef
	arguments
vararg<nil>
internalRoleargs
kwarg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno435
internalRolenoops_previous/
NoopLine
internalRolelines"
*³:*³:"self*“:67*“:6ć
FunctionDef.body
promotedPropertyListtrueo
Expr]
StringLiteral
internalRolevalue"+Reconstructs the full URL for this request.*µ	:y*µ	:¼
Return§
BinOp
internalRolevalueŲ
BinOp
internalRoleleft
BinOp
internalRoleleft
	Attribute
ctxLoad
internalRoleleft:
Name
ctxLoad
internalRolevalue"self*¶:"protocol*¶:%
Add
internalRoleop"+*¶:)6
StringLiteral
internalRoleright"://*¶ :y*¶:%
Add
internalRoleop"+*¶:)|
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*¶(:"host*¶(:*¶&:%
Add
internalRoleop"+*¶:){
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*¶4:"uri*¶4:*¶2:*¶	:`:3"full_url*“:24Ś
FunctionDef
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno439
internalRolenoops_previous/
NoopLine
internalRolelines"
*·:*·:"self*ø:67*ø:6¤
FunctionDef.body
promotedPropertyListtrue
Exprq
StringLiteral
internalRolevalue"?Returns the amount of time it took for this request to execute.*¹	:y*¹	:č	
Ifć
If.body
promotedPropertyListtrue¶
Return”
BinOp
internalRolevalueÉ
Call
kwargs<nil>
starargs<nil>
internalRoleleft|
	Attribute
ctxLoad
internalRolefunc:
Name
ctxLoad
internalRolevalue"time*»:"time*»:ii*»:g%
Sub
internalRoleop"-*»:*
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*»":"_start_time*»":*»:*»:`:H
	If.orelse
promotedPropertyListtrueš
ReturnŪ
BinOp
internalRolevalue
	Attribute
ctxLoad
internalRoleleft:
Name
ctxLoad
internalRolevalue"self*½:"_finish_time*½:%
Sub
internalRoleop"-*½:*
	Attribute
ctxLoad
internalRoleright:
Name
ctxLoad
internalRolevalue"self*½(:"_start_time*½(:*½:*½:`:IĻ
Compare
internalRoletest[
Compare.comparators
promotedPropertyListtrue#
Name
ctxLoad"None*ŗ!::
	Attribute
internalRoleleft
ctxLoad:
Name
internalRolevalue
ctxLoad"self*ŗ:"_finish_time*ŗ:@
Compare.ops
promotedPropertyListtrue
Is"is*ŗ::*ŗ:G*ŗ	:F:3"request_time*ø:24¤
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
ctxParam
internalRoleargs~
PreviousNoops

end_lineno446
internalRolenoops_previous/
NoopLine
internalRolelines"
*¾:*¾:"self*æ:67*æ:6ē
FunctionDef.body
promotedPropertyListtrueØ
Expr
StringLiteral
internalRolevalue"ęReturns the client's SSL certificate, if any.

        To use client certificates, the HTTPServer must have been constructed
        with cert_reqs set in ssl_options, e.g.::

            server = HTTPServer(app,
                ssl_options=dict(
                    certfile="foo.crt",
                    keyfile="foo.key",
                    cert_reqs=ssl.CERT_REQUIRED,
                    ca_certs="cacert.crt"))

        The return value is a dictionary, see SSLSocket.getpeercert() in
        the standard library for more details.
        http://docs.python.org/library/ssl.html#sslsocket-objects
        *Ļ:y*Ļ:
	TryExceptĢ
Return
internalRolebody”
Call
starargs<nil>
internalRolevalue
kwargs<nil>Ó
	Attribute
internalRolefunc
ctxLoad
	Attribute
ctxLoad
internalRolevalueÅ
	Attribute
ctxLoad
internalRolevalue
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ń:"
connection*Ń:"stream*Ń:"socket*Ń:"getpeercert*Ń:ii*Ń:g*Ń:`
ExceptHandler
internalRolehandlersd
Return
internalRolebody:
Name
ctxLoad
internalRolevalue"None*Ó:*Ó:`}
	Attribute
internalRoletype
ctxLoad9
Name
ctxLoad
internalRolevalue"ssl*Ņ:"SSLError*Ņ:"<nil>*Ņ	:c*Š	:c:3"get_ssl_certificate*æ:24
FunctionDef
	arguments
internalRoleargs
kwarg<nil>
vararg<nil>¼
Name
internalRoleargs
ctxParam~
PreviousNoops

end_lineno468
internalRolenoops_previous/
NoopLine
internalRolelines"
*Ō:*Ō:"self*Õ:67*Õ:6Ō
FunctionDef.body
promotedPropertyListtrue
Assign@
Name
ctxStore
internalRoletargets"attrs*Ö	:Å
Tuple
internalRolevalue
ctxLoad9
StringLiteral
internalRoleelts"protocol*Ö:y5
StringLiteral
internalRoleelts"host*Ö:y7
StringLiteral
internalRoleelts"method*Ö&:y4
StringLiteral
internalRoleelts"uri*Ö0:y8
StringLiteral
internalRoleelts"version*Ö7:y:
StringLiteral
internalRoleelts"	remote_ip*ÖB:y5
StringLiteral
internalRoleelts"body*×:y*Ö:z*Ö	:
Assign?
Name
ctxStore
internalRoletargets"args*Ų	:³
Call
internalRolevalue
kwargs<nil>
starargs<nil>ė
ListComp
internalRoleargsś
BinOp
internalRoleelt7
StringLiteral
internalRoleleft"%s=%r*Ų:y&
Mod
internalRoleop"%%*Ų:-š
Tuple
internalRoleright
ctxLoad6
Name
internalRoleelts
ctxLoad"n*Ų&:’
Call
starargs<nil>
internalRoleelts
kwargs<nil>:
Name
ctxLoad
internalRoleargs"self*Ų1:j7
Name
ctxLoad
internalRoleargs"n*Ų7:j>
Name
ctxLoad
internalRolefunc"getattr*Ų):ii*Ų):g*Ų&:z*Ų:Į
ListComp.generators
promotedPropertyListtrue
comprehension;
Name
ctxLoad
internalRoleiter"attrs*ŲD:R:
Name
ctxStore
internalRoletarget"n*Ų?:Q:T*Ų:jv
	Attribute
ctxLoad
internalRolefunc4
StringLiteral
internalRolevalue", *Ų:y"join*Ų:ii*Ų:g*Ų	:ń
ReturnÜ
BinOp
internalRolevalueD
StringLiteral
internalRoleleft"%s(%s, headers=%s)*Ł:y&
Mod
internalRoleop"%%*Ł:-Ć
Tuple
ctxLoad
internalRolerightÅ
	Attribute
internalRoleelts
ctxLoad
	Attribute
ctxLoad
internalRolevalue:
Name
ctxLoad
internalRolevalue"self*Ś:"	__class__*Ś:"__name__*Ś:9
Name
ctxLoad
internalRoleelts"args*Ś&:
Call
kwargs<nil>
starargs<nil>
internalRoleelts~
	Attribute
ctxLoad
internalRoleargs:
Name
internalRolevalue
ctxLoad"self*Ś1:"headers*Ś1:j;
Name
ctxLoad
internalRolefunc"dict*Ś,:ii*Ś,:g*Ś:z*Ł:*Ł	:`:3"__repr__*Õ:24­
FunctionDefÅ
	arguments
kwarg<nil>
vararg<nil>
internalRoleargs¼
Name
ctxParam
internalRoleargs~
PreviousNoops
internalRolenoops_previous

end_lineno475/
NoopLine
internalRolelines"
*Ū:*Ū:"self*Ü:67:
Name
ctxParam
internalRoleargs"ip*Ü:67*Ü:6¾
FunctionDef.body
promotedPropertyListtrueø
	TryExcept
Assign
internalRolebody>
Name
internalRoletargets
ctxStore"res*Ž:©
Call
internalRolevalue
kwargs<nil>
starargs<nil>8
Name
ctxLoad
internalRoleargs"ip*Ž&:j@

NumLiteral
internalRoleargs
NumTypeint"0*Ž*:vj
	Attribute
ctxLoad
internalRoleargs<
Name
ctxLoad
internalRolevalue"socket*Ž-:"	AF_UNSPEC*Ž-:j
	Attribute
ctxLoad
internalRoleargs<
Name
ctxLoad
internalRolevalue"socket*ß&:"SOCK_STREAM*ß&:j@

NumLiteral
NumTypeint
internalRoleargs"0*ą&:vj
	Attribute
ctxLoad
internalRoleargs<
Name
internalRolevalue
ctxLoad"socket*ą):"AI_NUMERICHOST*ą):j
	Attribute
ctxLoad
internalRolefunc<
Name
ctxLoad
internalRolevalue"socket*Ž:"getaddrinfo*Ž:ii*Ž:g*Ž:ī
Return
internalRolebodyĆ
Call
internalRolevalue
kwargs<nil>
starargs<nil>9
Name
ctxLoad
internalRoleargs"res*į:j;
Name
internalRolefunc
ctxLoad"bool*į:ii*į:g*į:`
ExceptHandler
internalRolehandlersĪ
If
internalRolebody{
If.body
promotedPropertyListtrueO
Return;
Name
ctxLoad
internalRolevalue"False*ä:*ä:`:HŖ
Compare
internalRoletest¤
Compare.comparators
promotedPropertyListtruel
	Attribute
ctxLoad<
Name
ctxLoad
internalRolevalue"socket*ć:"
EAI_NONAME*ć::
	Subscript
ctxLoad
internalRoleleft`
Index
internalRoleslice@

NumLiteral
NumTypeint
internalRolevalue"0*ć:vx
	Attribute
internalRolevalue
ctxLoad7
Name
ctxLoad
internalRolevalue"e*ć:"args*ć:*ć:@
Compare.ops
promotedPropertyListtrue
Eq"==*ć::*ć:G*ć:FU
Raise
internalRolebody
tback<nil>
type<nil>
inst<nil>*å:e7
Name
ctxStore
internalRolename"e*ā!:
	Attribute
internalRoletype
ctxLoad<
Name
ctxLoad
internalRolevalue"socket*ā:"gaierror*ā:*ā	:c*Ż	:cN
Return:
Name
ctxLoad
internalRolevalue"True*ę:*ę	:`:3"	_valid_ip*Ü:24:;"HTTPRequest*§::*:$