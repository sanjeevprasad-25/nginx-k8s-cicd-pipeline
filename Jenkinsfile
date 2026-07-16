pipeline{
    agent any
    stages{
        stage("Clone Repository"){
            steps{
                echo "Cloning repository"
                git branch: "main",
                    url: "https://github.com/sanjeevprasad-25/nginx-k8s-cicd-pipeline.git"
                 }
                 post{
                    success {echo "Cloned successfully"}
                    failure {echo "Cloning failed"}
                 }
                                 } 
        stage("Initializing Terraform"){
            steps{
                dir('Terraform'){
                    echo "Initialize terraform"
                    sh 'terraform init'
                                }
                 }
                 post{
                    success {echo "Initialized successfully"}
                    failure {echo "Initalization failed"}
                     }
                                        }
        stage("Validate and Plan Terraform"){
            steps{
                dir('Terraform'){
                    echo "Validating and planing terraform"
                    sh 'terraform validate'
                    sh 'terraform plan -out=tfplan'
                    sh 'ls -l'
                                }
                  }
                post{
                    success {echo "Validation and planed sccessfully"}
                    failure {echo "Validation and planed failed"}
                     }   
                                             }
        stage("Applying terraform"){
            steps{
                dir('Terraform'){
                    echo "Applying terrform"
                    sh 'terraform apply --auto-approve tfplan'
                                }
                  } 
                post{
                    success {echo "Applied sccessfully"}
                    failure {echo "Application failed"}
                     }  
                                    }                                                                             
          }
  post{
    success {echo "Infrastructure pipeline completed successfully"}
    failure {echo "Infrastructure pipeline failed"}
      }
}