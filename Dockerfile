FROM jupyter/base-notebook:python-3.9

RUN pip install --upgrade pip
RUN pip install ipywidgets streamlit pillow google-genai

WORKDIR /home/jovyan/work

EXPOSE 8888
EXPOSE 850
