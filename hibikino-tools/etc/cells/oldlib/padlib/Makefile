
CHECKDIR=check

graal:
	make -f ../Makefile USERTOOLS=../../../etc graal

check-lib: $(foreach cell,$(wildcard *.ap),$(patsubst %.ap,%.check,$(cell)))

%.check:
	@if [ ! -d $(CHECKDIR) ]; then \
        echo mkdir $(CHECKDIR); \
        mkdir $(CHECKDIR); \
    fi
	( cd $(CHECKDIR); \
	make -f ../../Makefile VPATH=.. USERTOOLS=../../../../etc $*.ok) 

%.proof:
	@if [ ! -d $(CHECKDIR) ]; then \
        echo mkdir $(CHECKDIR); \
        mkdir $(CHECKDIR); \
    fi
	( cd $(CHECKDIR); \
	make -f ../../Makefile VPATH=.. USERTOOLS=../../../../etc $*-proof ) 

	
%.druc:
	@if [ ! -d $(CHECKDIR) ]; then \
        echo mkdir $(CHECKDIR); \
        mkdir $(CHECKDIR); \
    fi
	( cd $(CHECKDIR); \
	make -f ../../Makefile VPATH=.. USERTOOLS=../../../../etc $*-druc ) 


clean-tmp:
	(cd $(CHECKDIR); rm -f *.drc *.gds *.cns *.stat *.rep *.spi *.dtx *.rcx *.stm *.vhd *.vbe)

clean-lib:clean-tmp
	rm -rf $(CHECKDIR)
	
