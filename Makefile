
PRG = libgstwaylandsink.so
SRC = gstwaylandsink.c

GST = `pkg-config --cflags --libs gstreamer-0.10 gstreamer-video-0.10`

GST_IF =  -lwayland-client

all :
	gcc -Wl,-z,noexecstack -shared -g -fPIC -o $(PRG) $(GST_IF) $(SRC) $(GST) -D PACKAGE='"gst-wayland"' -D VERSION='"0.10.0"'
clean :
	rm -f *~ core* $(PRG)
