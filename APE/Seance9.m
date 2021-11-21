% Exercice 1

% A = [-4 1 ; 0 -2] ;
% B = [0 ; 0] ;
% C = [1 0 ; 0 1] ; 
% L = [-2 ; -1] ; 
% sys = ss(A-L*[1 0],B,C,0) ; 
% e1 = [1 2] ; 
% e2 = [2 1] ;  
% initial(sys,e1) ; 
% hold on ; 
% initial(sys,e2) ; 


% Exercice 2

A = [-4 1 ; 0 -2] ;
C = [1 0] ; 
Q = eye(2) ; 
i = 1 ; 
for alpha = [0.01, 0.1, 1]
    L = lqr(A, transpose(C), Q, alpha)  
    sys = ss(A-transpose(L)*[1 0],[0 ; 0],[1 0 ; 0 1],0) ; 
    e1 = [1 2] ; 
    e2 = [2 1] ;  
    [y1, t1] = initial(sys,e1) ; 
    [y2, t2] = initial(sys,e2) ; 
    subplot(2, 2, 1) ; plot(t1, y1(1)) ; title('CI e1') ; hold on 
    subplot(2, 2, 2) ; plot (t1, y1(2)) ; title('CI e2')  ; hold on
    i=3 ; 
end
