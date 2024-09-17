$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [87.0223559662, 36.0458400708, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [36.0458400708, 87.0223559662, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-36.0458400708, 87.0223559662, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-87.0223559662, 36.0458400708, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-87.0223559662, -36.0458400708, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [-36.0458400708, -87.0223559662, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [36.0458400708, -87.0223559662, 0]) {
				cylinder(h = 25, r = 20);
			}
			translate(v = [87.0223559662, -36.0458400708, 0]) {
				cylinder(h = 25, r = 20);
			}
		}
		translate(v = [0, 0, 25]) {
			hull() {
				translate(v = [88.5223552071, 36.6671601000, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [36.6671601000, 88.5223552071, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-36.6671601000, 88.5223552071, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-88.5223552071, 36.6671601000, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-88.5223552071, -36.6671601000, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [-36.6671601000, -88.5223552071, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [36.6671601000, -88.5223552071, 0]) {
					cylinder(h = 29, r = 20);
				}
				translate(v = [88.5223552071, -36.6671601000, 0]) {
					cylinder(h = 29, r = 20);
				}
			}
		}
		translate(v = [0, 0, 54]) {
			hull() {
				translate(v = [91.0223539421, 37.7026934820, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [37.7026934820, 91.0223539421, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-37.7026934820, 91.0223539421, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-91.0223539421, 37.7026934820, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-91.0223539421, -37.7026934820, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [-37.7026934820, -91.0223539421, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [37.7026934820, -91.0223539421, 0]) {
					cylinder(h = 16, r = 20);
				}
				translate(v = [91.0223539421, -37.7026934820, 0]) {
					cylinder(h = 16, r = 20);
				}
			}
		}
	}
	union() {
		hull() {
			translate(v = [-90.0000000000, 37.2780000000, 0]) {
				cylinder(h = 7, r = 1);
			}
			translate(v = [90.0000000000, 37.2780000000, 0]) {
				cylinder(h = 7, r = 1);
			}
			translate(v = [-90.0000000000, -37.2780000000, 0]) {
				cylinder(h = 7, r = 1);
			}
			translate(v = [90.0000000000, -37.2780000000, 0]) {
				cylinder(h = 7, r = 1);
			}
		}
		rotate(a = [0, 0, 45]) {
			hull() {
				translate(v = [-90.0000000000, 37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [90.0000000000, 37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [-90.0000000000, -37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [90.0000000000, -37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
			}
		}
		rotate(a = [0, 0, -45]) {
			hull() {
				translate(v = [-90.0000000000, 37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [90.0000000000, 37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [-90.0000000000, -37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [90.0000000000, -37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
			}
		}
		rotate(a = [0, 0, 90]) {
			hull() {
				translate(v = [-90.0000000000, 37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [90.0000000000, 37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [-90.0000000000, -37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
				translate(v = [90.0000000000, -37.2780000000, 0]) {
					cylinder(h = 7, r = 1);
				}
			}
		}
		translate(v = [-105.0000000000, 0, 0]) {
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
		translate(v = [-74.2462120246, -74.2462120246, 0]) {
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
		translate(v = [74.2462120246, -74.2462120246, 0]) {
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
		translate(v = [0, -105.0000000000, 0]) {
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
		translate(v = [74.2462120246, 74.2462120246, 0]) {
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
		translate(v = [-74.2462120246, 74.2462120246, 0]) {
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
		translate(v = [105.0000000000, 0, 0]) {
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
		translate(v = [0, 105.0000000000, 0]) {
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
		translate(v = [-85.0000000000, -250.0000000000, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-85.0000000000, -250.0000000000, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-85.0000000000, -250.0000000000, 0]) {
			cube(size = [500, 500, 500]);
		}
	}
}