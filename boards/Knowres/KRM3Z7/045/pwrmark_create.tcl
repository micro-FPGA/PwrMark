#
# Create project
#
create_project PwrMark ./PwrMark -part xc7z045fbg676-1

#
# 
#
source ../project_create.tcl

#
# set chains count
#
startgroup
set_property CONFIG.C_NUM_CHAINS {400} [get_bd_cells pwrmark_0]
endgroup
