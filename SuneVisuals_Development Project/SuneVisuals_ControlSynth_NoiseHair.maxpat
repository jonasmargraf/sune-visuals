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
		"rect" : [ 33.0, 44.0, 1040.0, 826.0 ],
		"bgcolor" : [ 0.25, 0.25, 0.25, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
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
					"patching_rect" : [ 167.526062, 555.0, 74.0, 18.0 ],
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
					"patching_rect" : [ 213.75354, 698.002441, 83.0, 18.0 ],
					"text" : "unpack i i i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.75354, 630.25, 83.0, 18.0 ],
					"text" : "pack i i i i"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 8,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 0, 0, 0 ]
							}
, 							{
								"key" : 1,
								"value" : [ 4, 4, 0 ]
							}
, 							{
								"key" : 2,
								"value" : [ 6, 6, 1 ]
							}
, 							{
								"key" : 3,
								"value" : [ 4, 1, 0 ]
							}
, 							{
								"key" : 4,
								"value" : [ 5, 1, 5 ]
							}
, 							{
								"key" : 5,
								"value" : [ 7, 6, 0 ]
							}
, 							{
								"key" : 6,
								"value" : [ 8, 8, 0 ]
							}
, 							{
								"key" : 7,
								"value" : [ 0, 0, 0 ]
							}
 ]
					}
,
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 213.75354, 662.844666, 137.0, 18.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll noiseHair_colors",
					"varname" : "noiseHair_colorsColl"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.094528, 73.5, 83.0, 16.0 ],
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
					"id" : "obj-42",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 167.094528, 16.0, 43.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.106094, 78.22641, 33.0, 33.0 ],
					"rounded" : 1.0,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_clearScreen",
							"parameter_shortname" : "clearScreen",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "clear",
					"texton" : "Quit",
					"varname" : "NoiseHair_clearScreen"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 111.094528, 102.5, 65.0, 18.0 ],
					"text" : "s ---toP5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 111.094528, 73.5, 41.0, 16.0 ],
					"text" : "/seed"
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
					"id" : "obj-14",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 111.094528, 16.0, 43.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.106094, 29.674725, 33.0, 33.0 ],
					"rounded" : 1.0,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "Seed",
							"parameter_shortname" : "Seed",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "seed",
					"texton" : "Quit",
					"varname" : "Seed"
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
					"patching_rect" : [ 167.526062, 518.5, 39.0, 18.0 ],
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
					"patching_rect" : [ 167.526062, 452.5, 36.0, 16.0 ],
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
					"patching_rect" : [ 167.526062, 484.5, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 144.648438, 40.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "colors_store",
							"parameter_shortname" : "colors_store",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "val1", "val2" ]
						}

					}
,
					"text" : "store",
					"texton" : "store",
					"varname" : "live.text[1]"
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
					"patching_rect" : [ 222.526062, 415.57605, 198.0, 20.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.166656, 144.648438, 180.939438, 19.5 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "colors",
							"parameter_shortname" : "colors",
							"parameter_type" : 2,
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_initial_enable" : 1,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "colors"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-25",
					"items" : [ "white", ",", "black", ",", "rosa", ",", "pink", ",", "magenta", ",", "flieder", ",", "turquoise", ",", "navy", ",", "olive", ",", "yellow" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 167.526062, 591.0, 86.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 125.22641, 61.0, 17.0 ],
					"rounded" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "NoiseHair_color1",
							"parameter_shortname" : "NoiseHair_color1",
							"parameter_type" : 3,
							"parameter_initial" : [ 0 ],
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "NoiseHair_color1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 497.526062, 739.336243, 137.0, 18.0 ],
					"text" : "prepend /colorIndex_3"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-20",
					"items" : [ "white", ",", "black", ",", "rosa", ",", "pink", ",", "magenta", ",", "flieder", ",", "turquoise", ",", "navy", ",", "olive", ",", "yellow" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 497.526062, 591.0, 86.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 167.106094, 125.22641, 61.0, 17.0 ],
					"rounded" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "NoiseHair_color3",
							"parameter_shortname" : "NoiseHair_color3",
							"parameter_type" : 3,
							"parameter_initial" : [ 0 ],
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "NoiseHair_color3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 332.526062, 739.336243, 137.0, 18.0 ],
					"text" : "prepend /colorIndex_2"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"arrowframe" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-17",
					"items" : [ "white", ",", "black", ",", "rosa", ",", "pink", ",", "magenta", ",", "flieder", ",", "turquoise", ",", "navy", ",", "olive", ",", "yellow" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 332.526062, 591.0, 86.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 86.053047, 125.22641, 61.0, 17.0 ],
					"rounded" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "NoiseHair_color2",
							"parameter_shortname" : "NoiseHair_color2",
							"parameter_type" : 3,
							"parameter_initial" : [ 0 ],
							"parameter_invisible" : 1
						}

					}
