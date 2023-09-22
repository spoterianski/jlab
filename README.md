# JLab

JupyterLab environment, based on python 3.10, with common libraries for data science and analytics.

## Usage

Go to your working directory and run:

```bash
docker run -it --rm --name jlab -p 8888:8888 -e JUPYTER_TOKEN={PASSWORD} -v $PWD:/app jlab:latest
```

Where {PASSWORD} is the password to access the JupyterLab server.

## Optimisation usage

Add to your `.zshrc` next lines:

```bash
jlab() {
          (sleep 3 && open "http://0.0.0.0:8888/lab?token=password")&
            docker run -it --rm --name jlab -p 8888:8888 -e JUPYTER_TOKEN=password -v $PWD:/app jlab:latest            
}
```

Go to your working directory and run JupyterLab:

```bash
jlab
```
