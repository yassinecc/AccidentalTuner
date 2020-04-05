import QtQuick 2.9
import MuseScore 3.0
import FileIO 3.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2


MuseScore {
      menuPath: "Plugins.AccidentalTuner"
      description: "This plugin applies tuning notes affected by accidentals and custom key signatures. Please refer to the documentation file for more help on using the plugin." 
      version: "1.0"
      pluginType: "dialog"
      width: 400
      height: 300
	  
      
	  property var keySigIndex: {"C": 0, "D": 0, "E": 0, "F": 0 , "G": 0, "A": 0, "B": 0}
	  
      
      
      ListModel {
            id: accidentalList
            ListElement {
                  name: "NONE"
				  title: "None"
                  tuning: 0
                  enabled: 1
				  image: "AT_NONE.png"
            }
			ListElement {
					name:"FLAT"
					tuning: 0
					enabled: 0
					image: "AT_FLAT.png"
			}
			ListElement {
					name:"SHARP"
					tuning: 0
					enabled: 0
					image: "AT_SHARP.png"
			}
			ListElement {
					name:"FLAT_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_ARROW_UP.png"
			}

			ListElement {
					name:"FLAT_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_ARROW_DOWN.png"
			}

			ListElement {
					name:"NATURAL_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_ARROW_UP.png"
			}

			ListElement {
					name:"NATURAL_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_ARROW_DOWN.png"
			}

			ListElement {
					name:"SHARP_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_ARROW_UP.png"
			}

			ListElement {
					name:"SHARP_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_ARROW_DOWN.png"
			}

			ListElement {
					name:"SHARP2_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_SHARP2_ARROW_UP.png"
			}

			ListElement {
					name:"SHARP2_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_SHARP2_ARROW_DOWN.png"
			}

			ListElement {
					name:"FLAT2_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_FLAT2_ARROW_UP.png"
			}

			ListElement {
					name:"FLAT2_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_FLAT2_ARROW_DOWN.png"
			}

			ListElement {
					name:"MIRRORED_FLAT"
					tuning: 0
					enabled: 0
					image: "AT_MIRRORED_FLAT.png"
			}

			ListElement {
					name:"MIRRORED_FLAT2"
					tuning: 0
					enabled: 0
					image: "AT_MIRRORED_FLAT2.png"
			}

			ListElement {
					name:"SHARP_SLASH"
					tuning: 50
					enabled: 1
					image: "AT_SHARP_SLASH.png"
			}

			ListElement {
					name:"SHARP_SLASH4"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_SLASH4.png"
			}

			ListElement {
					name:"FLAT_SLASH2"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_SLASH2.png"
			}

			ListElement {
					name:"FLAT_SLASH"
					tuning: -50
					enabled: 1
					image: "AT_FLAT_SLASH.png"
			}

			ListElement {
					name:"SHARP_SLASH3"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_SLASH3.png"
			}

			ListElement {
					name:"SHARP_SLASH2"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_SLASH2.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_ONE_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_ONE_ARROW_DOWN.png"
			}

			ListElement {
					name:"FLAT_ONE_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_ONE_ARROW_DOWN.png"
			}

			ListElement {
					name:"NATURAL_ONE_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_ONE_ARROW_DOWN.png"
			}

			ListElement {
					name:"SHARP_ONE_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_ONE_ARROW_DOWN.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_ONE_ARROW_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_ONE_ARROW_DOWN.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_ONE_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_ONE_ARROW_UP.png"
			}

			ListElement {
					name:"FLAT_ONE_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_ONE_ARROW_UP.png"
			}

			ListElement {
					name:"NATURAL_ONE_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_ONE_ARROW_UP.png"
			}

			ListElement {
					name:"SHARP_ONE_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_ONE_ARROW_UP.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_ONE_ARROW_UP"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_ONE_ARROW_UP.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_TWO_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_TWO_ARROWS_DOWN.png"
			}

			ListElement {
					name:"FLAT_TWO_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_TWO_ARROWS_DOWN.png"
			}

			ListElement {
					name:"NATURAL_TWO_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_TWO_ARROWS_DOWN.png"
			}

			ListElement {
					name:"SHARP_TWO_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_TWO_ARROWS_DOWN.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_TWO_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_TWO_ARROWS_DOWN.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_TWO_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_TWO_ARROWS_UP.png"
			}

			ListElement {
					name:"FLAT_TWO_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_TWO_ARROWS_UP.png"
			}

			ListElement {
					name:"NATURAL_TWO_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_TWO_ARROWS_UP.png"
			}

			ListElement {
					name:"SHARP_TWO_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_TWO_ARROWS_UP.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_TWO_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_TWO_ARROWS_UP.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_THREE_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_THREE_ARROWS_DOWN.png"
			}

			ListElement {
					name:"FLAT_THREE_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_THREE_ARROWS_DOWN.png"
			}

			ListElement {
					name:"NATURAL_THREE_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_THREE_ARROWS_DOWN.png"
			}

			ListElement {
					name:"SHARP_THREE_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_THREE_ARROWS_DOWN.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_THREE_ARROWS_DOWN"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_THREE_ARROWS_DOWN.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_THREE_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_THREE_ARROWS_UP.png"
			}

			ListElement {
					name:"FLAT_THREE_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_THREE_ARROWS_UP.png"
			}

			ListElement {
					name:"NATURAL_THREE_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_THREE_ARROWS_UP.png"
			}

			ListElement {
					name:"SHARP_THREE_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_THREE_ARROWS_UP.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_THREE_ARROWS_UP"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_THREE_ARROWS_UP.png"
			}

			ListElement {
					name:"LOWER_ONE_SEPTIMAL_COMMA"
					tuning: 0
					enabled: 0
					image: "AT_LOWER_ONE_SEPTIMAL_COMMA.png"
			}

			ListElement {
					name:"RAISE_ONE_SEPTIMAL_COMMA"
					tuning: 0
					enabled: 0
					image: "AT_RAISE_ONE_SEPTIMAL_COMMA.png"
			}

			ListElement {
					name:"LOWER_TWO_SEPTIMAL_COMMAS"
					tuning: 0
					enabled: 0
					image: "AT_LOWER_TWO_SEPTIMAL_COMMAS.png"
			}

			ListElement {
					name:"RAISE_TWO_SEPTIMAL_COMMAS"
					tuning: 0
					enabled: 0
					image: "AT_RAISE_TWO_SEPTIMAL_COMMAS.png"
			}

			ListElement {
					name:"LOWER_ONE_UNDECIMAL_QUARTERTONE"
					tuning: 0
					enabled: 0
					image: "AT_LOWER_ONE_UNDECIMAL_QUARTERTONE.png"
			}

			ListElement {
					name:"RAISE_ONE_UNDECIMAL_QUARTERTONE"
					tuning: 0
					enabled: 0
					image: "AT_RAISE_ONE_UNDECIMAL_QUARTERTONE.png"
			}

			ListElement {
					name:"LOWER_ONE_TRIDECIMAL_QUARTERTONE"
					tuning: 0
					enabled: 0
					image: "AT_LOWER_ONE_TRIDECIMAL_QUARTERTONE.png"
			}

			ListElement {
					name:"RAISE_ONE_TRIDECIMAL_QUARTERTONE"
					tuning: 0
					enabled: 0
					image: "AT_RAISE_ONE_TRIDECIMAL_QUARTERTONE.png"
			}

			ListElement {
					name:"DOUBLE_FLAT_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_FLAT_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"FLAT_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_FLAT_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"NATURAL_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_NATURAL_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"SHARP_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_SHARP_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"DOUBLE_SHARP_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_DOUBLE_SHARP_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"QUARTER_FLAT_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_QUARTER_FLAT_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"QUARTER_SHARP_EQUAL_TEMPERED"
					tuning: 0
					enabled: 0
					image: "AT_QUARTER_SHARP_EQUAL_TEMPERED.png"
			}

			ListElement {
					name:"SORI"
					tuning: 0
					enabled: 0
					image: "AT_SORI.png"
			}

			ListElement {
					name:"KORON"
					tuning: 0
					enabled: 0
					image: "AT_KORON.png"
			}
      }
      
          
	  
	//Tunings Window  
    Window {
		id: tuningsWindow
		title: "Edit Settings"
		width: 300
		height: 280
		maximumHeight: 280
		maximumWidth: 300
		minimumHeight: 280
		minimumWidth: 300
		modality: Qt.WindowModal
		flags: Qt.Dialog | Qt.WindowSystemMenuHint | Qt.WindowTitleHint | Qt.WindowCloseButtonHint
		color: "lavender"
		
				
		property var index: 0
		
		Text {
			id: t1
			text: "Disabled alteration signs cannot be set in the key signature and their tuning will be set to 0."		
			wrapMode: Text.Wrap
			width: parent.width
			padding: 3
		}
		
		Grid {
			id: g1
			columns: 3
			rows: 1
			horizontalItemAlignment: Grid.AlignHCenter
			verticalItemAlignment: Grid.AlignVCenter
			anchors.top: t1.bottom
			anchors.topMargin: 10
			
			//Left Arrow
			Item {
				width: 100
				height: 40
				
				Button {
					text: "<"
					anchors.horizontalCenter: parent.horizontalCenter
					anchors.verticalCenter: parent.verticalCenter
					
					onClicked: {
						tuningsWindow.index -= 1;
						if (tuningsWindow.index<=0) //=0: do not show NONE
							tuningsWindow.index=accidentalList.count-1
						
						tuningsWindow.tuningsWindowListToGUI();
						tuningsWindow.clearTuningsWindowStatusBar();
					}
				}
			}
			
			//Icon
			Item {
				width: 100
				height: 40
				
				Image {
					id: tuningsWindowAccidentalImage
					cache: false
					x: 28
					y: 28
					source: {Qt.resolvedUrl('AT_FLAT_SLASH.png');}
					anchors.horizontalCenter: parent.horizontalCenter
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			
			//right Arrow
			Item {
				width: 100
				height: 40
				
				Button {
					text: ">"
					anchors.horizontalCenter: parent.horizontalCenter
					anchors.verticalCenter: parent.verticalCenter
					
					onClicked: {
						tuningsWindow.index += 1;
						if (tuningsWindow.index==accidentalList.count)
							tuningsWindow.index=1; //not 0 not to show NONE
						
						tuningsWindow.tuningsWindowListToGUI();
						tuningsWindow.clearTuningsWindowStatusBar();
					}
				}
			}
		} //Grid
		
		Grid {
		
			id: g2
			columns: 2
			rows: 3
			
			horizontalItemAlignment: Grid.AlignHCenter
			verticalItemAlignment: Grid.AlignVCenter
			anchors.top : g1.bottom
            anchors.topMargin: 5
			
			
			
			Item {
				width: 100
				height: 40
				
				
				Text {
					text: "Name"
					anchors.left: parent.left
					anchors.leftMargin: 10
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			
			
			
			Item {
				width: 200
				height: 40
				
				Text {
					id: tuningsWindowAccidentalName
					text: ""
					anchors.left: parent.left
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			
			
			
			Item {
				width: 100
				height: 40
				
				
				Text {
					text: "Tuning"
					anchors.left: parent.left
					anchors.leftMargin: 10
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			
			Item {
				width: 200
				height: 40
				
				SpinBox {
                    id: tuningsWindowTuningValue
                    style: SpinBoxStyle {
                        horizontalAlignment: Qt.AlignHCenter
                    }
                    minimumValue: -200
                    maximumValue: 200
                    value: 0
                    height: 28
                    width: 50
					anchors.left: parent.left
					anchors.verticalCenter: parent.verticalCenter
					
					onValueChanged: {
						accidentalList.set(tuningsWindow.index,{"tuning": value});
						tuningsWindow.clearTuningsWindowStatusBar();
					}
                }
			}
			
			
			
			
			
			Item {
				width: 100
				height: 40
				
				
				Text {
					text: "Enabled"
					anchors.left: parent.left
					anchors.leftMargin: 10
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			
			Item {
				width: 200
				height: 40
				
				CheckBox {
					id: tuningsWindowAccidentalEnabled
					checked: true
					anchors.left: parent.left
					anchors.verticalCenter: parent.verticalCenter
					
					onClicked: {
						accidentalList.set(tuningsWindow.index,{"enabled": checked ? 1 : 0});
						tuningsWindow.clearTuningsWindowStatusBar();
					}
				}
			}
			
			
			
			
			
		} 	//Grid
		
		Grid {
			id: g3
			columns: 2
			rows: 1
			columnSpacing: 10
			rowSpacing: 10
			anchors.top: g2.bottom
			anchors.topMargin: 10
			anchors.horizontalCenter: parent.horizontalCenter


			Button {
				id: bSaveToDisk
				text: "Save to Disk"

				onClicked: {
					tuningsWindow.clearTuningsWindowStatusBar();
					var t="";
					for (var i=0; i<accidentalList.count;i++)
						t+= JSON.stringify(accidentalList.get(i))+"\n";
					//console.log(t);
					
					if (tuningSettingsFile.write(t)){
						console.log("File written to " + tuningSettingsFile.source);
						tuningsWindowStatusBar.text = "Saved to " + tuningSettingsFile.source;

					}
					else {
						console.log("Could not save settings");
						tuningsWindowStatusBar.text = "Could not save to file " + tuningSettingsFile.source;
					}
				}
			}

			Button {
				id: bCloseModal
				text: "Close"
				visible: Qt.platform.os === 'osx'

				onClicked: {
					tuningsWindow.hide()
				}
			}
		}
		
		Rectangle {
			width: parent.width
			height: 30
			color: "ivory"
			
			anchors.bottom: parent.bottom
			
			Text {
				id: tuningsWindowStatusBar
				text: ""
				wrapMode: Text.WrapAnywhere
				width: parent.width
				padding: 3
			}
			
		}
		
		onVisibleChanged: {
			if (visible){
				tuningsWindow.index = 1;
				tuningsWindow.tuningsWindowListToGUI();
				tuningsWindow.clearTuningsWindowStatusBar();
			}
			else {
				//if an accidental is disabled and it was already assigned to the key signature, it will be reset
				updateKeySignature();
			}
				
				
		}
		
		function tuningsWindowListToGUI() {
			tuningsWindowAccidentalName.text = accidentalList.get(tuningsWindow.index).name;
			
			tuningsWindowTuningValue.value = accidentalList.get(tuningsWindow.index).tuning;
			if (accidentalList.get(tuningsWindow.index).enabled == 0)
				tuningsWindowAccidentalEnabled.checked = false;
			else
				tuningsWindowAccidentalEnabled.checked = true;
			tuningsWindowAccidentalImage.source = Qt.resolvedUrl(accidentalList.get(tuningsWindow.index).image);
						
		}
		
		function clearTuningsWindowStatusBar(){
			tuningsWindowStatusBar.text = "";
		}
	} //tuningsWindow
	
	
	//Main Window
	Button {
		text: "?"
		anchors.right : parent.right
		anchors.top : parent.top
		width: 15
		onClicked: {
			mD.title= "Accidental Tuner";
			mD.text = "Accidental Tuner v." + version +"\nBy Gilbert Yammine\nFor help, please refer to the document AccidentalTuner.pdf in the installation folder.\n\nInfo:\nLocation of settings file: " + tuningSettingsFile.source + "\nLocation of images: " + cImage.source;
			mD.open();
		}
	}
	Text {
        id: title_text
        text: qsTr("Accidental Tuner")
        anchors.top : parent.top
        anchors.horizontalCenter : parent.horizontalCenter
        anchors.topMargin: 10
        font.pointSize: 12; font.bold:true
    }
    Text {
        id: web_text
        text: '<html><style type="text/css"></style><a href="http://www.gilbertyammine.com">www.gilbertyammine.com</a></html>'
        anchors.top : title_text.bottom                  
        anchors.horizontalCenter : parent.horizontalCenter
        font.pointSize: 8
        onLinkActivated: Qt.openUrlExternally(link)
    } 
	
	GroupBox {
        id: gb_keySig
        title: "Key Signature"
        anchors.horizontalCenter: parent.horizontalCenter  
        anchors.top : web_text.bottom
        anchors.topMargin: 20

        Grid {
            columns: 7
            rows: 4
            columnSpacing: 10
			rowSpacing: 10
			
			Button {
				id: bUC
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("C");
				}
				
			}
			
			Button {
				id: bUD
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("D");
				}
			}
			
			Button {
				id: bUE
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("E");
				}
			}
			
			Button {
				id: bUF
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("F");
				}
			}
			
			Button {
				id: bUG
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("G");
				}
			}
			
			Button {
				id: bUA
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("A");
				}
			}
			
			Button {
				id: bUB
				text: "\u2191"
				width: 28
				onClicked: {
					keySigButtonUp("B");
				}
			}
			
			Image {
				id: cImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Image {
				id: dImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Image {
				id: eImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Image {
				id: fImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Image {
				id: gImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Image {
				id: aImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Image {
				id: bImage
				cache: false
				x: 28
				y: 28
				source: {Qt.resolvedUrl('AT_NONE.png');}
			}
			
			Button {
				id: bDC
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("C");
				}
				
			}
			
			Button {
				id: bDD
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("D");
				}
				
			}
			
			Button {
				id: bDE
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("E");
				}
				
			}
			
			Button {
				id: bDF
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("F");
				}
				
			}
			
			Button {
				id: bDG
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("G");
				}
				
			}
			
			Button {
				id: bDA
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("A");
				}
				
			}
			
			Button {
				id: bDB
				text: "\u2193"
				width: 28
				onClicked: {
					keySigButtonDown("B");
					
				}
				
			}
			
			Text {
				text: "C"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			Text {
				text: "D"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			Text {
				text: "E"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			Text {
				text: "F"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			Text {
				text: "G"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			Text {
				text: "A"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			Text {
				text: "B"
				width: 28
				horizontalAlignment: Text.AlignHCenter
				
			}
			
			
		} //Grid Key Signature
	} //GroupBox Key Signature
	
	Grid {
		id: grid_buttons
		columns: 3
        rows: 1
        columnSpacing: 10
		rowSpacing: 10
		anchors.top : gb_keySig.bottom
		anchors.topMargin: 10
		anchors.horizontalCenter: parent.horizontalCenter  
        
		Button {
			id: oB
			text: "Edit Settings..."
			onClicked: {
				clearStatusBar();
				tuningsWindow.show()
			}
		}
		
		Button {
			text: "Apply Tunings"
			
			onClicked: {
				clearStatusBar();
				if (isFullScore()==true)
                    processFullScoreDialog.open();
                else 
                    processSelectedNotes();
					
			
			}
		}
		
		Button {
			text: "Remove All Tunings"
			
			onClicked: {
				clearStatusBar();
				if (isFullScore()==true)
					removeAllTuningsFullScoreDialog.open();
				else
					removeAllTunings();
			}
		}
		
		
	} //Grid
	
	
	
	Rectangle {
			width: parent.width
			height: 45
			color: "ivory"
			
			anchors.bottom: parent.bottom
			
			Text {
				id: statusBar
				text: ""
				wrapMode: Text.WrapAnywhere
				width: parent.width
				padding: 3
			}
			
	}
	
	function clearStatusBar(){
		statusBar.text = "";
	}
	
	function keySigButtonUp(note) {
		
		while (true) {
			keySigIndex[note]++;
			
			if (keySigIndex[note] > accidentalList.count -1){
				keySigIndex[note]=0;
				
			}
			if (parseInt(accidentalList.get(keySigIndex[note]).enabled) == 1){
				break;
			}
			
		}
		updateKeySignatureImages();
	}
	
	function keySigButtonDown(note) {
		
		while (true) {
			keySigIndex[note]--;
			
			if (keySigIndex[note] < 0){
				keySigIndex[note]=accidentalList.count -1;
				
			}
			if (accidentalList.get(keySigIndex[note]).enabled == 1){
				break;
			}
			
		}
		updateKeySignatureImages();
	}
	
	function updateKeySignature(){
		//updates the icons of the key signatures. If one accidental was disabled in the settings menu,
		//set it to NONE
		var notes = ["C", "D" , "E" , "F", "G" , "A", "B"];
		for (var n=0; n<notes.length;n++){
			if (accidentalList.get(keySigIndex[notes[n]]).enabled==0)
				keySigIndex[notes[n]]=0; //set to NONE
		}
		
		updateKeySignatureImages();
	}
	
	function updateKeySignatureImages(){
		cImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["C"]).image);
		dImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["D"]).image);
		eImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["E"]).image);
		fImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["F"]).image);
		gImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["G"]).image);
		aImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["A"]).image);
		bImage.source = Qt.resolvedUrl(accidentalList.get(keySigIndex["B"]).image);
		
	}
	
	
	
	MessageDialog {
        id: processFullScoreDialog
        title: "Process Full Score"
        text: "Nothing is selected. Process full score?"
        standardButtons: StandardButton.Yes | StandardButton.Abort
        onYes: {
            processSelectedNotes();
			
        }
        onRejected: {
            return;
        }
            
    }
	
	MessageDialog {
        id: removeAllTuningsFullScoreDialog
        title: "Process Full Score"
        text: "Nothing is selected. Remove all tunings from the whole score?"
        standardButtons: StandardButton.Yes | StandardButton.Abort
        onYes: {
            removeAllTunings();
			
        }
        onRejected: {
            return;
        }
            
    }
	
    
    MessageDialog {
        id: mD
        title: ""
        text: ""
        standardButtons: StandardButton.Ok
           
    }
      
    FileIO {
        id: tuningSettingsFile
        source: homePath() + "/MuseScore_AT_Settings.dat"
            
        onError: {
            
			statusBar.text=msg;
            
        }
    }
      
    function loadTuningSettings(){
        
		statusBar.text=tuningSettingsFile.source;	
		
		var textInFile = tuningSettingsFile.read();
		
		var lines = textInFile.split("\n");
		for (var i=0; i<lines.length;i++){
			if (lines[i][0]== '{'){
				try {
					var obj = JSON.parse(lines[i]);
					for (var j=0; j<accidentalList.count; j++) {
						if (obj.name == accidentalList.get(j).name){
							accidentalList.set(i,obj);
							break;
						}
					}
					
				} catch (e) {
					
				}
			}
		}
    }
	  
	function isFullScore(){
        var cursor = curScore.newCursor();
        cursor.rewind(1);
            
        if (!cursor.segment) //nothing selected
            return true;
        else
            return false;

    }
	
	function getAccidentalTuning(accidentalType){
		//accidentalType is the integer corresponding to the enum from Accidental.accidentalType
		
		//if accidentalType not in the accidentalList, return 0
		//if accidental is not enabled in the accidentalList, return 0
		
		
		for (var i=0; i<accidentalList.count;i++){
			if (accidentalType == eval("Accidental." + accidentalList.get(i).name)){
				if (accidentalList.get(i).enabled==1)
					return accidentalList.get(i).tuning;
				else
					return 0;
			}
		}
		
		return 0;
	}
	
	function processSelectedNotes(){
         
		var keySigs = [];
		
		if (keySigIndex["C"]!=0){
			if (accidentalList.get(keySigIndex["C"]).name=="SHARP")
				keySigs.push(Qt.vector2d(61%12,accidentalList.get(keySigIndex["C"]).tuning));
			else if (accidentalList.get(keySigIndex["C"]).name=="FLAT")
				keySigs.push(Qt.vector2d(59%12,accidentalList.get(keySigIndex["C"]).tuning));	
			else
				keySigs.push(Qt.vector2d(60%12,accidentalList.get(keySigIndex["C"]).tuning));
		}
		if (keySigIndex["D"]!=0){
			if (accidentalList.get(keySigIndex["D"]).name=="SHARP")
				keySigs.push(Qt.vector2d(63%12,accidentalList.get(keySigIndex["D"]).tuning));
			else if (accidentalList.get(keySigIndex["D"]).name=="FLAT")
				keySigs.push(Qt.vector2d(61%12,accidentalList.get(keySigIndex["D"]).tuning));	
			else
				keySigs.push(Qt.vector2d(62%12,accidentalList.get(keySigIndex["D"]).tuning));
		}
		if (keySigIndex["E"]!=0){
			if (accidentalList.get(keySigIndex["E"]).name=="SHARP")
				keySigs.push(Qt.vector2d(65%12,accidentalList.get(keySigIndex["E"]).tuning));
			else if (accidentalList.get(keySigIndex["E"]).name=="FLAT")
				keySigs.push(Qt.vector2d(63%12,accidentalList.get(keySigIndex["E"]).tuning));	
			else
				keySigs.push(Qt.vector2d(64%12,accidentalList.get(keySigIndex["E"]).tuning));
		}
		
		if (keySigIndex["F"]!=0){
			if (accidentalList.get(keySigIndex["F"]).name=="SHARP")
				keySigs.push(Qt.vector2d(66%12,accidentalList.get(keySigIndex["F"]).tuning));
			else if (accidentalList.get(keySigIndex["F"]).name=="FLAT")
				keySigs.push(Qt.vector2d(64%12,accidentalList.get(keySigIndex["F"]).tuning));	
			else
				keySigs.push(Qt.vector2d(65%12,accidentalList.get(keySigIndex["F"]).tuning));
		}
		
		if (keySigIndex["G"]!=0){
			if (accidentalList.get(keySigIndex["G"]).name=="SHARP")
				keySigs.push(Qt.vector2d(68%12,accidentalList.get(keySigIndex["G"]).tuning));
			else if (accidentalList.get(keySigIndex["G"]).name=="FLAT")
				keySigs.push(Qt.vector2d(66%12,accidentalList.get(keySigIndex["G"]).tuning));	
			else
				keySigs.push(Qt.vector2d(67%12,accidentalList.get(keySigIndex["G"]).tuning));
		}
		
		if (keySigIndex["A"]!=0){
			if (accidentalList.get(keySigIndex["A"]).name=="SHARP")
				keySigs.push(Qt.vector2d(70%12,accidentalList.get(keySigIndex["A"]).tuning));
			else if (accidentalList.get(keySigIndex["A"]).name=="FLAT")
				keySigs.push(Qt.vector2d(68%12,accidentalList.get(keySigIndex["A"]).tuning));	
			else
				keySigs.push(Qt.vector2d(69%12,accidentalList.get(keySigIndex["A"]).tuning));
		}
		
		if (keySigIndex["B"]!=0){
			if (accidentalList.get(keySigIndex["B"]).name=="SHARP")
				keySigs.push(Qt.vector2d(72%12,accidentalList.get(keySigIndex["B"]).tuning));
			else if (accidentalList.get(keySigIndex["B"]).name=="FLAT")
				keySigs.push(Qt.vector2d(70%12,accidentalList.get(keySigIndex["B"]).tuning));	
			else
				keySigs.push(Qt.vector2d(71%12,accidentalList.get(keySigIndex["B"]).tuning));
		}
		
		
		 
        var acc = [];
                                  

        var cursor = curScore.newCursor();
		
		cursor.filter = Segment.ChordRest | Segment.BarLineType;
		
        cursor.rewind(1);
        var startStaff;
        var endStaff;
        var endTick;
        var fullScore = false;
        if (!cursor.segment) { //nothing selected
            fullScore = true;
            startStaff = 0;
            endStaff = curScore.nstaves - 1;
				  
        }
        else { //selection
            startStaff = cursor.staffIdx;
            cursor.rewind(2); //end of selection
            if (cursor.tick == 0){
                endTick = curScore.lastSegment.tick+1;
            }
            else {
                endTick = cursor.tick;      
            }
            endStaff = cursor.staffIdx;
        }

            
                  

        for (var staff = startStaff; staff <= endStaff; staff++){
            for (var voice = 0; voice < 4; voice++){
                cursor.rewind(1); //rewind to voice 0
                cursor.voice = voice; //set the voice
                cursor.staffIdx = staff; //set the staff

                if (fullScore)
                    cursor.rewind(0);
				
					
        
				while (cursor.segment && (fullScore || cursor.tick < endTick)){
                    //if (cursor.element)
					//	console.log("cursor.element.type: " + cursor.element.type);
					
					
					if (cursor.element && cursor.element.type == Element.BAR_LINE){
						//empty accidentals vector in each measure
						//console.log("Barline found");
						for (var i=0;i<acc.length;i++)
							acc.pop();
					}
                              
					if (cursor.element && cursor.element.type == Element.CHORD ){
                        
						var notes = cursor.element.notes;
                        //check every note in the chord
						for (var i=0; i< notes.length; i++){
                            
							var note = notes[i];
                            
							
							
							//if accidental found	
                            if (note.accidentalType != Accidental.NONE){
								
								var found = false;
                                for (var j=0;j<acc.length;j++){
                                    var a = acc[j];
                                    if (a.x == note.pitch && a.y == 0+note.accidentalType){
                                        //accidental already found in measure
                                        note.tuning = getAccidentalTuning(0+note.accidentalType);
                                                            
                                        found = true;
                                        break;
                                    }
                                    else if (a.x == note.pitch && a.y != 0+note.accidentalType){
                                        //found an accidental already for the note pitch
                                        //remove it
                                        acc.splice(j,1);
                                        //add the new accidental
                                        acc.push(Qt.vector2d(note.pitch,0+note.accidentalType));
                                        note.tuning=getAccidentalTuning(0+note.accidentalType);
                                                            
                                        found = true;
                                        break;
                                    }
                                }
                                if (!found){
                                    acc.push(Qt.vector2d(note.pitch,0+note.accidentalType)); //0+ to convert into integer
                                    note.tuning=getAccidentalTuning(0+note.accidentalType);
									
                                }
                            }
                            else { //no accidental on the note
								//search if pitch in the same measure already has an accidental 
                                var found = false;
                                for (var j=0;j<acc.length;j++){
                                    var a = acc[j];
									if (a.x == note.pitch){
										
                                        note.tuning = getAccidentalTuning(a.y);
                                        found = true;
                                        break;
                                    }
                                }
                                if (!found){ //check if pitch is affected by key signature
                                                      
                                    for (var j=0;j<keySigs.length;j++){
                                        var k = keySigs[j];
                                        if (k.x == note.pitch%12){
                                            note.tuning = k.y;
                                            found = true;
                                            break;
                                        }
                                    }
                                }
                                if (!found){
                                    note.tuning = 0;
                                }
                            }
                                               
                                          
						} //for notes in chord
                    } //if chord
                                    
                    cursor.next();
                } //while segments available
            } //for all voices
        } //for all staves

		statusBar.text = "All tunings were successfully applied";
		
    }
	
	function removeAllTunings() {
				
		 
                                 

        var cursor = curScore.newCursor();
		
		cursor.filter = Segment.ChordRest ;
		
        cursor.rewind(1);
        var startStaff;
        var endStaff;
        var endTick;
        var fullScore = false;
        if (!cursor.segment) { //nothing selected
            fullScore = true;
            startStaff = 0;
            endStaff = curScore.nstaves - 1;
				  
        }
        else { //selection
            startStaff = cursor.staffIdx;
            cursor.rewind(2); //end of selection
            if (cursor.tick == 0){
                endTick = curScore.lastSegment.tick+1;
            }
            else {
                endTick = cursor.tick;      
            }
            endStaff = cursor.staffIdx;
        }

            
                  

        for (var staff = startStaff; staff <= endStaff; staff++){
            for (var voice = 0; voice < 4; voice++){
                cursor.rewind(1); //rewind to voice 0
                cursor.voice = voice; //set the voice
                cursor.staffIdx = staff; //set the staff

                if (fullScore)
                    cursor.rewind(0);
				
					
        
				while (cursor.segment && (fullScore || cursor.tick < endTick)){
                    
					if (cursor.element && cursor.element.type == Element.CHORD ){
                        
						var notes = cursor.element.notes;
                        //check every note in the chord
						for (var i=0; i< notes.length; i++){
                            
							var note = notes[i];
                            
							note.tuning = 0;
							              
						} //for notes in chord
                    } //if chord
                                    
                    cursor.next();
                } //while segments available
            } //for all voices
        } //for all staves
		
		statusBar.text = "All tunings were successfully removed";
		
		
	}
      
    onRun: {
         
		if (!curScore)
            Qt.quit();
		
		if (tuningSettingsFile.exists()){
			loadTuningSettings();
		}
		
		
		

    }
	
	Component.onCompleted: {
		//load the tuning settings on startup
		//this does not work in the onRun function since the QML elements seem to be initialized
		//after the onRun function
		if (tuningSettingsFile.exists()){
			loadTuningSettings();
			statusBar.text = "Settings loaded successfully from " + tuningSettingsFile.source;
		}
		else {
			statusBar.text = "Could not load settings from file " + tuningSettingsFile.source + ". Default settings are set. You can edit the settings and save them to disk.";
		}
		
	}
      
      

}
