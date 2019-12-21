pipeline {
         agent { label 'pul' }
         stages	{
                 stage('Build') {
                 		steps {
                     		      sh 'make all'
                 		      }
				}
		stage('Run') {
			     steps {
			     sh './hello'
			     }
		}
		}
	}
		