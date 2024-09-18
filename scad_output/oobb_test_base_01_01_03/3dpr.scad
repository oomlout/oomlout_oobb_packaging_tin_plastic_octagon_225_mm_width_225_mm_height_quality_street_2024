$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [81.5223587492, 33.7676666306, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [33.7676666306, 81.5223587492, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-33.7676666306, 81.5223587492, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-81.5223587492, 33.7676666306, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-81.5223587492, -33.7676666306, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-33.7676666306, -81.5223587492, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [33.7676666306, -81.5223587492, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [81.5223587492, -33.7676666306, 0]) {
				cylinder(h = 25, r = 20);
			}
		}
		translate(v = [0, 0, 25]) {
			hull() {
				translate(v = [86.0223564722, 35.6316267181, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [35.6316267181, 86.0223564722, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-35.6316267181, 86.0223564722, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-86.0223564722, 35.6316267181, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-86.0223564722, -35.6316267181, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-35.6316267181, -86.0223564722, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [35.6316267181, -86.0223564722, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [86.0223564722, -35.6316267181, 0]) {
					cylinder(h = 29, r = 20);
				}
			}
		}
		translate(v = [0, 0, 54]) {
			hull() {
				translate(v = [88.5223552071, 36.6671601000, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [36.6671601000, 88.5223552071, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-36.6671601000, 88.5223552071, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-88.5223552071, 36.6671601000, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-88.5223552071, -36.6671601000, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-36.6671601000, -88.5223552071, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [36.6671601000, -88.5223552071, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [88.5223552071, -36.6671601000, 0]) {
					cylinder(h = 16, r = 20);
				}
			}
		}
	}
	union() {
		hull() {
			translate(v = [87.8805555319, 36.4013179702, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [36.4013179702, 87.8805555319, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [-36.4013179702, 87.8805555319, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [-87.8805555319, 36.4013179702, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [-87.8805555319, -36.4013179702, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [-36.4013179702, -87.8805555319, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [36.4013179702, -87.8805555319, 0]) {
				cylinder(h = 7, r = 5);
			}
			translate(v = [87.8805555319, -36.4013179702, 0]) {
				cylinder(h = 7, r = 5);
			}
		}
		translate(v = [-102.5000000000, 0, 0]) {
			hull() {
				translate(v = [-4.0000000000, 0.0000000000, 0]) {
					cylinder(h = 22, r = 1);
				}
				translate(v = [4.0000000000, 0.0000000000, 0]) {
					cylinder(h = 22, r = 1);
				}
				translate(v = [-4.0000000000, 0.0000000000, 0]) {
					cylinder(h = 22, r = 1);
				}
				translate(v = [4.0000000000, 0.0000000000, 0]) {
					cylinder(h = 22, r = 1);
				}
			}
		}
		translate(v = [-72.4784450716, -72.4784450716, 0]) {
			rotate(a = [0, 0, 45]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [72.4784450716, -72.4784450716, 0]) {
			rotate(a = [0, 0, -45]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [0, -102.5000000000, 0]) {
			rotate(a = [0, 0, 90]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [72.4784450716, 72.4784450716, 0]) {
			rotate(a = [0, 0, 45]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [-72.4784450716, 72.4784450716, 0]) {
			rotate(a = [0, 0, -45]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [102.5000000000, 0, 0]) {
			rotate(a = [0, 0, 180]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [0, 102.5000000000, 0]) {
			rotate(a = [0, 0, 90]) {
				hull() {
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [-4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
					translate(v = [4.0000000000, 0.0000000000, 0]) {
						cylinder(h = 22, r = 1);
					}
				}
			}
		}
		translate(v = [0, 0, 7]) {
			hull() {
				translate(v = [-99.5000000000, 39.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [99.5000000000, 39.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [-99.5000000000, -39.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [99.5000000000, -39.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
			}
		}
		translate(v = [0, 0, 7]) {
			hull() {
				translate(v = [-84.5000000000, 54.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [84.5000000000, 54.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [-84.5000000000, -54.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [84.5000000000, -54.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
			}
		}
		translate(v = [0, 0, 7]) {
			hull() {
				translate(v = [-69.5000000000, 69.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [69.5000000000, 69.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [-69.5000000000, -69.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [69.5000000000, -69.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
			}
		}
		translate(v = [0, 0, 7]) {
			hull() {
				translate(v = [-54.5000000000, 84.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [54.5000000000, 84.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [-54.5000000000, -84.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [54.5000000000, -84.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
			}
		}
		translate(v = [0, 0, 7]) {
			hull() {
				translate(v = [-39.5000000000, 99.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [39.5000000000, 99.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [-39.5000000000, -99.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
				translate(v = [39.5000000000, -99.5000000000, 0]) {
					cylinder(h = 73, r = 5);
				}
			}
		}
		translate(v = [0, -250.0000000000, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [0, -250.0000000000, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [0, -250.0000000000, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-125.0000000000, 0, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-125.0000000000, 0, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-125.0000000000, 0, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0000000000, -250.0000000000, 1]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0000000000, -250.0000000000, 1]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0000000000, -250.0000000000, 1]) {
			cube(size = [500, 500, 500]);
		}
	}
}