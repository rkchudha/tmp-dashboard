import QtQuick 2.0
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12



    Item {
        property string primButtonLabel: "START";
        property string secButtonLabel: "STOP"
        id: stopButton
        x: 0
        y: 0
        width: 150
        height: 50
        Layout.alignment: Qt.AlignHCenter


        Rectangle {
            id: rectangle
            color: "#333333"
            radius: 20
            //anchors.rightMargin: 157
            //anchors.bottomMargin: 121
            //anchors.leftMargin: -157
            //anchors.topMargin: -121
            anchors.fill: parent

            MouseArea {
                  id: mouseArea1
                  anchors.fill: parent
                  hoverEnabled: true;
                  onEntered: {parent.color = "#727272" }
                  onExited: {parent.color = "#333333"  }
                  onClicked: popup.open()//{parent.color="#161616"}

            }

            Text {
                id: stopButtonText
                color: "#ffffff"
                text: qsTr(primButtonLabel)
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
                styleColor: "#ffffff"
                font.pixelSize: 20
                lineHeight: 5.9
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                fontSizeMode: Text.FixedSize
            }

        }
    }


