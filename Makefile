all: chmod compiled interpreted script stupid

chmod:
	chmod +x main.*

define compile
	@echo "Compiling $(1)"
    @chmod +x "./$(1)"
	@-"./$(1)"
endef

# Compiled
compiled: c cpp asm go java cs hs
c:
	@$(call compile,main.c)
cpp:
	@$(call compile,main.cpp)
asm:
	@$(call compile,main.asm)
go:
	@$(call compile,main.go)
java:
	@$(call compile,main.java)
cs:
	@$(call compile,main.cs)
hs:
	@$(call compile,main.hs)

# Interpreted
interpreted: js lua py py2 jl lisp rkt clj
js:
	@$(call compile,main.js)
lua:
	@$(call compile,main.lua)
py:
	@$(call compile,main.py)
py2:
	@$(call compile,main.py2)
jl:
	@$(call compile,main.jl)
lisp:
	@$(call compile,main.lisp)
rkt:
	@$(call compile,main.rkt)
clj:
	@$(call compile,main.clj)

# Script
script: sh bash bat cmd ps1 bas el
sh:
	@$(call compile,main.sh)
bash:
	@$(call compile,main.bash)
bat:
	@$(call compile,main.bat)
cmd:
	@$(call compile,main.cmd)
ps1:
	@$(call compile,main.ps1)
bas:
	@$(call compile,main.bas)
el:
	@$(call compile,main.el)
	
# Stupid
stupid: bf
bf:
	@$(call compile,main.bf)




