import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Layouts 1.12

Window {
    visible: true
    minimumHeight : 480
    minimumWidth : 640

    title: qsTr("Goose Dashboard")
    color: "red"

    ColumnLayout{
        id: windowColumn
        spacing:5
        anchors.fill:parent

        RowLayout{
            id: emptyToolPane
            Layout.fillWidth:parent
            Layout.maximumHeight: 20

            Rectangle{
                id:emptyRectangleToolPane
                Layout.fillWidth: true
                Layout.fillHeight:true
                color: "#fefefe"
            }
        }

        RowLayout {
            id: layoutPanes
            spacing: 6
            Layout.fillWidth: parent


            //Left Battery Pane
            ColumnLayout{
                id:leftpane
                Layout.preferredWidth: parent.width*0.30
                Layout.alignment: Qt.AlignHCenter

                LeftPane{
                    id:leftPane
                    Layout.fillWidth: true
                    Layout.fillHeight:true
                }
            }

            //Middle Pane
            ColumnLayout{
                id:middlepane
                Layout.preferredWidth: parent.width*0.30
                Layout.maximumWidth: parent.width*0.30

                MiddlePane{
                    id:middlePane
                    Layout.fillWidth: true
                    Layout.fillHeight:true
                    color: "#fefefe"
                }
            }

            //Right Pane
            ColumnLayout{
                id:rightpane
                Layout.preferredWidth: parent.width*0.30
                //Layout.rightMargin: 25

                RightPane{
                    id:rightPane
                    Layout.fillWidth: true
                    Layout.fillHeight:true                 
                }
            }
        }

        RowLayout{
            id: distanceState
            Layout.fillWidth:parent
            Layout.minimumHeight: 50
            Layout.maximumHeight: 125

            Rectangle{
                id:distance
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "#fefefe"
            }
        }
    }

}
