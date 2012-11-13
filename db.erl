-module(db).
-export([start/1]).

% depend on the machine config

-define(DSN, "test").
-define(UID, "machete").
-define(PWD, "machete@1991").

%Start a new ODBC server
start([H1|T]) ->
	{ok, Ref} = odbc:connect("DSN=mysql;UID=machete;PWD=machete@1991",[]),
odbc:sql_query(Ref, "INSERT INTO wp_posts (post_author, 
	post_date, 
	post_date_gmt, 
	post_content, 
	post_title, 
	post_excerpt, 
	post_status, 
	comment_status, 
	ping_status,
	post_password, 
	post_name, 
	to_ping, 
	pinged, 
	post_modified, 
	post_modified_gmt, 
	post_content_filtered, 
	post_parent, 
	guid, 
	menu_order, 
	post_type, 
	post_mime_type, 
	comment_count) VALUES (	1,
	'2012-11-01 22:05:53',
	'2012-11-01 22:05:53', 
	'test',
	'"++H1++"', 
	' ',
	'publish', 
	'open', 
	'open',
	'', 
	'post_name', 
	'to_ping', 
	'pinged', 
	'2012-11-01 22:05:53', 
	'2012-11-01 22:05:53', 
	'post_content_filtered', 
	'0', 
	'http://localhost/site/?p=12', 
	0, 
	'post',
	'post_mime_type', 
	0)
").