#!/bin/bash

jjb="/root/.local/bin/jenkins-jobs --conf /root/jenkins_jobs.ini update /root/git/jenkins-job-builder/jobs/jobs.yaml"
jjb-sensu="/root/.local/bin/jenkins-jobs --conf /root/jenkins_jobs.ini update /root/git/jenkins-job-builder/jobs/sensu.yaml"

cd /root/git/jenkins-job-builder/jobs/

$jjb
$jjb-sensu

echo $jjb

exit