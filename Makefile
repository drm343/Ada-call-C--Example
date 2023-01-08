all:
	dotnet publish -p:NativeLib=Shared -r linux-x64
	gnatmake hello.adb -largs bin/Debug/net7.0/linux-x64/native/hello-ada.so
