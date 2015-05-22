{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64"
		}
,
		"rect" : [ 393.0, 44.0, 1112.0, 826.0 ],
		"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Menlo Regular",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 614.723633, 568.176575, 74.0, 18.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 614.723633, 659.07605, 83.0, 18.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 614.723633, 604.323608, 83.0, 18.0 ],
					"text" : "pack i i i i"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 8,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 7, 7, 7 ]
							}
, 							{
								"key" : 1,
								"value" : [ 6, 3, 0 ]
							}
, 							{
								"key" : 2,
								"value" : [ 6, 6, 1 ]
							}
, 							{
								"key" : 3,
								"value" : [ 4, 0, 1 ]
							}
, 							{
								"key" : 4,
								"value" : [ 4, 4, 5 ]
							}
, 							{
								"key" : 5,
								"value" : [ 0, 6, 0 ]
							}
, 							{
								"key" : 6,
								"value" : [ 9, 0, 0 ]
							}
, 							{
								"key" : 7,
								"value" : [ 1, 1, 1 ]
							}
 ]
					}
,
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 614.723633, 630.918274, 155.0, 18.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll FloatingRain_colors",
					"varname" : "FloatingRain_colorsColl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 122.0, 145.5, 32.5, 19.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-59",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 122.0, 281.0, 48.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.0, 76.0, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_Size",
							"parameter_shortname" : "Size",
							"parameter_type" : 0,
							"parameter_mmin" : 0.05,
							"parameter_mmax" : 3.5,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 1 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "FloatingRain_Size"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-58",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 122.0, 204.0, 48.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 148.05304, 31.0, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_Speed",
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_mmax" : 5.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 1 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "FloatingRain_Speed"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-57",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 122.0, 93.5, 48.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.0, 31.0, 45.053047, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_agentsCount",
							"parameter_shortname" : "Agents",
							"parameter_type" : 0,
							"parameter_mmin" : 1.0,
							"parameter_mmax" : 800.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 500 ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "FloatingRain_agentsCount"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activebgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"activetextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"activetextoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-53",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 21.583344, 13.5, 43.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 197.106094, 31.0, 33.0, 33.0 ],
					"rounded" : 1.0,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_initialize",
							"parameter_shortname" : "initialize",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "init",
					"texton" : "Quit",
					"varname" : "FloatingRain_initialize"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.583344, 65.5, 155.0, 16.0 ],
					"text" : "/FloatingRain_initialize"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.583344, 145.5, 83.0, 16.0 ],
					"text" : "/clearScreen"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activebgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"activetextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"activetextoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"focusbordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-49",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 21.583344, 93.5, 43.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 197.106094, 66.0, 33.0, 33.0 ],
					"rounded" : 1.0,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_clearScreen",
							"parameter_shortname" : "clearScreen",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "clear",
					"texton" : "Quit",
					"varname" : "FloatingRain_clearScreen"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 528.022522, 574.0, 39.0, 18.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.022522, 508.0, 36.0, 16.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.33, 0.33, 0.33, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activetextcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"activetextoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"bgoncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"focusbordercolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-52",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 528.022522, 540.0, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 143.648438, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "FloatingRain_storeColors",
							"parameter_shortname" : "FloatingRain_storeColors",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_invisible" : 1
						}

					}
