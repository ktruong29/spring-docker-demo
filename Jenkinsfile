// pipeline {
//     agent any //To run on any device
//
//     //First tool we need is Maven to build the application
//     tools {
//         maven "maven" //Define maven installation name from Dashboard -> Manage Jenkins -> Tools -> Maven installation
//     }
//
//     stages {
//         stage("SCM checkout") {
//             steps {
//                 //Use Pipeline Syntax helper
//                 checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ktruong29/spring-docker-demo.git']])
//             }
//         }
//
//         stage("Build Process") {
//             steps {
//                 //For Windows, use bat, else sh
//                 bat "mvn clean install"
//             }
//         }
//
//         stage("Build Image") {
//             steps {
//                 script {
//                     bat 'docker build -t ketruong/spring-cicd:1.0 .'
//                 }
//             }
//         }
//
//         //steps only used for CI/CD. Notification is not part of CI/CD -> no need to declare steps
//     }
//
//     //Email notification
//     post {
//         always {
//             emailext attachLog: true,
//             body: '''<html>
//     <body>
//         <p>Build Status: ${BUILD_STATUS}</p>
//         <p>Build Number: ${BUILD_NUMBER}</p>
//         <p>Check the <a href="${BUILD_URL}">console output</a>.</p>
//     </body>
// </html>''', mimeType: 'text/html', replyTo: 'chanhlong0457@gmail.com', subject: 'Pipeline Status : ${BUILD_NUMBER}', to: 'chanhlong0457@gmail.com'
//         }
//     }
// }
