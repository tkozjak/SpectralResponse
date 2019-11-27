import Qt3D.Core 2.13
import Qt3D.Render 2.13
import Qt3D.Extras 2.13

import QtQuick 2.13 as QQ2

Entity{


    Buffer{
        id: vertex_buffer
        type: Buffer.VertexBuffer
        data: {
            var buffer = new Float32Array(3*6);

            // X axis P1
            buffer[0] = 0.0
            buffer[1] = 0.0
            buffer[2] = 0.0

            // X axis P2
            buffer[3] = 10.0
            buffer[4] = 0.0
            buffer[5] = 0.0

            // Y axis P1
            buffer[6] = 0.0
            buffer[7] = 0.0
            buffer[8] = 0.0

            // Y axis P2
            buffer[9] = 0.0
            buffer[10] = 10.0
            buffer[11] = 0.0

            // Z axis P1
            buffer[12] = 0.0
            buffer[13] = 0.0
            buffer[14] = 0.0

            // Z axis P2
            buffer[15] = 0.0
            buffer[16] = 0.0
            buffer[17] = 10.0

            return buffer;
        }
    }

    GeometryRenderer{
        id: geometry_renderer
        instanceCount: 1
        indexOffset: 0
        firstInstance: 0

        primitiveType: GeometryRenderer.Lines

        geometry: Geometry{
            boundingVolumePositionAttribute: vertex_position
            Attribute{
                id: vertex_position
                attributeType: Attribute.VertexAttribute
                vertexBaseType: Attribute.Float

                vertexSize: 3
                byteOffset: 0
                byteStride: 3*4
                count: 6
                name: typeof defaultPositionAttributeName === "function" ?
                          defaultPositionAttributeName():
                          defaultPositionAttributeName // FIXME: Qt5.8 ???
                buffer: vertex_buffer
            }
        }
    }

    Transform {
        id: transform_coordinateSystem
        translation: Qt.vector3d( 0.0, 0.0, 0.0 )
        scale3D: Qt.vector3d( 1.0, 1.0, 1.0 )
        rotation: fromAxisAndAngle( Qt.vector3d(0, 1, 0), 0.0 )
    }

    PhongMaterial{
        id: phongTempMaterial
        diffuse: "red"
        specular: "black"
    }

    Entity{
        components: [geometry_renderer, transform_coordinateSystem, phongTempMaterial ]
    }
}
