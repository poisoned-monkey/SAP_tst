@Library('piper-lib-os') _

pipeline {
    agent any
    stages {
        stage ('Setup') {
            steps {
                setupCommonPipelineEnvironment(
                    collentTelemetryData: 'false',
                    verbose: true,
                    script: this
                    )
            }
        }
    }
}
