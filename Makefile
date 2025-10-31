CONFIGURATION = Release
BIN = bin/$(CONFIGURATION)
ENVIRONMENT = notwsl#use 'wsl' when running on wsl

clean:
	dotnet build -v:n apidoctools.sln /t:clean /p:Configuration=$(CONFIGURATION)
	rm -rf $(BIN)

check:
	$(MAKE) check -B -C mdoc

zip:
	rm -f $(BIN)/mdoc*.zip
	zip -j $(BIN)/mdoc.zip $(BIN)/*
	