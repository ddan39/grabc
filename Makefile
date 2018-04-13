##
# Makefile automatically generated by genmake 1.0, Mar-16-97
# genmake 1.0 by ma_muquit@fccc.edu, RCS
##
CC= cc
DEFS=  
PROGNAME= grabc
LIBS= -L/usr/X11R6/lib -lX11

INCLUDES=  -I.

# replace -O with -g in order to debug

DEFINES= $(INCLUDES) $(DEFS) -D__USE_FIXED_PROTOTYPES__ -DSYS_UNIX=1
CFLAGS= -O $(DEFINES)

SRCS = grabc.c

OBJS = grabc.o

.c.o:
	rm -f $@
	$(CC) $(CFLAGS) -c $*.c

all: $(PROGNAME)

$(PROGNAME) : $(OBJS)
	$(CC) $(CFLAGS) -o $(PROGNAME) $(OBJS) $(LIBS)

doc:
	pod2man grabc.pod > grabc.1

install:
	sudo cp grabc /usr/local/bin
	sudo cp grabc.1 /usr/local/share/man/man1/

clean:
	rm -f $(OBJS) $(PROGNAME) core
