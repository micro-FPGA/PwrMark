#
# import files. create BD and wrapper
#
#source ../../../../ip_repo/AMD/tcl/pwrmark_add_files.tcl

add_files -norecurse ../../../../ip_repo/AMD/src/pwrmark.vhd
add_files -norecurse ../../../../ip_repo/AMD/src/pwrmark_chain.vhd
add_files -norecurse ../../../../ip_repo/src/Toggle5s5s.vhd
add_files -fileset constrs_1 -norecurse ../src/top.xdc

#
#
#
source ../../../../ip_repo/AMD/tcl/pwrmark_se_clock_bd.tcl
source ../../../../ip_repo/AMD/tcl/pwrmark_make_wrapper.tcl

set_property CONFIG.FREQ_HZ 100000000 [get_bd_ports clk]

startgroup
set_property -dict [list CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} ] [get_bd_cells clk_wiz_0]
endgroup