
GDAL_CFLAGS = `gdal-config --cflags`
GDAL_LDFLAGS = `gdal-config --libs`

# comment these two out if you want single threaded version
EXTRA_CFLAGS = -DWITH_PTHREADS
EXTRA_LDFLAGS = -lpthread

CC = gcc
CFLAGS = -Wall -Wextra -ansi -pedantic -std=c99 -O2 $(GDAL_CFLAGS) $(EXTRA_CFLAGS)
LDFLAGS = $(GDAL_LDFLAGS) $(EXTRA_LDFLAGS)

all: gdaldem_web

clean:
	rm -f gdaldem_web

