## AArch64 Assembly Examples
This is more like my own boiler plate + examples for playing
with assembly files in aarch64.
### How to add your own assembly file ?
- Add your file to `examples` , no cmake changes are required
cmake will do it for you! 
- Building assembly programs
```
    mkdir build 
    cd build
    cmake .. 
    qemu-aarch64 
```
Executables will be in `build/examples`

## Static Linking
An optional flag is left for you to do static linking 
```
cmake .. -DSTATIC_LINK_OPT=ON
```
### Testing
For testing one can use
Qemu user space emulator
```
apt-get install qemu-user-static
```
For running 
```
    qemu-aarch64 -L /usr/aarch64-linux-gnu -g <PORT_NUM> ./<EXENAME>
```
If the static linking flag is used one can run the binary simply
as 
```
    qemu-aarch64 ./<EXENAME>
```

### For debugging 
- Use the `debug.sh` script, but you must 
```
export MODULAR_PATH=build/examples/<EXENAME>
```
- Must-have gdb multiaarch installed
- Must run with `-g` along with port number `<PORT_NUM>`
```
 qemu-aarch64 -L /usr/aarch64-linux-gnu -g <PORT_NUM> ./<EXENAME>
```

