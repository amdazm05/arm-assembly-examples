gdb-multiarch -q --nh \
  -ex 'set architecture arm64' \
  -ex "file $MODULAR_PATH" \
  -ex 'target remote localhost:9000' \
  -ex 'break main' \
  -ex continue \
  -ex 'layout split' \
  -ex 'layout next' \
  -ex 'layout regs'