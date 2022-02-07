%  _ _ _ _                                     _ _ _ _
% |       |                                   |       |
% |       |                         _ _ _ _   |       |
% |       |   _ _ _ _    _ _ _ _   |       |  |       |
% | Black |  | Black |  | White |  | Black |  | White |
% |_ _ _ _|  |_ _ _ _|  |_ _ _ _|  |_ _ _ _|  |_ _ _ _|
%     1          2          3          4          5

% Ann, Bill, Charlie, Don, Eric owe one box each but we don't know which box.
% Try to find each boxes' ownwer if you know that:
% Ann and Bill have boxex with same color.
% Don and Eric have boxex with same color.
% Charlie and Don have boxes with same size.
% Erics box is smaller than Bills.

% First define numbers for each box.
getbox(1). getbox(2). getbox(3). getbox(4). getbox(5).
% Box number, color, size.
box(1,black,3).
box(2,black,1).
box(3,white,1).
box(4,black,2).
box(5,white,3).
owners(A,B,C,D,E):-
getbox(A), getbox(B), getbox(C), getbox(D), getbox(E),
A\=B,A\=C,A\=D,A\=E,
B\=C,B\=D,B\=E,
C\=D,C\=E,
D\=E,
box(A,ColorA,_), box(B,ColorA,_), % Ann and Bill have same color
box(D,ColorD,_), box(E,ColorD,_), % Don and Eric have same color
box(C,_,SizeC), box(D,_,SizeC), % Charlie and Don have same size
box(E,_,SizeE), box(B,_,SizeB),
SizeE < SizeB. % Eric's smaller than Bill's

% Answer 
% Ann = 2
% Bill = 4
% Charlie = 1
% Don = 5
% Eric = 3