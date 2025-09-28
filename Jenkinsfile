pipeline {
  agent any

  environment {
    AWS_PROFILE = 'jenkins-profile'  // Optional if using EC2 IAM role
  }

  stages {
    stage('Terraform Apply') {
      steps {
        sh '''
          cd terraform
          terraform init
          terraform apply -auto-approve \
            -var subnet_id=subnet-0123456789abcdef \
            -var security_group_ids='["sg-0123456789abcdef"]' \
            -var instance_profile_name=MyEC2Profile
        '''
      }
    }
  }
}
