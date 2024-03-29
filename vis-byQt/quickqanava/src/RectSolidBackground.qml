/*
 Copyright (c) 2008-2018, Benoit AUTHEMAN All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the author or Destrat.io nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL AUTHOR BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//-----------------------------------------------------------------------------
// This file is a part of the QuickQanava software. Copyright 2017 Benoit AUTHEMAN.
//
// \file	RectSolidBackground.qml
// \author	benoit@destrat.io
// \date	2017 11 17
//-----------------------------------------------------------------------------

import QtQuick              2.7
import QtGraphicalEffects 1.0
import QuickQanava          2.0 as Qan

/*! \brief Node or group background component with plain solid color backOpacity style support
 *
 */
Rectangle {
    id: background

    // Public:
    property var    nodeItem: undefined

    //! Back color property, default to style.backColor, but available for user overidde.
    property color  backColor: nodeItem.style.backColor

    anchors.fill: parent    // Background follow the content layout implicit size
    radius: nodeItem.style.backRadius
    color: backColor
    border.color: nodeItem.style.borderColor
    border.width: nodeItem.style.borderWidth
    antialiasing: true
    opacity: nodeItem.style.backOpacity
    // Note: Do not enable layer to avoid aliasing at high scale

    /*cuted_img:"E:\QT\project\vis-byQt\image\mengli.png";
    width: 100;
    height: 100;
    Image{
        id: cir_Img;
        smooth: true;
        visible: false;
        anchors.fill: parent;
        source: cuted_img;
        sourceSize: Qt.size(parent.size, parent.size)
        antialiasing: true
    }

    Rectangle {
        id: cir_mask
        color: "black"
        anchors.fill: parent
        radius: width/2
        visible: false
        antialiasing: true
        smooth: true
    }

    OpacityMask {
        id: mask_image
        anchors.fill: cir_Img
        source:cir_Img
        maskSource: cir_mask
        visible: true
        antialiasing: true
    }*/
}
