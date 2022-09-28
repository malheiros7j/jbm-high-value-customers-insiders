# variable 
data=$(date +'%Y-%m-%d-T%H:%M:%S')

# path
path='/home/jordan/Estudismo/PA005_jordan_malheiros'
path_to_env='/home/jordan/Estudismo/PA005_jordan_malheiros/pa005-project/pa005-env/.venv/bin'

$path_to_env/papermill $path/src/models/notebook-final-deploy.ipynb $path/reports/notebook-final-deploy-$data.ipynb
