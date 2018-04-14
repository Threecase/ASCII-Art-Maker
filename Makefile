

CC=gcc
OUTNAME=ascii-art
OPTIONS=-Wall -Og -g

SRC=$(addprefix src/, $(addsuffix .c, ascii util))
HDR=$(addprefix src/, $(addsuffix .h, util))

LIBS=SDL2 SDL2_image


$(OUTNAME) : $(SRC) $(HDR)
	$(CC) $(SRC) $(addprefix -l, $(LIBS)) -o $(OUTNAME) $(OPTIONS)

clean :
	@if [ -f $(OUTNAME) ]; then\
	    rm $(OUTNAME);\
            echo "Removed $(OUTNAME)";\
	fi
