module capsule8

go 1.19

require (
        github.com/aws/aws-sdk-go v1.12.46
        github.com/capsule8/capsule8 v0.0.0-00010101000000-000000000000
        github.com/gobwas/glob v0.2.2
        github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
        github.com/golang/protobuf v0.0.0-20170920220647-130e6b02ab05
        github.com/kelseyhightower/envconfig v1.3.0
        golang.org/x/net v0.0.0-20190311183353-d8887717615a
        golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a
        google.golang.org/grpc v1.7.0
)

require (
        github.com/go-ini/ini v1.32.0 // indirect
        github.com/jmespath/go-jmespath v0.0.0-20160202185014-0b12d6b521d8 // indirect
        github.com/smartystreets/goconvey v1.7.2 // indirect
        github.com/stretchr/testify v1.8.1 // indirect
        golang.org/x/sync v0.1.0 // indirect
        golang.org/x/text v0.3.0 // indirect
        google.golang.org/genproto v0.0.0-20171002232614-f676e0f3ac63 // indirect
        gopkg.in/ini.v1 v1.67.0 // indirect
)

replace (
        github.com/capsule8/capsule8 => ./
        github.com/capsule8/capsule8/pkg/ => ./pkg/
)
