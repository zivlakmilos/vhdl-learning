GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) test.vhdl bin2bcd.vhdl
	@$(GHDL) -e $(FLAGS) test
	@$(GHDL) -r $(FLAGS) test --wave=wave.ghw --stop-time=1ms
