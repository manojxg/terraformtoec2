pipeline {
  agent any

  environment {
    AWS_PROFILE = 'jenkins-profile'
    
    //ROLE_ARN     = 'arn:aws:iam::773493560304:role/Super_user'
    //SESSION_NAME = 'jenkins-session'
    AWS_REGION   = 'eu-west-1'
    
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
