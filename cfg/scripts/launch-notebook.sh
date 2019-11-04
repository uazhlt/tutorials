#!/usr/bin/env bash

#cd notebooks
jupyter notebook \
		--ip=0.0.0.0 \
		--port 9999 \
		--no-browser \
		--allow-root \
		--NotebookApp.token='' \
		--NotebookApp.password='' \
		--NotebookApp.allow_password_change=False \
