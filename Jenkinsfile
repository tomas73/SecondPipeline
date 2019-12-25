pipeline {
	 agent none
         stages	{
                 stage('Build') {
		 	 	agent { label 'pul' }
                 		steps {
                     		      sh 'make host'
				      sh 'source /opt/poky/2.6-bbb/environment-setup-cortexa8hf-neon-poky-linux-gnueabi ; make target'
                 		      }
				 }
		stage('RunHost') {
			 	agent { label 'master' }
			     steps {
			     sh './hello'
			     }
		}
		stage('Deliver') {
		 	 	agent { label 'pul' }
			steps {
			sh 'cp hello /tmp'
			}
		}
		}
	}
		