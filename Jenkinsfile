node {
        stage 'Checkout'
            checkout scm	

        stage 'Pre-Build'
            sh 'pod install'

        stage 'Build'
            sh 'xcodebuild -workspace "Ytel.xcworkspace" -scheme "Ytel"  ONLY_ACTIVE_ARCH=NO' 
        }