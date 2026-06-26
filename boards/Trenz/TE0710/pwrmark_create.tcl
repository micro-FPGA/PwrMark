#
# Create project
#
create_project PwrMark ./PwrMark -part xc7a100tcsg324-1

#
# import files. create BD and wrapper
#
source ../../../ip_repo/AMD/tcl/pwrmark_add_files.tcl
source ../../../ip_repo/AMD/tcl/pwrmark_se_clock_bd.tcl
source ../../../ip_repo/AMD/tcl/pwrmark_make_wrapper.tcl

#
# set chains count
#
startgroup
set_property CONFIG.C_NUM_CHAINS {120} [get_bd_cells pwrmark_0]
endgroup

set_property CONFIG.FREQ_HZ 100000000 [get_bd_ports clk]

startgroup
set_property -dict [list CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} ] [get_bd_cells clk_wiz_0]
endgroup