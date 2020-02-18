transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/anp/intelFPGA_lite/18.1/testled {/home/anp/intelFPGA_lite/18.1/testled/testled.v}

