FROM jupyter/tensorflow-notebook:latest

RUN pip install --upgrade jupyter_http_over_ws>=0.0.7
RUN jupyter serverextension enable --py jupyter_http_over_ws


ENTRYPOINT ["jupyter", "notebook", "--NotebookApp.allow_origin='https://colab.research.google.com'", "--port=8888", "--NotebookApp.port_retries=0"]

EXPOSE 999

# docker build -t x-colab .
# docker run --rm --name x-colab -dp 888:888 x-colab