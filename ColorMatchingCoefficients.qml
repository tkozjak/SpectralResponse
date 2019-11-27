import Qt3D.Core 2.13
import Qt3D.Render 2.13
import Qt3D.Extras 2.13

import QtQuick 2.13 as QQ2

Entity{

    Buffer{
        id: vertex_buffer
        type: Buffer.VertexBuffer
        data: {
            var buffer = new Float32Array(81*3);

            var shortWLen_Coefficients = [ 0.00117,
                                          0.00189,
                                          0.00359,
                                          0.00647,
                                          0.01214,
                                          0.01969,
                                          0.03707,
                                          0.06637,
                                          0.11541,
                                          0.18575,
                                          0.24769,
                                          0.29012,
                                          0.31228,
                                          0.3186,
                                          0.3167,
                                          0.31166,
                                          0.29821,
                                          0.27295,
                                          0.22991,
                                          0.18592,
                                          0.14494,
                                          0.10968,
                                          0.08257,
                                          0.06246,
                                          0.04776,
                                          0.03688,
                                          0.02698,
                                          0.01842,
                                          0.01221,
                                          0.0083,
                                          0.00549,
                                          0.0032,
                                          0.00146,
                                          0.00023,
                                          -0.00058,
                                          -0.00105,
                                          -0.0013,
                                          -0.00138,
                                          -0.00135,
                                          -0.00123,
                                          -0.00108,
                                          -0.00093,
                                          -0.00079,
                                          -0.00063,
                                          -0.00049,
                                          -0.00038,
                                          -0.0003,
                                          -0.00022,
                                          -0.00015,
                                          -0.00011,
                                          -0.00008,
                                          -0.00005,
                                          -0.00003,
                                          -0.00002,
                                          -0.00001,
                                          -0.00001,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0,
                                          0];

            var mediumWLen_Coefficients = [ -0.00001,
                                           -0.00002,
                                           -0.00004,
                                           -0.00007,
                                           -0.00014,
                                           -0.00022,
                                           -0.00041,
                                           -0.0007,
                                           -0.0011,
                                           -0.00143,
                                           -0.00119,
                                           -0.00021,
                                           0.00149,
                                           0.00379,
                                           0.00678,
                                           0.01046,
                                           0.01485,
                                           0.01977,
                                           0.02538,
                                           0.03183,
                                           0.03914,
                                           0.04713,
                                           0.05689,
                                           0.06948,
                                           0.08536,
                                           0.10593,
                                           0.1286,
                                           0.15262,
                                           0.17468,
                                           0.19113,
                                           0.20317,
                                           0.21083,
                                           0.21466,
                                           0.21487,
                                           0.21178,
                                           0.20588,
                                           0.19702,
                                           0.18522,
                                           0.17087,
                                           0.15429,
                                           0.1361,
                                           0.11686,
                                           0.09754,
                                           0.07909,
                                           0.06246,
                                           0.04776,
                                           0.03557,
                                           0.02583,
                                           0.01828,
                                           0.01253,
                                           0.00833,
                                           0.00537,
                                           0.00334,
                                           0.00199,
                                           0.00116,
                                           0.00066,
                                           0.00037,
                                           0.00021,
                                           0.00011,
                                           0.00006,
                                           0.00003,
                                           0.00001,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0 ];

            var longWLen_Coefficients = [ 0.00003,
                                         0.00005,
                                         0.0001,
                                         0.00017,
                                         0.0003,
                                         0.00047,
                                         0.00084,
                                         0.00139,
                                         0.00211,
                                         0.00266,
                                         0.00218,
                                         0.00036,
                                         -0.00261,
                                         -0.00673,
                                         -0.01213,
                                         -0.01874,
                                         -0.02608,
                                         -0.03324,
                                         -0.03933,
                                         -0.04471,
                                         -0.04939,
                                         -0.05364,
                                         -0.05814,
                                         -0.06414,
                                         -0.07173,
                                         -0.0812,
                                         -0.08901,
                                         -0.09356,
                                         -0.09264,
                                         -0.08473,
                                         -0.07101,
                                         -0.05316,
                                         -0.03152,
                                         -0.00613,
                                         0.02279,
                                         0.05514,
                                         0.0906,
                                         0.1284,
                                         0.16768,
                                         0.20715,
                                         0.24526,
                                         0.27989,
                                         0.30928,
                                         0.33184,
                                         0.34429,
                                         0.34756,
                                         0.33971,
                                         0.32265,
                                         0.29708,
                                         0.26348,
                                         0.22677,
                                         0.19233,
                                         0.15968,
                                         0.12905,
                                         0.10167,
                                         0.07857,
                                         0.05932,
                                         0.04366,
                                         0.03149,
                                         0.02294,
                                         0.01687,
                                         0.01187,
                                         0.00819,
                                         0.00572,
                                         0.0041,
                                         0.00291,
                                         0.0021,
                                         0.00148,
                                         0.00105,
                                         0.00074,
                                         0.00052,
                                         0.00036,
                                         0.00025,
                                         0.00017,
                                         0.00012,
                                         0.00008,
                                         0.00006,
                                         0.00004,
                                         0.00003,
                                         0.00001,
                                         0 ];


            for(var i = 0; i < buffer.length; i+=3){
                buffer[i+2] = parseFloat(longWLen_Coefficients[i/3]) / ( parseFloat(longWLen_Coefficients[i/3]) + parseFloat(shortWLen_Coefficients[i/3]) + parseFloat(mediumWLen_Coefficients[i/3])  );
                buffer[i+1] = 0* parseFloat(shortWLen_Coefficients[i/3]) / ( parseFloat(longWLen_Coefficients[i/3]) + parseFloat(shortWLen_Coefficients[i/3]) + parseFloat(mediumWLen_Coefficients[i/3])  );
                buffer[i+0] = parseFloat(mediumWLen_Coefficients[i/3]) / ( parseFloat(longWLen_Coefficients[i/3]) + parseFloat(shortWLen_Coefficients[i/3]) + parseFloat(mediumWLen_Coefficients[i/3])  );
            }


            return buffer;
        }
    }

    GeometryRenderer{
        id: geometry_renderer
        instanceCount: 1
        indexOffset: 0
        firstInstance: 0

        primitiveType: GeometryRenderer.LineStrip

        geometry: Geometry{
            boundingVolumePositionAttribute: vertex_position
            Attribute{
                id: vertex_position
                attributeType: Attribute.VertexAttribute
                vertexBaseType: Attribute.Float

                vertexSize: 3
                byteOffset: 0
                byteStride: 3*4
                count: 81-20
                name: typeof defaultPositionAttributeName === "function" ?
                          defaultPositionAttributeName():
                          defaultPositionAttributeName // FIXME: Qt5.8 ???
                buffer: vertex_buffer
            }
        }
    }

    Transform {
        id: transform_spectralLocus
        translation: Qt.vector3d( 0.0, 0.0, 0.0 )
        scale3D: Qt.vector3d( 10.0, 10.0, 10.0 )
        rotation: fromAxisAndAngle( Qt.vector3d(0, 1, 0), 0.0 )
    }

    PhongMaterial{
        id: phongTempMaterial
        diffuse: "red"
        specular: "black"
    }

    Entity{
        components: [geometry_renderer, transform_spectralLocus, phongTempMaterial ]
    }
}

