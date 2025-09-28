pipeline {
  agent any

  environment {
    AWS_PROFILE = 'Super_user'  
  }

  stages {
    stage('Terraform Apply') {
      steps {
        sh '''
          cd terraform
          terraform init
          terraform apply -auto-approve \
            -var subnet_id=subnet-0e71381a11f27c2c4 \
            -var security_group_ids='["sg-0cf62ab6398dbaba9"]' \
            -var instance_profile_name=Super_user
        '''
      }
    }
  }
}
