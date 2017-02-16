restart

#force add clk 1 - value 0 - time 10 ns - repeat 20 ns
add_force PIXEL_CLK_IN {1} {0 10 } -repeat_every 20 -cancel_after 1000
#put din[23:0] 12
add_force VDE_IN_I {0}
add_force HB_IN_I {0}
add_force VB_IN_I {0}
add_force HS_IN_I {0}
add_force ID_IN_I {0}
add_force VS_IN_I {0}
add_force RGB_IN_I {0}


run 40 ns

add_force VDE_IN_I {1} {0 60}

add_force RGB_IN_I {1} {10 20} {11 40}

run 80 ns

add_force HS_IN_I {1} {0 10}

run 40 ns

add_force VDE_IN_I {1} {0 60}

add_force RGB_IN_I {100} {101 20} {110 40}

run 80 ns

add_force HS_IN_I {1} {0 10}

run 40 ns

add_force VDE_IN_I {1} {0 60}

add_force RGB_IN_I {111} {1000 20} {1001 40}

run 80 ns

add_force HS_IN_I {1} {0 10}

run 40 ns