


gc =tf([0.3 5 5],[1 0]);
gp = tf([1],[0.01 0.11 0.1]);
ol = series(gc,gp); # Compensator/ Controller in series with plant
step(feedback(ol,1))
title('PID controller'); 