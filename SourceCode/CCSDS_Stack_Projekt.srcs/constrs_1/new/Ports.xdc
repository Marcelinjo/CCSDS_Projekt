#Clock
create_clock -period 8.334 -waveform {0.000 4.167} [get_ports clk]

set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports dummy_out]