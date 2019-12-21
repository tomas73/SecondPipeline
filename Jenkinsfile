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
		stage('Deliver') {
			steps {
			sh 'cp hello /tmp'
			}
		}
		}
	}
		