#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.smartmemecore/smartmemed.pid file instead
smartmeme_pid=$(<~/.smartmemecore/testnet3/smartmemed.pid)
sudo gdb -batch -ex "source debug.gdb" smartmemed ${smartmeme_pid}
