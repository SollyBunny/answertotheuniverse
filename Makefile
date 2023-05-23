all: c cpp go js lua py py2 sh bash bat cmd ps1 bf asm cs

chmod:
	chmod +x main.*

define compile
	@echo "Compiling $(1)"
    @chmod +x "./$(1)"
	@-"./$(1)"
endef

c:
	@$(call compile,main.c)
cpp:
	@$(call compile,main.cpp)
go:
	@$(call compile,main.go)
js:
	@$(call compile,main.js)
lua:
	@$(call compile,main.lua)
py:
	@$(call compile,main.py)
py2:
	@$(call compile,main.py2)
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
bf:
	@$(call compile,main.bf)
asm:
	@$(call compile,main.asm)
cs:
	@$(call compile,main.cs)
bas:
	@$(call compile,main.bas)