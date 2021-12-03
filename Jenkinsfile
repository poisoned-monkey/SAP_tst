@Library('piper-lib-os') _

pipeline {
    agent any
    stages {
    stage ('Setup') {
        steps {
            setupCommonPipelineEnvironment script: this
        } // steps
    } //stage
        stage ('Deploy Commit') {
            steps {
                gctsDeploy script: this
            } //steps
        } // stage
        stage ('Run Unit Tests') {
            steps {
                script {
                    checks_failed = false
                    try {
                        gctsExecuteABAPUnitTests script: this
                    } catch (err) {
                        unstable('AUnit Test Failed')
                        checks_failed = false
                    }
                }
            } //steps
        } // stage
        stage ('Rollback Commit') {
            when { expression { checks_failed == true } }
            steps {
                gctsRollback script: this
            } //steps
        } // stage
        stage ('Success build') {
            when { expression { checks_failed == false } }
            steps {
                echo ('Build Success!')
            } //steps
        } // stage
    } //stages
} //pipeline
