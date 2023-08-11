pipeline{

    agent any

// uncomment the following lines by removing /* and */ to enable
    tools{
       maven 'Maven 3.9.4' 
    }
    
    stages{
        stage('build'){
            steps{
                echo 'this is the build job'
                sh 'mvn compile'
                
            }
        }
        stage('test'){
            steps{
                echo 'this is the test job'
                sh 'mvn clean test'
              
            }
        }
        stage('package'){
            steps{
                echo 'this is the third job'
                sh 'mvn package -DskipTests'
                
            }
        }
    }
    
    post{
        always{
            echo 'this pipeline has completed...'
        }
        
    }
    
}