,
					"varname" : "NoiseHair_color2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.526062, 739.336243, 137.0, 18.0 ],
					"text" : "prepend /colorIndex_1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64"
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Menlo Regular",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 65.923706, 239.906296, 44.0, 19.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 192.993225, 111.5, 32.5, 19.0 ],
									"text" : "b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 65.923706, 268.906311, 32.5, 19.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 65.923706, 294.906311, 146.069519, 19.0 ],
									"text" : "gate 3 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 192.993225, 348.089569, 57.0, 19.0 ],
									"text" : "+ 1000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 129.664062, 348.089569, 50.0, 19.0 ],
									"text" : "+ 100."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 192.993225, 322.103149, 57.0, 19.0 ],
									"text" : "* 4000."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 129.664062, 322.103149, 50.0, 19.0 ],
									"text" : "* 900."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 65.923706, 322.103149, 50.0, 19.0 ],
									"text" : "* 100."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 65.923706, 374.773346, 50.0, 19.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "flonum[19]",
											"parameter_shortname" : "flonum[19]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "flonum[1]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.923706, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.923706, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.923706, 453.773346, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.993225, 453.773346, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 75.423706, 262.906296, 51.958466, 262.906296, 51.958466, 101.5, 202.493225, 101.5 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 521.423706, 145.406296, 70.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Menlo Regular",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Menlo Regular",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p routing"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 533.359436, 396.07605, 65.0, 18.0 ],
					"restore" : 					{
						"NoiseHair_agentsCount" : [ 2402.094488 ],
						"NoiseHair_bgAlpha" : [ 0.0 ],
						"NoiseHair_clearScreen" : [ 0.0 ],
						"NoiseHair_color1" : [ 4 ],
						"NoiseHair_color2" : [ 1 ],
						"NoiseHair_color3" : [ 0 ],
						"NoiseHair_drawAlpha" : [ 50.445703 ],
						"NoiseHair_lineWeight" : [ 1.0 ],
						"NoiseHair_noiseScale" : [ 933.070866 ],
						"NoiseHair_noiseStrength" : [ 0.05 ],
						"NoiseHair_noiseStrength_mult" : [ 0.0 ],
						"NoiseHair_speed" : [ 24.530424 ],
						"P5_ControlSignal_08" : [ 0.0 ],
						"Seed" : [ 0.0 ],
						"colors" : [ 3.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u341000619"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 898.180603, 687.34082, 72.0, 16.0 ],
					"text" : "writeagain"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 839.090393, 658.795471, 84.0, 16.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 676.590393, 555.0, 39.0, 18.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 804.757019, 489.0, 39.0, 18.0 ],
					"text" : "+ 1",
					"varname" : "number"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 676.590393, 489.0, 36.0, 16.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 676.590393, 445.5, 102.0, 18.0 ],
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
					"fontsize" : 9.0,
					"id" : "obj-11",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 676.590393, 518.5, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 4.0, 40.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[2]",
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
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.090393, 591.0, 79.0, 18.0 ],
					"text" : "switch",
					"varname" : "gswitch"
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
					"patching_rect" : [ 835.090393, 555.0, 90.0, 18.0 ],
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
					"fontsize" : 9.0,
					"id" : "obj-24",
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 804.757019, 445.5, 198.0, 20.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 48.166656, 4.0, 180.939438, 19.5 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_presets",
							"parameter_shortname" : "noisehair_presets",
							"parameter_type" : 2,
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "NoiseHair_presets"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"gradient" : 0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.090393, 630.25, 90.0, 16.0 ],
					"text" : "storagewindow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 775.090393, 722.309082, 179.0, 18.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 								{
									"pattrstorage" : 									{
										"name" : "NoiseHair_Pattr",
										"slots" : 										{

										}

									}

								}
 ],
							"parameter_initial_enable" : 1,
							"parameter_invisible" : 1,
							"parameter_longname" : "NoiseHair_Pattr",
							"parameter_shortname" : "NoiseHair_Pattr",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"annotation_name" : "",
						"client_rect" : [ 22, 173, 376, 437 ],
						"parameter_enable" : 1,
						"storage_rect" : [ 19, 489, 473, 747 ]
					}
