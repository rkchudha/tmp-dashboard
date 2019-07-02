import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12


Item {
    id: dataItem
    property string label: ""
    property string units: ""
    property int dataValue: 0
    property int rowHeight: 40
    property bool dataBool: true
    height:rowHeight

    RowLayout{
        id: dataItemRow
        Layout.alignment: Qt.AlignTop
        Layout.fillWidth: true
        width: 100

        Text {
            id: labelText
            text: label
            color: "#3a3a3a"
            font.family: "Open Sans"
            fontSizeMode: Text.VerticalFit
            font.pointSize: 15
            //Layout.alignment: Qt.AlignLeft
        }

        Column{
            id: dataItemColumn
            Layout.alignment: Qt.AlignRight
            height: rowHeight
            Text {
                id:dataVal
                text: dataValue
                Layout.alignment: Qt.AlignHCenter
                color: "#3a3a3a"
                font.family: "Open Sans"
                font.pointSize: 15
            }


            Text {
                id: unitsText
                text: units
                Layout.alignment: Qt.AlignHCenter
                color: "#3a3a3a"
                font.family: "Open Sans"
                font.pointSize: 7
            }
        }
    }
}

