#!/bin/bash
curl https://sh.rustup.rs -sSf | sh -s -- -y
source /home/${USER}/.cargo/env
export PATH="$PATH:/home/${USER}/.cargo/bin"