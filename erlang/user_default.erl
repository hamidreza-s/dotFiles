-module(user_default).
-compile(export_all).

clear() ->
   io:format("\e[H\e[J").
