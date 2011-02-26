# flank.do
restart -f -nowave
view signals wave
add wave x y u q1 q2 reset

force reset 1
force x 0
force y 0
run 400 ns
force reset 0
force x 1
force y 0
run 100 ns
force x 0
force y 0
run 100 ns
force x 0
force y 1
run 100 ns
force x 1
force y 1
run 100 ns
force x 1
force y 0
run 100 ns
force x 1
force y 1
run 100 ns
force x 0
force y 1
run 100 ns
force x 0
force y 0
run 100 ns
