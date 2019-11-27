import Qt3D.Core 2.13
import Qt3D.Render 2.13
import Qt3D.Input 2.13
import Qt3D.Extras 2.13

Entity{

    Camera{
        id: perspective_camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 70
        nearPlane: 0.1
        farPlane: 80000.0

        position: Qt.vector3d( 10.0, 10.0, 10.0 )
        upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    OrbitCameraController{
        camera: perspective_camera
    }

    components: [
        RenderSettings{
            activeFrameGraph: RenderSurfaceSelector{
                Viewport{
                    ClearBuffers{
                        buffers: ClearBuffers.AllBuffers
                        clearColor: "LightSteelBlue"

                        CameraSelector{
                            id: camera_selector
                            camera: perspective_camera
                        }
                    }
                }
            }
        },
        InputSettings{}
    ]

    PointLight{
        constantAttenuation: 50000
    }

    CoordinateSystem{}

//    SpectralLocusCurve{}

    ChromaticityLocusCurve{}

    ColorMatchingCoefficients{}
}

