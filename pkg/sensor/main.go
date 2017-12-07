package sensor

import (
	"github.com/capsule8/capsule8/pkg/config"
	"github.com/capsule8/capsule8/pkg/services"
	"github.com/golang/glog"
)

// Main is the main entrypoint for the sensor
func Main() {
	manager := services.NewServiceManager()
	if len(config.Global.ProfilingAddr) > 0 {
		service := services.NewProfilingService(
			config.Global.ProfilingAddr)
		manager.RegisterService(service)
	}
	if len(config.Sensor.ServerAddr) > 0 {
		sensor, err := NewSensor()
		if err != nil {
			glog.Fatalf("Could not create sensor: %s", err.Error())
		}
		if err := sensor.Start(); err != nil {
			glog.Fatalf("Could not start sensor: %s", err.Error())
		}
		defer sensor.Stop()
		service := NewTelemetryService(sensor, config.Sensor.ServerAddr)
		manager.RegisterService(service)
	}

	manager.Run()
}
