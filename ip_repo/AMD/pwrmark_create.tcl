#
# Create project
#
#source ./pwrmark_create_project.tcl
create_project PwrMark ./PwrMark -part xc7z020clg484-1

#
# import files. create BD and wrapper
#
source ../../../ip_repo/AMD/tcl/pwrmark_add_files.tcl
source ../../../ip_repo/AMD/tcl/pwrmark_zynq_bd.tcl
source ../../../ip_repo/AMD/tcl/pwrmark_make_wrapper.tcl

#
# set chains count
#
#source ./pwrmark_set_chains.tcl
startgroup
set_property CONFIG.C_NUM_CHAINS {100} [get_bd_cells pwrmark_0]
endgroup