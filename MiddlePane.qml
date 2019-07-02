import QtQuick 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4

Rectangle {

    id:middleRectangle
    color:"#fefefe"
    width:parent.width
    property int speed: 42



    CircularGauge {
        id: gooseSpeed
        value: accelerating ? maximumValue : 0
        Layout.alignment: Qt.AlignHCenter|Qt.AlignTop
        width: parent.width*0.8
        anchors.centerIn: parent
        property bool accelerating: false

        Keys.onSpacePressed: accelerating = true
        Keys.onReleased: {
            if (event.key === Qt.Key_Space) {
                accelerating = false;
                event.accepted = true;
            }
        }

        Component.onCompleted: forceActiveFocus()

        Behavior on value {
            NumberAnimation {
                duration: 1000
            }
        }
    }
    DataItem{
        id: speedMeter
        anchors.top: gooseSpeed.bottom
        //anchors.horizontalCenter: gooseSpeed.horizontalCenter
        label: "Speed"
        units: "km/hr"
        dataValue:speed

    }
}