,
					"text" : "store",
					"texton" : "store",
					"varname" : "FloatingRain_storeColors"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.33, 0.33, 0.33, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"bgoncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"focusbordercolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-35",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 626.189148, 470.57605, 198.0, 20.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.166656, 143.648438, 180.939438, 20.5 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_colors",
							"parameter_shortname" : "FloatingRain_colors",
							"parameter_type" : 2,
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "FloatingRain_colors"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-25",
					"items" : [ "white", ",", "black", ",", "rosa", ",", "pink", ",", "magenta", ",", "flieder", ",", "turquoise", ",", "navy", ",", "olive", ",", "yellow" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 596.522522, 704.479614, 86.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 123.0, 57.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "FloatingRain_color1",
							"parameter_shortname" : "FloatingRain_color1",
							"parameter_type" : 3,
							"parameter_initial" : [ 0 ],
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "FloatingRain_color1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 926.522461, 737.287048, 137.0, 18.0 ],
					"text" : "prepend /colorIndex_3"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"items" : [ "white", ",", "black", ",", "rosa", ",", "pink", ",", "magenta", ",", "flieder", ",", "turquoise", ",", "navy", ",", "olive", ",", "yellow" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 926.522461, 704.479614, 86.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 171.106094, 123.0, 57.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "FloatingRain_color3",
							"parameter_shortname" : "FloatingRain_color3",
							"parameter_type" : 3,
							"parameter_initial" : [ 0 ],
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "FloatingRain_color3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 761.522461, 737.287048, 137.0, 18.0 ],
					"text" : "prepend /colorIndex_2"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-26",
					"items" : [ "white", ",", "black", ",", "rosa", ",", "pink", ",", "magenta", ",", "flieder", ",", "turquoise", ",", "navy", ",", "olive", ",", "yellow" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 761.522461, 704.479614, 86.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 89.053047, 123.0, 57.0, 17.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "FloatingRain_color2",
							"parameter_shortname" : "FloatingRain_color2",
							"parameter_type" : 3,
							"parameter_initial" : [ 0 ],
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "FloatingRain_color2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.522522, 737.287048, 137.0, 18.0 ],
					"text" : "prepend /colorIndex_1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 509.413086, 409.442902, 119.0, 18.0 ],
					"text" : "prepend /drawAlpha"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-29",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 509.413086, 354.502655, 85.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 31.0, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_drawAlpha",
							"parameter_shortname" : "Alpha",
							"parameter_type" : 0,
							"parameter_mmax" : 255.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 120.0 ],
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 3.0
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "FloatingRain_drawAlpha"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 786.612183, 410.27533, 155.0, 18.0 ],
					"text" : "prepend /backgroundAlpha"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 648.012634, 410.27533, 125.0, 18.0 ],
					"text" : "prepend /lineWeight"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-34",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 786.612183, 354.502655, 48.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 76.0, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_bgAlpha",
							"parameter_shortname" : "bgAlpha",
							"parameter_type" : 0,
							"parameter_mmax" : 255.0,
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 40.0 ],
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 5.0
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "FloatingRain_bgAlpha"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-38",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 648.012634, 354.502655, 65.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_lineWeight",
							"parameter_shortname" : "weight",
							"parameter_type" : 0,
							"parameter_mmin" : 0.1,
							"parameter_mmax" : 400.0,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 4.0
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "FloatingRain_lineWeight"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 509.413086, 785.309082, 65.0, 18.0 ],
					"text" : "s ---toP5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 266.0, 189.0, 19.0 ],
					"text" : "prepend /FloatingRain_shape"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"items" : [ "ASYM", ",", "CIRCROSS", ",", "CORNER", ",", "CROSS", ",", "DIAMOND", ",", "EX", ",", "EX_SMALL", ",", "EX_THIN", ",", "HALM", ",", "KEGEL", ",", "KINKS", ",", "KREISE", ",", "PARALLEL", ",", "STERN" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 341.0, 241.0, 59.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 169.106094, 103.0, 59.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "number[3]",
							"parameter_shortname" : "number[3]",
							"parameter_type" : 3,
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "number[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 239.833328, 451.07608, 65.0, 18.0 ],
					"restore" : 					{
						"FloatingRain_Size" : [ 1.002553 ],
						"FloatingRain_Speed" : [ 1.325 ],
						"FloatingRain_agentsCount" : [ 286.64249 ],
						"FloatingRain_bgAlpha" : [ 40.0 ],
						"FloatingRain_clearScreen" : [ 0.0 ],
						"FloatingRain_color1" : [ 7 ],
						"FloatingRain_color2" : [ 7 ],
						"FloatingRain_color3" : [ 7 ],
						"FloatingRain_colors" : [ 0.0 ],
						"FloatingRain_direction" : [ 0.0 ],
						"FloatingRain_drawAlpha" : [ 136.031877 ],
						"FloatingRain_initialize" : [ 0.0 ],
						"FloatingRain_lineWeight" : [ 0.1 ],
						"number[2]" : [ 11 ]
					}
,
					"text" : "autopattr",
					"varname" : "u015000602"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 348.59021, 728.340881, 72.0, 16.0 ],
					"text" : "writeagain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 289.5, 699.795471, 84.0, 16.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 127.0, 596.0, 39.0, 18.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 255.166656, 530.0, 39.0, 18.0 ],
					"text" : "+ 1",
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 127.0, 530.0, 36.0, 16.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 127.0, 486.5, 102.0, 18.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.33, 0.33, 0.33, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activetextcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"activetextoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"bgoncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"focusbordercolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"id" : "obj-41",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 127.0, 559.5, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 5.0, 40.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[3]",
							"parameter_shortname" : "live.text",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "store",
					"texton" : "store",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.5, 632.0, 79.0, 18.0 ],
					"text" : "switch",
					"varname" : "gswitch"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.5, 596.0, 90.0, 18.0 ],
					"text" : "prepend store"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.33, 0.33, 0.33, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"bgoncolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"focusbordercolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"id" : "obj-46",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 255.166656, 486.5, 198.0, 20.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.166656, 5.0, 180.939438, 20.5 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_presets",
							"parameter_shortname" : "Floating_presets",
							"parameter_type" : 2,
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "FloatingRain_presets"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.5, 671.25, 90.0, 16.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.5, 763.309082, 197.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 								{
									"pattrstorage" : 									{
										"name" : "FloatingRain_Pattr",
										"slots" : 										{

										}

									}

								}
 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "FloatingRain_Pattr",
							"parameter_shortname" : "FloatingRain_Pattr",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"annotation_name" : "",
						"client_rect" : [ 22, 173, 398, 896 ],
						"parameter_enable" : 1,
						"storage_rect" : [ 19, 489, 473, 747 ]
					}
