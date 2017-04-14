node {
        stage 'Checkout'
            checkout scm	

        stage 'Pre-Build'
            sh 'pod install'

        stage 'Build'
            sh 'xcodebuild -workspace "Message360.xcworkspace" -scheme "Message360"  ONLY_ACTIVE_ARCH=NO' 
        }