:choice
@set /P c=Are you sure you want to publish [Y/N]?
@if /I "%c%" EQU "Y" goto :somewhere
@if /I "%c%" EQU "N" goto :somewhere_else
@goto :choice

:somewhere

@echo "Publishing to NPM..."
npm publish
@pause 
exit

:somewhere_else

@echo "You have canceled the publishing process."
@pause 
exit
