#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.ultronaicore/ultronaid.pid file instead
ultronai_pid=$(<~/.ultronaicore/testnet3/ultronaid.pid)
sudo gdb -batch -ex "source debug.gdb" ultronaid ${ultronai_pid}
