#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# DESCRIPTION:
#   Creates a python virtual environment for development of this package
#   (installed via Anaconda). The environment is intended to have no default
#   packages.
# 
# USAGE:
#   cd .dev; ./create_env.sh
# 
# NOTE:
#   * Intended to be run from the main directory level.
#   * Currently only works with Anaconda.
#   * Environment setup is for python v3+.
#   * If using a machine without administrative privileges, use ``--user`` 
#       flag during the ``pip install`` step.

scripts_dir=$(realpath $(dirname ${0}))
cwd=$(pwd)

cd ${scripts_dir}

if [[ ! -d ../.env ]]; then
  echo "Creating directory: .env"
  mkdir -p ../.env
fi

env=$(realpath ../.env)

# Create environment using conda
conda create -p ${env} --no-default-packages --yes

# Activate environment
conda activate ${env}

# Install pip
conda install pip --yes

# Install requirements
pip install -r requirements.txt

# Install MPS-accelerated PyTorch
# MPS acceleration is available on MacOS 12.3+
pip3 install --pre torch torchvision torchaudio torchtext --index-url https://download.pytorch.org/whl/nightly/cpu

# Install 
pip install -r requirements.torch.txt

cd ${cwd}
