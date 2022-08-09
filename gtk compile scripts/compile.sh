#I recommend using meson instead
gcc `pkg-config --cflags gtk4` -o $1 $1.c `pkg-config --libs gtk4` ${*:2}
