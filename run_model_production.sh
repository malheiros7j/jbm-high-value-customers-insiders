# variables
data=$(date +'%Y-%m-%dT%H:%M:%S')


# path (root of project)
path='/home/ubuntu/Fidelity-Program'

# path where papermill is installed on env (find: 'which papermill' on project root folder)
path_to_envs='/home/ubuntu/anaconda3/envs/pa005_clustering_aws/bin'


$path_to_envs/papermill $path/src/models/9.0-nmv-deploy.ipynb $path/reports/9.0-nmv-deploy-$data.ipynb
