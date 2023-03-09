s(s(NP, VP)) --> np(NP), vp(VP).
s(s(NP,VP)) --> np(NP, Sc), vp(VP, Sc).
s(s(NP,VP), Sc) --> np(NP, Sc), vp(VP, Sc).
s(s(NP,VP), Sc) --> np(NP, Sc), vp(VP).
s(s(NP,VP), Wh, Sc) --> np(NP, Sc), vp(VP, Wh).
s(s(WHNP, VP), Wh) --> whnp(WHNP, Wh), vp(VP).

sbarq(sbarq(WHNP,SQ)) --> whnp(WHNP,Wh), sq(SQ,Wh).
sbarq(sbarq(WHNP,SQ)) --> whnp(WHNP,Wh), sq(SQ,Wh).

sq(sq(WHNP,VP),Wh) --> whnp(WHNP,Wh), vp(VP, Wh).
sq(sq(WHNP,VP),Wh) --> whnp(WHNP,Wh), vp(VP).
sq(sq(VBD,NP,VP), Wh) --> vbd(VBD), np(NP, Sc), vp(VP,Wh, Sc).
sq(sq(VBD,NP,VP), Wh) --> vbd(VBD), np(NP), vp(VP,Wh).

whnp(whnp(WP),Wh) --> wp(WP, Wh).
wp(wp(who),whoword) --> [who].
wp(wp(what),whatword) --> [what].
wp(wp(who),whoword) --> [].
wp(wp(what),whatword) --> [].

np(np(NNP)) --> nnp(NNP).
np(np(NNP), Sc) --> nnp(NNP, Sc).
np(np(DT, NN)) --> dt(DT), nn(NN).
%%%np(np(WP)) --> wp(WP).

vp(vp(VBD, S), Sc) --> vbd(VBD), s(S, Sc).
vp(vp(VBD, S), Wh) --> vbd(VBD), s(S, Wh).
vp(vp(VB1, S), Wh, Sc) --> vb1(VB1), s(S, Wh, Sc).
%%%vp(vp(VB1, S), Sc) --> vb1(VB1), s(S, Wh, Sc).
%%%vp(vp(VB1, S), Wh) --> vb1(VB1), s(S, Wh).
vp(vp(TO, VP)) --> to(TO), vp(VP).
vp(vp(TO, VP), Wh) --> to(TO), vp(VP, Wh).
vp(vp(VB1, NP)) --> vb1(VB1), np(NP).
vp(vp(VB1,WHNP),Wh) --> vb1(VB1), whnp(WHNP,Wh).
vp(vp(VBD,NP)) --> vbd(VBD), np(NP).

nnp(nnp(john)) --> [john].
nnp(nnp(john), triedword) --> [john].
nnp(nnp(john), triedword) --> [].

vbd(vbd(tried)) --> [tried].
vbd(vbd(won)) --> [won].
vbd(vbd(did)) --> [did].

dt(dt(the)) --> [the].

nn(nn(race)) --> [race]. 

parse(Tree) --> s(Tree).
parse(Tree) --> sbarq(Tree).

to(to(to)) --> [to].

vb1(vb1(win)) --> [win].
vb1(vb1(try)) -->[try].
