ZIP=script.services.shutdownsteamcontrollers.zip

$(ZIP) : script.services.shutdownsteamcontrollers
	zip -r $@ script.services.shutdownsteamcontrollers

all: $(ZIP)
