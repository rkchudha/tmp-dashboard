
import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12


Rectangle {
    id:testRectangle
    color:"#fefefe"
    property int batteryChargeLevelHV: 67;
    property int batteryChargeLevelLV: 40;
    property int limFrequency: 42;
    width:parent.width

    ColumnLayout{
        anchors.leftMargin: 15
        anchors.fill: parent
        //Layout.alignment: Qt.AlignHCenter

        Image {
            id: waterloopLogo
            source: "icon.png"
            Layout.maximumWidth: parent.width*0.4
            Layout.maximumHeight: parent.width*0.4
            Layout.alignment: Qt.AlignTop
            //verticalAlignment: Image.AlignTop
            //anchors.top: parent.top
        }

        BatteryFigure {
            id: hvBatteryFigure
            chargeLevel: batteryChargeLevelHV
            batteryName: "HV"

        }

        BatteryFigure {
            id: lvBatteryFigure
            chargeLevel: batteryChargeLevelLV
            batteryName: "LV"
        }

        DataItem{
            id: limFrequencyData
            label: "LIM Frequency"
            units: "Hertz"
            dataValue:limFrequency
        }

    }

}
