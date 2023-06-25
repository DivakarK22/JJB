#!/bin/bash
jjb="jenkins-jobs --flush-cache --ignore-cache --conf $HOME/git/jenkins-job-builder/jenkins_jobs.ini update --delete-old $HOME/git/jenkins-job-builder/jobs/jobs.yaml"

cd $HOME/git/jenkins-job-builder/jobs/

sudo git pull
$jjb

echo $jjb

exit