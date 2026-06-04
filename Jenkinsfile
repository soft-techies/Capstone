pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/soft-techies/Capstone.git'
            }
        }

        stage('Deploy to AWS') {
            steps {
                sh '''
                scp -o StrictHostKeyChecking=no \
                -i /home/ubuntu/inkey.pem \
                Ansible_files/index-aws.html \
                ubuntu@100.31.132.5:/tmp/index.html

                ssh -o StrictHostKeyChecking=no \
                -i /home/ubuntu/inkey.pem \
                ubuntu@100.31.132.5 \
                "sudo cp /tmp/index.html /var/www/html/index.html && sudo systemctl restart nginx"
                '''
            }
        }

        stage('Deploy to Azure') {
            steps {
                sh '''
                scp -o StrictHostKeyChecking=no \
                -i /home/ubuntu/id_rsa \
                Ansible_files/index-azure.html \
                azureuser@168.62.175.153:/tmp/index.html

                ssh -o StrictHostKeyChecking=no \
                -i /home/ubuntu/id_rsa \
                azureuser@168.62.175.153 \
                "sudo cp /tmp/index.html /var/www/html/index.html && sudo systemctl restart nginx"
                '''
            }
        }
    }
}