,
					"text" : "pattrstorage NoiseHair_Pattr",
					"varname" : "NoiseHair_Pattr"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"activebgoncolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bordercolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"focusbordercolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-22",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 521.423706, 53.571732, 44.0, 80.655479 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.276524, 72.22641, 36.0, 51.723938 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_noiseStrength_mult",
							"parameter_shortname" : "NoiseStrength Mult",
							"parameter_type" : 2,
							"parameter_enum" : [ "x100", "x1000", "x5000" ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"textoncolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"varname" : "NoiseHair_noiseStrength_mult"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 18.75, 145.406296, 32.5, 19.0 ],
					"text" : "int"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64"
						}
,
						"rect" : [ 25.0, 69.0, 222.0, 327.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Menlo Regular",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 130.0, 47.0, 18.0 ],
									"text" : "* 255."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 50.0, 100.0, 41.0, 18.0 ],
									"text" : "pow 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 50.0, 160.0, 50.0, 18.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "flonum[15]",
											"parameter_shortname" : "flonum[14]",
											"parameter_type" : 3,
											"parameter_invisible" : 1
										}

									}
,
									"varname" : "flonum"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 10.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 189.344528, 155.0, 18.0 ],
									"text" : "prepend /backgroundAlpha"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 267.344543, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 37.094528, 704.004761, 107.0, 18.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Menlo Regular",
						"default_fontsize" : 11.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Menlo Regular",
						"fontsize" : 11.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p scale + format"
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
					"patching_rect" : [ 18.75, 333.475464, 119.0, 18.0 ],
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
					"id" : "obj-37",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 18.75, 247.502655, 85.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.829575, 72.22641, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_drawAlpha",
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
					"varname" : "NoiseHair_drawAlpha"
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
					"patching_rect" : [ 772.760742, 334.778076, 155.0, 18.0 ],
					"text" : "prepend /controlSignal 7"
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
					"patching_rect" : [ 521.423706, 334.778076, 155.0, 18.0 ],
					"text" : "prepend /backgroundAlpha"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.086914, 334.778076, 125.0, 18.0 ],
					"text" : "prepend /lineWeight"
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
					"patching_rect" : [ 772.760742, 195.397949, 155.0, 18.0 ],
					"text" : "prepend /NoiseHair_speed"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 521.423706, 195.397949, 203.0, 18.0 ],
					"text" : "prepend /NoiseHair_noiseStrength"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.086914, 195.397949, 185.0, 18.0 ],
					"text" : "prepend /NoiseHair_noiseScale"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"activeneedlecolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"focusbordercolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"id" : "obj-33",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 772.760742, 247.502655, 57.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "P5_ControlSignal_08",
							"parameter_shortname" : "Control 8",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "P5_ControlSignal_08"
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
					"id" : "obj-36",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 521.423706, 247.502655, 48.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.829575, 23.674725, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_bgAlpha",
							"parameter_shortname" : "bgAlpha",
							"parameter_type" : 0,
							"parameter_mmax" : 255.0,
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 5.0
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "NoiseHair_bgAlpha"
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
					"id" : "obj-39",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 270.086914, 247.502655, 65.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 99.553047, 72.22641, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_lineWeight",
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
					"varname" : "NoiseHair_lineWeight"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.75, 195.397949, 191.0, 18.0 ],
					"text" : "prepend /NoiseHair_agentsCount"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 10.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.75, 779.093262, 65.0, 18.0 ],
					"text" : "s ---toP5"
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
					"id" : "obj-43",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 772.760742, 53.571732, 48.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -1.0, 72.22641, 47.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_speed",
							"parameter_shortname" : "Speed",
							"parameter_type" : 0,
							"parameter_mmax" : 50.0,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1,
							"parameter_exponent" : 1.5
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "NoiseHair_speed"
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
					"id" : "obj-44",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 572.423706, 53.571732, 81.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 99.553047, 23.674725, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_noiseStrength",
							"parameter_shortname" : "nsStren",
							"parameter_type" : 0,
							"parameter_mmax" : 1.0,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "NoiseHair_noiseStrength"
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
					"id" : "obj-46",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 270.086914, 53.571732, 71.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.276524, 23.674725, 44.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_noiseScale",
							"parameter_shortname" : "nsScale",
							"parameter_type" : 0,
							"parameter_mmax" : 1500.0,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 1
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "NoiseHair_noiseScale"
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
					"id" : "obj-47",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 18.75, 53.571732, 51.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -1.0, 23.674725, 48.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "NoiseHair_agentsCount",
							"parameter_shortname" : "Agents",
							"parameter_type" : 0,
							"parameter_mmin" : 1.0,
							"parameter_mmax" : 5000.0,
							"parameter_initial" : [ 0 ],
							"parameter_unitstyle" : 0
						}

					}
