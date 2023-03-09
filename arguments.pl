s2(s(NP,VP)) --> np(NP), vp(VP). 

parse(Tree) --> s2(Tree).
parse(Tree) --> sbarq(Tree).

sbarq(sbarq(WHNP,SQ)) --> whnp(WHNP,Wh), sq(SQ,Wh).
sq(sq(WHNP,VP),Wh) --> whnp(WHNP,Wh), vp(VP).
sq(sq(VBD,NP,VP), Wh) --> vbd(VBD), np(NP), vp(VP,Wh).
whnp(whnp(WP),Wh) --> wp(WP, Wh).
wp(wp(who),whoword) --> [who].
wp(wp(what),whatword) --> [what].
wp(wp(who),whoword) --> [].
wp(wp(what),whatword) --> [].
vp(vp(VBD,NP)) --> vbd(VBD), np(NP).
vp(vp(VB,WHNP),Wh) --> vb(VB), whnp(WHNP,Wh).
vb(vb(win)) --> [win].
np(np(NNP)) --> nnp(NNP).
np(np(DT,NN)) --> dt(DT), nn(NN).
np(np(WP)) --> wp(WP).
nnp(nnp(john)) --> [john].
vbd(vbd(won)) --> [won].
vbd(vbd(did)) --> [did].
dt(dt(the)) --> [the].
nn(nn(race)) --> [race].
wp(wp(what)) --> [what].
