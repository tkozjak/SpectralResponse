import QtQuick 2.13
import QtQuick.Window 2.13 as W

import QtQuick.Scene3D 2.13
import Qt3D.Core 2.13

import Qt3D.Render 2.13
import Qt3D.Input 2.13
import Qt3D.Extras 2.13

W.Window {
    id: root_window
    visible: true
    width: 640
    height: 480
    title: qsTr("Spectral Response Curve")

    Scene3D{
        id: scene_3d_frame
        anchors.fill: parent
        focus: true

        aspects: ["input", "logic"]
        cameraAspectRatioMode: Scene3D.AutomaticAspectRatio

        MainScene3D{
            id: scene_3d
        }

    }
}
