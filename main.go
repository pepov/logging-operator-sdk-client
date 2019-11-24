package main

import (
	"context"
	"flag"
	"os"

	"github.com/banzaicloud/logging-operator/pkg/sdk/api/v1beta1"
	"k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/runtime"
	clientgoscheme "k8s.io/client-go/kubernetes/scheme"
	"k8s.io/client-go/tools/clientcmd"
	"k8s.io/klog"
	"sigs.k8s.io/controller-runtime/pkg/client"
)

func main() {

	klogFlags := flag.NewFlagSet("klog", flag.ExitOnError)
	klog.InitFlags(klogFlags)
	err := klogFlags.Set("v", "9")

	scheme := runtime.NewScheme()
	clientgoscheme.AddToScheme(scheme)
	v1beta1.AddToScheme(scheme)

	l := &v1beta1.Logging{
		ObjectMeta: v1.ObjectMeta{
			Name: "asd",
		},
		Spec: v1beta1.LoggingSpec{
			FluentbitSpec: &v1beta1.FluentbitSpec{
				Image: v1beta1.ImageSpec{
					Repository: "fluent/fluent-bit",
					Tag:        "1.3.2",
					PullPolicy: "IfNotPresent",
				},
			},
			FluentdSpec: &v1beta1.FluentdSpec{
				Image: v1beta1.ImageSpec{
					Repository: "banzaicloud/fluentd",
					Tag:        "master",
					PullPolicy: "IfNotPresent",
				},
			},
			ControlNamespace: "default",
		},
		Status: v1beta1.LoggingStatus{},
	}

	config, err := clientcmd.BuildConfigFromFlags("", os.Getenv("KUBECONFIG"))
	if err != nil {
		panic(err.Error())
	}

	dynamicClient, err := client.New(config, client.Options{Scheme:scheme})
	if err != nil {
		panic(err)
	}
	err = dynamicClient.Create(context.TODO(), l)
	if err != nil {
		panic(err)
	}
}
