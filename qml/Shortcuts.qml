/**
 *  OSM
 *  Copyright (C) 2020  Pavel Smokotnin

 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.

 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.

 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Popup {
    id: popup
    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

    ColumnLayout {
        anchors.fill: parent
        Label {
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.leftMargin:  10
            Layout.rightMargin: 10
            Layout.topMargin:   10
            Layout.bottomMargin:10
            text: qsTr("
                <style>
                td {padding:2px;}
                th {padding-top:20px;}
                </style>
                <table>
                <tr><th colspan='2' style='padding-top:0px;'>Project</th></tr>
                <tr><td width='200'>%1+N</td><td>new project</td></tr>
                <tr><td>%1+S</td><td>save current measurements and stores</td></tr>
                <tr><td>%1+O</td><td>open saved project</td></tr>

                <tr><th colspan='2'>Measurements</th></tr>
                <tr><td>%1+A</td><td>append new measurement</td></tr>
                <tr><td>%1+U</td><td>append new union</td></tr>
                <tr><td>%1+X</td><td>store all measurements</td></tr>
                <tr><td>%1+R</td><td>reset aveverages</td></tr>
                <tr><td>%1+C</td><td>store current measurembnt</td></tr>
                <tr><td>%1+E</td><td>apply estimated delay for current measuremts</td></tr>

                <tr><th colspan='2'>Generator</th></tr>
                <tr><td>%1+G</td><td>enable/disable generator</td></tr>

                <tr><th colspan='2'>Charts</th></tr>
                <tr><td>%1+1</td><td>show 1 chart</td></tr>
                <tr><td>%1+2</td><td>show 2 charts</td></tr>
                <tr><td>%1+3</td><td>show 3 charts</td></tr>
                <tr><td>right click</td><td>open wavelength calculator for current frequency (time for impulse)</td></tr>

                <tr><th colspan='2'>Tools</th></tr>
                <tr><td>%1+W</td><td>show wavelength calculator</td></tr>
                <tr><td>%1+D</td><td>toggle dark mode</td></tr>
                <tr><td>F1</td><td>show keys combinations</td></tr>
                <tr><td>F2</td><td>show info</td></tr>
                <tr><td>F3</td><td>check for update</td></tr>
                </table>
            ").arg((Qt.platform.os == "osx" ? "⌘" : "Ctrl"));
        }
    }
}
