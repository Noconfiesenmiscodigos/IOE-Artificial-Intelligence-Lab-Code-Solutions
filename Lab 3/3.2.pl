link(a,b).  %Graph
link(a,c).
link(b,d).
link(c,d).
link(c,f).
link(d,e).
link(d,f).
link(f,a).
path(Node,Node).
path(Snode,Enode):- link(Snode,Nnode),path(Nnode,Enode).