,
					"text" : "pattrstorage FloatingRain_Pattr",
					"varname" : "FloatingRain_Pattr"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.0, 332.0, 183.0, 19.0 ],
					"text" : "prepend /FloatingRain_size"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.0, 258.0, 189.0, 19.0 ],
					"text" : "prepend /FloatingRain_speed"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
					"bgoncolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Menlo Regular",
					"id" : "obj-14",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 4,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 341.0, 94.0, 50.0, 89.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 31.0, 50.0, 89.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "FloatingRain_direction",
							"parameter_shortname" : "FloatingRain direction",
							"parameter_type" : 2,
							"parameter_enum" : [ "N", "NE", "E", "SE", "S", "SW", "W", "NW" ],
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 4 ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
					"textoncolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"varname" : "FloatingRain_direction"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.0, 179.0, 203.0, 19.0 ],
					"text" : "prepend /FloatingRain_nAgents"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 341.0, 77.0, 70.0, 19.0 ],
					"text" : "direction",
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 196.0, 216.0, 19.0 ],
					"text" : "prepend /FloatingRain_direction"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.583344, 398.5, 65.0, 18.0 ],
					"text" : "s ---toP5"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"color" : [ 0.2, 0.2, 0.2, 1.0 ],
					"id" : "obj-101",
					"ignoreclick" : 1,
					"maxclass" : "mira.frame",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 35.766632, 699.795471, 77.800003, 55.31094 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 233.0, 165.648438 ],
					"tabname" : "FloatingRain",
					"taborder" : 4
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 657.512634, 443.507915, 518.913086, 443.507915 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 796.112183, 443.507915, 518.913086, 443.507915 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 264.666661, 478.28804, 136.5, 478.28804 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-53" : [ "FloatingRain_initialize", "initialize", 0 ],
			"obj-41" : [ "live.text[3]", "live.text", 0 ],
			"obj-49" : [ "FloatingRain_clearScreen", "clearScreen", 0 ],
			"obj-14" : [ "FloatingRain_direction", "FloatingRain direction", 0 ],
			"obj-57" : [ "FloatingRain_agentsCount", "Agents", 0 ],
			"obj-22" : [ "FloatingRain_color3", "FloatingRain_color3", 0 ],
			"obj-38" : [ "FloatingRain_lineWeight", "weight", 0 ],
			"obj-52" : [ "FloatingRain_storeColors", "FloatingRain_storeColors", 0 ],
			"obj-59" : [ "FloatingRain_Size", "Size", 0 ],
			"obj-25" : [ "FloatingRain_color1", "FloatingRain_color1", 0 ],
			"obj-29" : [ "FloatingRain_drawAlpha", "Alpha", 0 ],
			"obj-18" : [ "number[3]", "number[3]", 0 ],
			"obj-34" : [ "FloatingRain_bgAlpha", "bgAlpha", 0 ],
			"obj-35" : [ "FloatingRain_colors", "FloatingRain_colors", 0 ],
			"obj-58" : [ "FloatingRain_Speed", "Speed", 0 ],
			"obj-46" : [ "FloatingRain_presets", "Floating_presets", 0 ],
			"obj-6" : [ "FloatingRain_Pattr", "FloatingRain_Pattr", 0 ],
			"obj-26" : [ "FloatingRain_color2", "FloatingRain_color2", 0 ]
		}
,
		"dependency_cache" : [  ]
	}

}
