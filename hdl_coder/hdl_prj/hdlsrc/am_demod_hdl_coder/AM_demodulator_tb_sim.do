onbreak resume
onerror resume
vsim -voptargs=+acc work.AM_demodulator_tb

add wave sim:/AM_demodulator_tb/u_AM_demodulator/clk
add wave sim:/AM_demodulator_tb/u_AM_demodulator/reset
add wave sim:/AM_demodulator_tb/u_AM_demodulator/clk_enable
add wave sim:/AM_demodulator_tb/u_AM_demodulator/AM_modulated_signal
add wave sim:/AM_demodulator_tb/u_AM_demodulator/ce_out
add wave sim:/AM_demodulator_tb/u_AM_demodulator/Audio_out
add wave sim:/AM_demodulator_tb/Audio_out_ref
run -all
