.PHONY: code.ls code.inst brew.dump brew.clean brew.check update

update: code.ls brew.dump

code.ls:
	@./vscode/ls-ext.sh

code.inst:
	./vscode/inst-ext.sh

brew.dump:
	@brew bundle dump --force

brew.clean:
	@brew bundle cleanup

brew.check:
	@brew bundle check