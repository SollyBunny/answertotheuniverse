all: chmod c cpp go js lua py py2 sh bash bat cmd ps1 bf asm cs lisp rkt clj el

chmod:
	chmod +x main.*

define compile
	@echo "Compiling $(1)"
    @chmod +x "./$(1)"
	@-"./$(1)"
endef

# Compiled
c:
	@$(call compile,main.c)
cpp:
	@$(call compile,main.cpp)
asm:
	@$(call compile,main.asm)
go:
	@$(call compile,main.go)
cs:
	@$(call compile,main.cs)

# Interpreted
js:
	@$(call compile,main.js)
lua:
	@$(call compile,main.lua)
py:
	@$(call compile,main.py)
py2:
	@$(call compile,main.py2)
lisp:
	@$(call compile,main.lisp)
rkt:
	@$(call compile,main.rkt)
clj:
	@$(call compile,main.clj)

# Scripts
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
bf:
	@$(call compile,main.bf)




