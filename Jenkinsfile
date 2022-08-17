node {
    checkout scm
    docker.withRegistry('https://quay.dc.xing.com') {

        def customImage = docker.build("data-platform/s3cmd:${env.BUILD_ID}")

        customImage.push()
        customedImage.push('latest')
    }
}