#!/bin/bash
delete="jenkins-jobs --conf $HOME/git/jenkins-job-builder/jenkins_jobs.ini delete $HOME/git/jenkins-job-builder/jobs/jobs.yaml"
jjb="jenkins-jobs --conf $HOME/git/jenkins-job-builder/jenkins_jobs.ini update $HOME/git/jenkins-job-builder/jobs/jobs.yaml"

cd $HOME/git/jenkins-job-builder/jobs/

$delete
sudo git pull
$jjb

echo $jjb

exit