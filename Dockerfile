FROM python:3.10-bookworm
EXPOSE 8888
WORKDIR /app

RUN apt-get update && apt-get install -y \
    apt-utils \
    neovim \
    git

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install \
    numpy \
    jupyterlab \
    pandas \
    plotly \
    matplotlib \
    jupyterlab-horizon-theme \
    jupyterlab-git \
    networkx \
    nxviz \
    ipywidgets \
    pyvis \
    mmh3 \
    scipy \
    bokeh

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]

