import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts

// This comes from qmlRegisterSingletonInstance()
import SingletonImport

Dialog {

    ColumnLayout {
        anchors.fill: parent

        Label {
            text: "Type your name here:"
        }

        TextField {
            Layout.fillWidth: true
            placeholderText: "Your name"

            onTextChanged: SingletonInstance.name = text
        }

        Label {
            text: "Type your age here:"
        }

        TextField {
            Layout.fillWidth: true
            placeholderText: "Your age"

            onTextChanged: SingletonInstance.age = parseInt(text)
        }

        Label {
            text: "Type your favorite thing here:"
        }

        TextField {
            Layout.fillWidth: true
            placeholderText: "Your favorite thing"

            onTextChanged: SingletonInstance.thing = text
        }
    }
}