,
					"textcolor" : [ 1.0, 0.498039, 0.54902, 1.0 ],
					"varname" : "NoiseHair_agentsCount"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"color" : [ 0.2, 0.2, 0.2, 1.0 ],
					"id" : "obj-53",
					"ignoreclick" : 1,
					"maxclass" : "mira.frame",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 624.423706, 644.189209, 77.800003, 55.31094 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.600006, 1.0, 233.0, 165.648438 ],
					"tabname" : "NoiseHair",
					"taborder" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 279.586914, 234.476484, 28.25, 234.476484 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 782.260742, 234.476484, 28.25, 234.476484 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 530.923706, 234.650996, 28.25, 234.650996 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 782.260742, 374.507915, 28.25, 374.507915 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 530.923706, 374.507915, 28.25, 374.507915 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 279.586914, 374.507915, 28.25, 374.507915 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
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
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
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
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 581.923706, 173.406296, 677.958466, 173.406296, 677.958466, 43.571732, 581.923706, 43.571732 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
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
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
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
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19::obj-12" : [ "flonum[15]", "flonum[14]", 0 ],
			"obj-25" : [ "NoiseHair_color1", "NoiseHair_color1", 0 ],
			"obj-46" : [ "NoiseHair_noiseScale", "nsScale", 0 ],
			"obj-14" : [ "Seed", "Seed", 0 ],
			"obj-36" : [ "NoiseHair_bgAlpha", "bgAlpha", 0 ],
			"obj-37" : [ "NoiseHair_drawAlpha", "Alpha", 0 ],
			"obj-43" : [ "NoiseHair_speed", "Speed", 0 ],
			"obj-17" : [ "NoiseHair_color2", "NoiseHair_color2", 0 ],
			"obj-44" : [ "NoiseHair_noiseStrength", "nsStren", 0 ],
			"obj-35" : [ "colors", "colors", 0 ],
			"obj-42" : [ "NoiseHair_clearScreen", "clearScreen", 0 ],
			"obj-49::obj-13" : [ "flonum[19]", "flonum[19]", 0 ],
			"obj-39" : [ "NoiseHair_lineWeight", "weight", 0 ],
			"obj-33" : [ "P5_ControlSignal_08", "Control 8", 0 ],
			"obj-52" : [ "colors_store", "colors_store", 0 ],
			"obj-24" : [ "NoiseHair_presets", "noisehair_presets", 0 ],
			"obj-34" : [ "NoiseHair_Pattr", "NoiseHair_Pattr", 0 ],
			"obj-47" : [ "NoiseHair_agentsCount", "Agents", 0 ],
			"obj-20" : [ "NoiseHair_color3", "NoiseHair_color3", 0 ],
			"obj-22" : [ "NoiseHair_noiseStrength_mult", "NoiseStrength Mult", 0 ],
			"obj-11" : [ "live.text[2]", "live.text", 0 ]
		}
,
		"dependency_cache" : [  ]
	}

}
