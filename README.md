### Features
A machine learning tool set that contains following stuff
- base on continuumio/anaconda
- boto3 for aws support
- mlflow

### RUN
```bash
docker run -p 8888:8888 naughtytao/conda
```
and open your broswer according to the container log:
```bash
[I 23:04:18.250 NotebookApp] The Jupyter Notebook is running at:
[I 23:04:18.250 NotebookApp] http://1bee79ed35fd:8888/?token=48296120badfc444bb2a49cad7796a48f2366167c55a200b
```
replace that `1bee79ed35fd` with `localhost`
