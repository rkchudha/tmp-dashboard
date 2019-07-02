import QtQuick 2.9
import QtQuick.Layouts 1.12

Item {
    property int chargeLevel
    property string batteryName
    id: root
    height: 40
    anchors.left:parent.left
    anchors.leftMargin: 10
    anchors.bottomMargin: 10


    Rectangle {
        id: outerRect
        width: 100
        height: 20
        color: 'transparent'
        border.color: '#3a3a3a'
        border.width: 2

        Rectangle {
            anchors.leftMargin: 12
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            id: innerRect
            width: chargeLevel * (outerRect.width /100)
            height: outerRect.height -4
            color:if(chargeLevel<10){"#e25151"}else{"#a2ef9e"}
        }
        Text {
            id: batteryLabel
            text: batteryName
            anchors.centerIn: parent
            color: "#3a3a3a"
            font.family: "Open Sans"
        }
    }

    Rectangle {
        id: tipRect
        anchors.left: outerRect.right
        anchors.verticalCenter: outerRect.verticalCenter
        width: 3
        height: outerRect.height / 2
        color: "#3a3a3a"
    }

    Text {
        id:chargeLabel
        text: chargeLevel + qsTr(" %")
        anchors.left: outerRect.right
        anchors.verticalCenter: outerRect.verticalCenter
        font.family: 'Open Sans'
        fontSizeMode: Text.VerticalFit
        color: "black"
        leftPadding: 12
    }

}
