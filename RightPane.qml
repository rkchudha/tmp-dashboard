import QtQuick.Controls 2.5
import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12
import QtQuick 2.6
import QtQuick.Controls 2.1

Rectangle{
    id:rigthPaneRectangle
    color:"#fefefe"
    width: parent.width
    property int limSpeed : limSpeedSlider.value

    ColumnLayout{
        //anchors.leftMargin: 15
        anchors.fill: parent
        Layout.alignment: Qt.AlignHCenter

        StopButton{
            id: startStopButton
            primButtonLabel: "START";
            secButtonLabel: "STOP"
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            //Layout.rightMargin: 80
        }

        Popup {
                id: popup
                x: 100
                y: 100
                width: 200
                height: 300
                modal: true
                focus: true
                closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
                Layout.alignment: parent.Center
            }

        SwitchToggle{
            id: control
            label: "Brakes"
            Layout.alignment: Qt.AlignHCenter
            Layout.rightMargin: 80
        }

        Slider {
            id:limSpeedSlider
            from: 1
            value: limSpeed
            to: 100
            Layout.alignment: Qt.AlignHCenter
        }

        DataItem{
            id: limSpeedData
            label: "LIM Speed"
            units: "km/hr"
            dataValue:limSpeedSlider.value
            Layout.alignment: Qt.AlignHCenter
        }


    }//ColumnLayout
}//Rectangle
