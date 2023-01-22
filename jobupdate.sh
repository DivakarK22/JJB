#!/bin/bash

jjb="/root/.local/bin/jenkins-jobs --conf /root/jenkins_jobs.ini update /root/git/jenkins-job-builder/jobs/jobs.yaml"
jjbsensu="/root/.local/bin/jenkins-jobs --conf /root/jenkins_jobs.ini update /root/git/jenkins-job-builder/jobs/sensu.yaml"

cd /root/git/jenkins-job-builder/jobs/

$jjb
$jjbsensu

echo $jjb

exit