-module(record).
-export([set/1, set2/1]).

-record(r, {
        k1,
        k2,
        k3
        }).

set(#r{k1 = K1, k2 = K2, k3 = K3}) ->
    {ok, K1, K2, K3}.

set2(R) ->
    {ok, R#r.k1, R#r.k2, R#r.k3}.

