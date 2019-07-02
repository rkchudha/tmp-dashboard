import QtQuick.Controls 2.4
import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12

RowLayout{
    property string label: "value"
    property bool control: true
    Layout.fillWidth: parent.width
    spacing: 25

    Text {
        id: toggleLabel
        text: qsTr(label)
        color: "#3a3a3a"
        font.family: "Open Sans"
        fontSizeMode: Text.VerticalFit
        font.pointSize: 15
        Layout.alignment: Qt.AlignLeft
    }


    Switch {
        id: control
        text: qsTr(control.checked ? "ENABLED" : "DISABLED")
        Layout.alignment: Qt.AlignRight
        Layout.rightMargin: 100

        indicator: Rectangle {
            implicitWidth: 140
            implicitHeight: 40
            //x: control.right
            y: parent.height / 2 - height / 2
            radius: 20
            color: control.checked ? "#a2ef9e" : "#ffffff"
            border.color: control.checked ? "#a2ef9e" : "#cccccc"

            Rectangle {
                x: control.checked ? parent.width - width : 0
                width: 40
                height: 40
                radius: 20
                color: control.down ? "#cccccc" : "#ffffff"
                border.color: control.checked ? (control.down ? "#a2ef9e" : "#21be2b") : "#999999"
            }
        }

        contentItem: Text {
            text: control.text
            font: control.font
            //opacity: enabled ? 1.0 : 0.3
            color: control.checked ? "#ffffff" : "#17a81a"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: control.checked ? Text.AlignLeft : Text.AlignRight
            //leftPadding: control.indicator.width + control.spacing
        }
    }//Switch
} //RowLayout
