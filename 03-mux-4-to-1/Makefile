GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) test.vhdl mux.vhdl mux4.vhdl
	@$(GHDL) -e $(FLAGS) test
	@$(GHDL) -r $(FLAGS) test --wave=wave.ghw --stop-time=1ms
