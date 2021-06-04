// Includes relevant modules used by the QML
import QtQuick 2.9
import QtQuick.Controls 2.2 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.4 as Kirigami
import org.kde.kquickcontrols 2.0
import org.kde.quickcharts 1.0 as Charts

// Base element, provides basic features needed for all kirigami applications
Kirigami.ApplicationWindow {
    // ID provides unique identifier to reference this element
    id: root

    // Window title
    // i18nc is useful for adding context for translators, also lets strings be changed for different languages
    title: i18nc("@title:window", "Hello World")

    // Initial page to be loaded on app load
    pageStack.initialPage: Kirigami.Page {
        title: "Line Chart"
        Charts.LineChart {
            anchors.fill: parent

            valueSources: [
                Charts.ModelSource { roleName: "value1"; model: listModel },
                Charts.ModelSource { roleName: "value2"; model: listModel },
                Charts.ModelSource { roleName: "value3"; model: listModel }
            ]
            colorSource: Charts.ArraySource { array: ["red", "green", "blue"] }
            nameSource: Charts.ArraySource { array: ["Example 1", "Example 2", "Example 3"]}

            ListModel {
                id: listModel

                ListElement { value1: 19; value2: 2; value3: 6 }
                ListElement { value1: 14; value2: 20; value3: 17 }
                ListElement { value1: 4; value2: 10; value3: 11 }
                ListElement { value1: 5; value2: 11; value3: 9 }
                ListElement { value1: 20; value2: 7; value3: 13 }
            }
        }
    }
}