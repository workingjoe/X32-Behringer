# Copyright (C) 2019 Javier Iglesias
#
# This program is free software; you can redistribute it and/or modify                       
# it under the terms of the GNU General Public License as published by                       
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.                                                        
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of                             
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                              
# GNU General Public License for more details.                                               
#                                                                                            
# You should have received a copy of the GNU General Public License                          
# along with this program; if not, write to the Free Software                                
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA                  
#                                                                                            
# bkt!!
# mingw32-make.exe clean 
# mingw32-make.exe all
#
CC=gcc
RM=rm -rf
MKDIR=mkdir -p
BUILD=build

#  SRCS := $(shell find . -name '*.c')
SRCS := $(shell ls *.c)
OBJS := $(addsuffix .o,$(basename $(SRCS)))
LIBS := m X32 ws2_32 gdi32 comdlg32 winmm user32
DIRS := X32lib

CFLAGS=-O0 -g3 -Wall $(addprefix -I,$(DIRS))
LDFLAGS=$(addprefix -L,$(DIRS)) $(addprefix -l,$(LIBS))
TARGETS=X32 X32lib X32Reaper X32_Command X32Wav_Xlive X32Xlive_Wav X32_Command 
MORE_TARGETS=GetSceneName X32DeskRestore X32DeskSave X32GEQ2cpy X32GetScene X32SsaverGW
MORE_TARGETS_B=X32Replay X32SetScene X32Tap X32TapW X32USB X32UDP X32TCP X32Jog4Xlive
MORE_TARGETS_C=X32GetLib X32SetLib X32Midi2OSC X32PunchControl X32Automix X32CopyFX X32cpXliveMarkers
MORE_TARGETS_D=X32Fade X32SetPreset X32Commander X32CustomLayer XAirGetScene XAirSetScene XAir_Command


all: 	dirs $(TARGETS)
A: 		dirs $(MORE_TARGETS)
B: 		dirs $(MORE_TARGETS_B)
C: 		dirs $(MORE_TARGETS_C)
D: 		dirs $(MORE_TARGETS_D)
lots: 	dirs $(TARGETS) $(MORE_TARGETS) $(MORE_TARGETS_B) $(MORE_TARGETS_C) $(MORE_TARGETS_D)


dirs:
	@$(MKDIR) $(BUILD)

X32Reaper: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32_Command: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32Wav_Xlive: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32Xlive_Wav: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

GetSceneName: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32Automix: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32SetScene: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c SetSceneParse.c fxparse1.c fxparse5.c fxparse.c $(LDFLAGS) 

X32Commander: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32CopyFX: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32cpXliveMarkers: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32CustomLayer: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32DeskRestore: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32DeskSave: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32Fade: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32GEQ2cpy: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32GetLib: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32GetScene: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)	

X32Replay: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32Jog4Xlive: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32Midi2OSC: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32PunchControl: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32SetLib: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c SetSceneParse.c fxparse1.c fxparse5.c fxparse.c $(LDFLAGS)

X32SetPreset: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c SetSceneParse.c fxparse1.c fxparse5.c fxparse.c $(LDFLAGS)

X32SsaverGW: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)
			
X32Tap: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32TapW: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32USB: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32UDP: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

X32TCP: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)	

XAir_Command: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

XAirGetScene: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS)

XAirSetScene: X32lib
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $@.c $(LDFLAGS) XAirSetSceneParse.c XAir_fxparse.c XAir_fxparse1.c $(LDFLAGS)


$(DIRS):
	@$(MAKE) -C $@ all

%.o: 	%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(BUILD)
	$(MKDIR) $(BUILD)
	$(MAKE) -C $(DIRS) clean

.PHONY:	$(DIRS)
