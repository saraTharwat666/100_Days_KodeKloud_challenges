3️⃣ Configure Pipeline Script

Pipeline Definition

'''
Select:
Pipeline script

Pipeline Script
pipeline {
    agent { label 'ststor01' }

    stages {
        stage('Deploy') {
            steps {
                sh '''
                cd /var/www/html
                git pull origin main
                '''
            }
        }
    }
} 
'''
