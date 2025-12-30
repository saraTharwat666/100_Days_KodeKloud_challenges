
# pipeline Script 


pipeline {
    agent { label 'ststor01' }

    parameters {
        string(name: 'BRANCH', defaultValue: 'master', description: 'Branch to deploy (master or feature)')
    }

    stages {
        stage('Deploy') {
            steps {
                sh '''
                cd /var/www/html

                git init
                git remote remove origin || true
                git remote add origin http://git.stratos.xfusioncorp.com/sarah/web_app.git

                git fetch origin
                git checkout ${BRANCH}
                git pull origin ${BRANCH}
                '''
            }
        }
    }
}
