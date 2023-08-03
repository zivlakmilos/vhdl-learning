GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) --ieee=synopsys -fsynopsys -fexplicit test.vhdl reg.vhdl
	@$(GHDL) -e $(FLAGS) --ieee=synopsys -fsynopsys -fexplicit test
	@$(GHDL) -r $(FLAGS) --ieee=synopsys -fsynopsys -fexplicit test --wave=wave.ghw --stop-time=1ms
