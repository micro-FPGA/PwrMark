add_files -norecurse ../../../ip_repo/AMD/src/pwrmark.vhd
add_files -norecurse ../../../ip_repo/AMD/src/pwrmark_chain.vhd
add_files -norecurse ../../../ip_repo/src/Toggle5s5s.vhd
add_files -fileset constrs_1 -norecurse ./src/top.xdc
update_compile_order -fileset sources_1
