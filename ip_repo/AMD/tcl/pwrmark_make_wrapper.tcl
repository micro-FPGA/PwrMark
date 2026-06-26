make_wrapper -files [get_files ./PwrMark/PwrMark.srcs/sources_1/bd/system/system.bd] -top
add_files -norecurse ./PwrMark/PwrMark.gen/sources_1/bd/system/hdl/system_wrapper.v
set_property top system_wrapper [current_fileset]
update_compile_order -fileset sources_1
