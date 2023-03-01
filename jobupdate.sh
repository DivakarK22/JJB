#!/bin/bash
delete="/root/local/bin/jenkins-jobs --conf /root/git/jenkins-job-builder/jenkins_jobs.ini delete /root/git/jenkins-job-builder/jenkins-job-builder/jobs/jobs.yaml"
jjb="/root/local/bin/jenkins-jobs --conf /root/git/jenkins-job-builder/jenkins_jobs.ini update /root/git/jenkins-job-builder/jenkins-job-builder/jobs/jobs.yaml"

cd /root/git/jenkins-job-builder/jobs/

$delete
$jjb

echo $jjb

exit