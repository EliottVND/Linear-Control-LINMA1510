load('setpoint_closed_loop_non_min_phase')
t = setpoint_closed_loop_non_min_phase(:, 1) ; 
y = setpoint_closed_loop_non_min_phase(:, 4) ;
plot (t, y)
grid ; 