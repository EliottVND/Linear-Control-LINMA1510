load('disturbance_closed_loop_min_phase')
t = disturbance_closed_loop_min_phase(:, 1) ; 
y = disturbance_closed_loop_min_phase(:, 4) ;
%[y1, t1] = step(7*Tv_n_min) ; 
plot (t, y)