### What is this?

An example OpenShift pipeline template with Jenkinsfile.

### How do I use this?
```bash
cd jenkins-slave
# set registry variable to openshift docker registry url
# usually it's docker-registry-default.$OCSUBDOMAIN/
# if using oc cluster up, it's docker-registry-default.127.0.0.1.nip.io
./build.sh
cd ../

ssh-keygen -f id_rsa # generate clean ssh keys in current dir
# don't forget to add these keys to repository deploy keys

oc create secret generic \
  git-deploy-key \
  --from-file=id_rsa=id_rsa \
  --from-file=id_rsa.pub # save ssh keys in openshift secret

oc create -f openshift-pipeline-example.yaml # create pipeline
oc start build example-pipeline # start build
```  

### Required resources?
An OpenShift/OKD Cluster and the [oc cli](https://www.okd.io/download.html#oc-platforms).

For further information, consider the OKD [docs](https://github.com/openshift/origin/tree/master/examples/jenkins/pipeline).
