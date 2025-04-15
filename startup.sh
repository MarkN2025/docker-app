#!/bin/bash

# Copy starter files only if the directory is empty
if [ -z "$(ls -A /home/jovyan/work)" ]; then
  echo "Copying starter files into /home/jovyan/work..."
  cp -r /starter_files/* /home/jovyan/work/
else
  echo "User workspace already contains files. Skipping copy."
fi

# Start JupyterLab
start.sh jupyter lab --NotebookApp.token='' --NotebookApp.password=''

