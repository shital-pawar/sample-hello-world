#!groovy

def gitRepo = 'jenkins-pipeline-modules.git'
def gitPath = 'ssh://git@github.com:shital-pawar/' + gitRepo
def gitBranch = 'master'
def jenkinsPipeline = 'generic-java'
def jenkinsNode = 'slave'
def sharedLibraryVersion ='master'
def pipelineSharedlibrary = "PipelineHelper@${sharedLibraryVersion}"
def pipeline

library changelog: false, identifier: "${pipelineSharedlibrary}"

pipeline = fileLoader.fromGit(
        jenkinsPipeline,
        gitPath,
        gitBranch,
        jenkinsNode
)

pipeline.runJenkinsFile("pipeline.properties", jenkinsNode)