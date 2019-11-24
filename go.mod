module example.com/m

go 1.13

require (
	github.com/banzaicloud/logging-operator/pkg/sdk v0.0.0-20191122160731-b0cbe0202076
	github.com/gogo/protobuf v1.3.1 // indirect
	github.com/google/btree v1.0.0 // indirect
	github.com/googleapis/gnostic v0.3.1 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/imdario/mergo v0.3.8 // indirect
	github.com/json-iterator/go v1.1.8 // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	golang.org/x/oauth2 v0.0.0-20191122200657-5d9234df094c // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	k8s.io/apiextensions-apiserver v0.0.0-20191121021419-88daf26ec3b8 // indirect
	k8s.io/apimachinery v0.0.0-20191121015412-41065c7a8c2a
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/utils v0.0.0-20191114200735-6ca3b61696b6 // indirect
	sigs.k8s.io/controller-runtime v0.2.0
	sigs.k8s.io/testing_frameworks v0.1.2 // indirect
	sigs.k8s.io/yaml v1.1.0 // indirect
)

replace (
	github.com/banzaicloud/logging-operator/pkg/sdk => github.com/banzaicloud/logging-operator/pkg/sdk v0.0.0-20191124124226-27e437d3fb5a
	k8s.io/api => k8s.io/api v0.0.0-20191004102255-dacd7df5a50b
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20190325193600-475668423e9f
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190221213512-86fb29eff628
	k8s.io/apiserver => k8s.io/apiserver v0.0.0-20190319190228-a4358799e4fe
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20190325194458-f2b4781c3ae1
	k8s.io/client-go => k8s.io/client-go v10.0.0+incompatible
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20180509051136-39cb288412c4
	sigs.k8s.io/controller-runtime => sigs.k8s.io/controller-runtime v0.1.10
	sigs.k8s.io/kubefed => sigs.k8s.io/kubefed v0.1.0-rc5
)
