FROM jupyter/base-notebook:python-3.9

RUN pip install --upgrade pip
RUN pip install ipywidgets streamlit pillow google-genai

# Copy the starter files and startup script to a folder where jovyan can access them
COPY work/ /starter_files/
COPY startup.sh /home/jovyan/scripts/startup.sh

# Set working directory
WORKDIR /home/jovyan/work

EXPOSE 8888
EXPOSE 8501

# Run the script from the jovyan user folder
CMD ["bash", "/home/jovyan/scripts/startup.sh"]
