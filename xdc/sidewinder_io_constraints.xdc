#---------------------------------------------------------------------------//
#
# Copyright (C) 2019 Fidus Systems Inc.
#
# Filename    : sample_sidewinder_io_constraints.xdc
# Project     : -
# Author      : Hemn Khanzadi
# Created     : Aug 23, 2019
# Description : This XDC file contains the IO constraints.
#               
#               This project targets the Sidewinder 10243-01 rev 3 board.
#               e.g. pinlock & IO standards
#               
#
#---------------------------------------------------------------------------//


#---------------------------------------------------------------------------//
# Pinlock definitions
#---------------------------------------------------------------------------//


#######################################
#  Clocks & system signals
#######################################
#set_property  PACKAGE_PIN  C4    [get_ports    sysclk100_p                ]
#set_property  PACKAGE_PIN  C3    [get_ports    sysclk100_n                ]
#set_property  PACKAGE_PIN  N13   [get_ports    sysclk200_p                ]
#set_property  PACKAGE_PIN  M13   [get_ports    sysclk200_n                ]

#######################################
#  Miscellaneous
#######################################
set_property  PACKAGE_PIN  B6    [get_ports {  pb_sw[0]                  }]
set_property  PACKAGE_PIN  A3    [get_ports {  pb_sw[1]                  }]
set_property  PACKAGE_PIN  B3    [get_ports {  pb_sw[2]                  }]
set_property  PACKAGE_PIN  B5    [get_ports {  led[0]                    }]
set_property  PACKAGE_PIN  A5    [get_ports {  led[1]                    }]
set_property  PACKAGE_PIN  A4    [get_ports {  led[2]                    }]
set_property  PACKAGE_PIN  C5    [get_ports {  led[3]                    }]
set_property  PACKAGE_PIN  C6    [get_ports {  led[4]                    }]
set_property  PACKAGE_PIN  C1    [get_ports {  led[5]                    }]
set_property  PACKAGE_PIN  D2    [get_ports {  led[6]                    }]
set_property  PACKAGE_PIN  D3    [get_ports {  led[7]                    }]
set_property  PACKAGE_PIN  D4    [get_ports {  led[8]                    }]
set_property  PACKAGE_PIN  D1    [get_ports {  led[9]                    }]

#######################################
#  Reference clocks for QSFP
#######################################

set_property PACKAGE_PIN R33 [get_ports clk_qsfp0_n]
set_property PACKAGE_PIN R32 [get_ports clk_qsfp0_p]
set_property PACKAGE_PIN L33 [get_ports clk_qsfp1_n]
set_property PACKAGE_PIN L32 [get_ports clk_qsfp1_p]

#######################################
#  QSFP Port Interface
#######################################
set_property PACKAGE_PIN L41 [get_ports qsfp0_rx_p[0]]
set_property PACKAGE_PIN L42 [get_ports qsfp0_rx_n[0]]
set_property PACKAGE_PIN K39 [get_ports qsfp0_rx_p[1]]
set_property PACKAGE_PIN K40 [get_ports qsfp0_rx_n[1]]
set_property PACKAGE_PIN J41 [get_ports qsfp0_rx_p[2]]
set_property PACKAGE_PIN J42 [get_ports qsfp0_rx_n[2]]
set_property PACKAGE_PIN H39 [get_ports qsfp0_rx_p[3]]
set_property PACKAGE_PIN H40 [get_ports qsfp0_rx_n[3]]

set_property PACKAGE_PIN M34 [get_ports qsfp0_tx_p[0]]
set_property PACKAGE_PIN M35 [get_ports qsfp0_tx_n[0]]
set_property PACKAGE_PIN L36 [get_ports qsfp0_tx_p[1]]
set_property PACKAGE_PIN L37 [get_ports qsfp0_tx_n[1]]
set_property PACKAGE_PIN K34 [get_ports qsfp0_tx_p[2]]
set_property PACKAGE_PIN K35 [get_ports qsfp0_tx_n[2]]
set_property PACKAGE_PIN J36 [get_ports qsfp0_tx_p[3]]
set_property PACKAGE_PIN J37 [get_ports qsfp0_tx_n[3]]

set_property PACKAGE_PIN G41 [get_ports qsfp1_rx_p[0]]
set_property PACKAGE_PIN G42 [get_ports qsfp1_rx_n[0]]
set_property PACKAGE_PIN F39 [get_ports qsfp1_rx_p[1]]
set_property PACKAGE_PIN F40 [get_ports qsfp1_rx_n[1]]
set_property PACKAGE_PIN E41 [get_ports qsfp1_rx_p[2]]
set_property PACKAGE_PIN E42 [get_ports qsfp1_rx_n[2]]
set_property PACKAGE_PIN D39 [get_ports qsfp1_rx_p[3]]
set_property PACKAGE_PIN D40 [get_ports qsfp1_rx_n[3]]

set_property PACKAGE_PIN H34 [get_ports qsfp1_tx_p[0]]
set_property PACKAGE_PIN H35 [get_ports qsfp1_tx_n[0]]
set_property PACKAGE_PIN G36 [get_ports qsfp1_tx_p[1]]
set_property PACKAGE_PIN G37 [get_ports qsfp1_tx_n[1]]
set_property PACKAGE_PIN F34 [get_ports qsfp1_tx_p[2]]
set_property PACKAGE_PIN F35 [get_ports qsfp1_tx_n[2]]
set_property PACKAGE_PIN E36 [get_ports qsfp1_tx_p[3]]
set_property PACKAGE_PIN E37 [get_ports qsfp1_tx_n[3]]



#######################################
#  PL DDR4, address & control
#######################################
set_property  PACKAGE_PIN  AR27  [get_ports    ddr4_refclk_p              ]
set_property  PACKAGE_PIN  AT27  [get_ports    ddr4_refclk_n              ]
set_property  PACKAGE_PIN  AR23  [get_ports {  ddr4_ck_p[0]              }]
set_property  PACKAGE_PIN  AT23  [get_ports {  ddr4_ck_n[0]              }]
set_property  PACKAGE_PIN  AP24  [get_ports {  ddr4_ck_p[1]              }]
set_property  PACKAGE_PIN  AP25  [get_ports {  ddr4_ck_n[1]              }]
set_property  PACKAGE_PIN  AM28  [get_ports {  ddr4_cke[0]               }]
set_property  PACKAGE_PIN  AU28  [get_ports {  ddr4_cke[1]               }]
set_property  PACKAGE_PIN  AN24  [get_ports {  ddr4_cs_n[0]              }]
set_property  PACKAGE_PIN  AK24  [get_ports {  ddr4_cs_n[1]              }]
set_property  PACKAGE_PIN  AK23  [get_ports {  ddr4_odt[0]               }]
set_property  PACKAGE_PIN  AJ24  [get_ports {  ddr4_odt[1]               }]
set_property  PACKAGE_PIN  AT25  [get_ports    ddr4_rst_n                 ]
set_property  PACKAGE_PIN  AU26  [get_ports    ddr4_act_n                 ]
set_property  PACKAGE_PIN  AU25  [get_ports {  ddr4_a[0]                 }]
set_property  PACKAGE_PIN  AN26  [get_ports {  ddr4_a[1]                 }]
set_property  PACKAGE_PIN  AR24  [get_ports {  ddr4_a[2]                 }]
set_property  PACKAGE_PIN  AP26  [get_ports {  ddr4_a[3]                 }]
set_property  PACKAGE_PIN  AN23  [get_ports {  ddr4_a[4]                 }]
set_property  PACKAGE_PIN  AU24  [get_ports {  ddr4_a[5]                 }]
set_property  PACKAGE_PIN  AP27  [get_ports {  ddr4_a[6]                 }]
set_property  PACKAGE_PIN  AV26  [get_ports {  ddr4_a[7]                 }]
set_property  PACKAGE_PIN  AW27  [get_ports {  ddr4_a[8]                 }]
set_property  PACKAGE_PIN  AV27  [get_ports {  ddr4_a[9]                 }]
set_property  PACKAGE_PIN  AR25  [get_ports {  ddr4_a[10]                }]
set_property  PACKAGE_PIN  AW26  [get_ports {  ddr4_a[11]                }]
set_property  PACKAGE_PIN  AN27  [get_ports {  ddr4_a[12]                }]
set_property  PACKAGE_PIN  AV24  [get_ports {  ddr4_a[13]                }]
set_property  PACKAGE_PIN  AM23  [get_ports {  ddr4_a[14]                }]
set_property  PACKAGE_PIN  AW25  [get_ports {  ddr4_a[15]                }]
set_property  PACKAGE_PIN  AV28  [get_ports {  ddr4_a[16]                }]
set_property  PACKAGE_PIN  AT28  [get_ports {  ddr4_ba[0]                }]
set_property  PACKAGE_PIN  AM24  [get_ports {  ddr4_ba[1]                }]
set_property  PACKAGE_PIN  AR28  [get_ports {  ddr4_bg[0]                }]
set_property  PACKAGE_PIN  AN28  [get_ports {  ddr4_bg[1]                }]

#######################################
#  PL DDR4, data, strobe & mask
#######################################
set_property  PACKAGE_PIN  AJ22  [get_ports {  ddr4_dq[0]                }]
set_property  PACKAGE_PIN  AK22  [get_ports {  ddr4_dq[1]                }]
set_property  PACKAGE_PIN  AM21  [get_ports {  ddr4_dq[2]                }]
set_property  PACKAGE_PIN  AM20  [get_ports {  ddr4_dq[3]                }]
set_property  PACKAGE_PIN  AJ21  [get_ports {  ddr4_dq[4]                }]
set_property  PACKAGE_PIN  AJ20  [get_ports {  ddr4_dq[5]                }]
set_property  PACKAGE_PIN  AL22  [get_ports {  ddr4_dq[6]                }]
set_property  PACKAGE_PIN  AL21  [get_ports {  ddr4_dq[7]                }]
set_property  PACKAGE_PIN  AT20  [get_ports {  ddr4_dq[8]                }]
set_property  PACKAGE_PIN  AP22  [get_ports {  ddr4_dq[9]                }]
set_property  PACKAGE_PIN  AP19  [get_ports {  ddr4_dq[10]               }]
set_property  PACKAGE_PIN  AU19  [get_ports {  ddr4_dq[11]               }]
set_property  PACKAGE_PIN  AN22  [get_ports {  ddr4_dq[12]               }]
set_property  PACKAGE_PIN  AP20  [get_ports {  ddr4_dq[13]               }]
set_property  PACKAGE_PIN  AR19  [get_ports {  ddr4_dq[14]               }]
set_property  PACKAGE_PIN  AR20  [get_ports {  ddr4_dq[15]               }]
set_property  PACKAGE_PIN  AW20  [get_ports {  ddr4_dq[16]               }]
set_property  PACKAGE_PIN  AV21  [get_ports {  ddr4_dq[17]               }]
set_property  PACKAGE_PIN  AW19  [get_ports {  ddr4_dq[18]               }]
set_property  PACKAGE_PIN  AV22  [get_ports {  ddr4_dq[19]               }]
set_property  PACKAGE_PIN  AU20  [get_ports {  ddr4_dq[20]               }]
set_property  PACKAGE_PIN  AW22  [get_ports {  ddr4_dq[21]               }]
set_property  PACKAGE_PIN  AV19  [get_ports {  ddr4_dq[22]               }]
set_property  PACKAGE_PIN  AU21  [get_ports {  ddr4_dq[23]               }]
set_property  PACKAGE_PIN  BA28  [get_ports {  ddr4_dq[24]               }]
set_property  PACKAGE_PIN  BA25  [get_ports {  ddr4_dq[25]               }]
set_property  PACKAGE_PIN  BB24  [get_ports {  ddr4_dq[26]               }]
set_property  PACKAGE_PIN  AY27  [get_ports {  ddr4_dq[27]               }]
set_property  PACKAGE_PIN  BB28  [get_ports {  ddr4_dq[28]               }]
set_property  PACKAGE_PIN  BB25  [get_ports {  ddr4_dq[29]               }]
set_property  PACKAGE_PIN  AY25  [get_ports {  ddr4_dq[30]               }]
set_property  PACKAGE_PIN  AY28  [get_ports {  ddr4_dq[31]               }]
set_property  PACKAGE_PIN  AN17  [get_ports {  ddr4_dq[32]               }]
set_property  PACKAGE_PIN  AL16  [get_ports {  ddr4_dq[33]               }]
set_property  PACKAGE_PIN  AM16  [get_ports {  ddr4_dq[34]               }]
set_property  PACKAGE_PIN  AP16  [get_ports {  ddr4_dq[35]               }]
set_property  PACKAGE_PIN  AN18  [get_ports {  ddr4_dq[36]               }]
set_property  PACKAGE_PIN  AL18  [get_ports {  ddr4_dq[37]               }]
set_property  PACKAGE_PIN  AM18  [get_ports {  ddr4_dq[38]               }]
set_property  PACKAGE_PIN  AN16  [get_ports {  ddr4_dq[39]               }]
set_property  PACKAGE_PIN  BA16  [get_ports {  ddr4_dq[40]               }]
set_property  PACKAGE_PIN  BB16  [get_ports {  ddr4_dq[41]               }]
set_property  PACKAGE_PIN  AY14  [get_ports {  ddr4_dq[42]               }]
set_property  PACKAGE_PIN  BA13  [get_ports {  ddr4_dq[43]               }]
set_property  PACKAGE_PIN  AW17  [get_ports {  ddr4_dq[44]               }]
set_property  PACKAGE_PIN  AW16  [get_ports {  ddr4_dq[45]               }]
set_property  PACKAGE_PIN  AY15  [get_ports {  ddr4_dq[46]               }]
set_property  PACKAGE_PIN  BB13  [get_ports {  ddr4_dq[47]               }]
set_property  PACKAGE_PIN  AR17  [get_ports {  ddr4_dq[48]               }]
set_property  PACKAGE_PIN  AT17  [get_ports {  ddr4_dq[49]               }]
set_property  PACKAGE_PIN  AT15  [get_ports {  ddr4_dq[50]               }]
set_property  PACKAGE_PIN  AT16  [get_ports {  ddr4_dq[51]               }]
set_property  PACKAGE_PIN  AU18  [get_ports {  ddr4_dq[52]               }]
set_property  PACKAGE_PIN  AV18  [get_ports {  ddr4_dq[53]               }]
set_property  PACKAGE_PIN  AU15  [get_ports {  ddr4_dq[54]               }]
set_property  PACKAGE_PIN  AU16  [get_ports {  ddr4_dq[55]               }]
set_property  PACKAGE_PIN  AU14  [get_ports {  ddr4_dq[56]               }]
set_property  PACKAGE_PIN  AW14  [get_ports {  ddr4_dq[57]               }]
set_property  PACKAGE_PIN  BA10  [get_ports {  ddr4_dq[58]               }]
set_property  PACKAGE_PIN  BB10  [get_ports {  ddr4_dq[59]               }]
set_property  PACKAGE_PIN  AW15  [get_ports {  ddr4_dq[60]               }]
set_property  PACKAGE_PIN  AV14  [get_ports {  ddr4_dq[61]               }]
set_property  PACKAGE_PIN  BB11  [get_ports {  ddr4_dq[62]               }]
set_property  PACKAGE_PIN  BA11  [get_ports {  ddr4_dq[63]               }]
set_property  PACKAGE_PIN  BB19  [get_ports {  ddr4_dq[64]               }]
set_property  PACKAGE_PIN  BA22  [get_ports {  ddr4_dq[65]               }]
set_property  PACKAGE_PIN  AY22  [get_ports {  ddr4_dq[66]               }]
set_property  PACKAGE_PIN  BA21  [get_ports {  ddr4_dq[67]               }]
set_property  PACKAGE_PIN  BB20  [get_ports {  ddr4_dq[68]               }]
set_property  PACKAGE_PIN  AY23  [get_ports {  ddr4_dq[69]               }]
set_property  PACKAGE_PIN  BA18  [get_ports {  ddr4_dq[70]               }]
set_property  PACKAGE_PIN  BB18  [get_ports {  ddr4_dq[71]               }]
set_property  PACKAGE_PIN  AK20  [get_ports {  ddr4_dqs_p[0]             }]
set_property  PACKAGE_PIN  AK19  [get_ports {  ddr4_dqs_n[0]             }]
set_property  PACKAGE_PIN  AN21  [get_ports {  ddr4_dqs_p[1]             }]
set_property  PACKAGE_PIN  AP21  [get_ports {  ddr4_dqs_n[1]             }]
set_property  PACKAGE_PIN  AY19  [get_ports {  ddr4_dqs_p[2]             }]
set_property  PACKAGE_PIN  AY18  [get_ports {  ddr4_dqs_n[2]             }]
set_property  PACKAGE_PIN  BA26  [get_ports {  ddr4_dqs_p[3]             }]
set_property  PACKAGE_PIN  BB26  [get_ports {  ddr4_dqs_n[3]             }]
set_property  PACKAGE_PIN  AJ17  [get_ports {  ddr4_dqs_p[4]             }]
set_property  PACKAGE_PIN  AK17  [get_ports {  ddr4_dqs_n[4]             }]
set_property  PACKAGE_PIN  BA15  [get_ports {  ddr4_dqs_p[5]             }]
set_property  PACKAGE_PIN  BB15  [get_ports {  ddr4_dqs_n[5]             }]
set_property  PACKAGE_PIN  AR18  [get_ports {  ddr4_dqs_p[6]             }]
set_property  PACKAGE_PIN  AT18  [get_ports {  ddr4_dqs_n[6]             }]
set_property  PACKAGE_PIN  AU13  [get_ports {  ddr4_dqs_p[7]             }]
set_property  PACKAGE_PIN  AV13  [get_ports {  ddr4_dqs_n[7]             }]
set_property  PACKAGE_PIN  AY20  [get_ports {  ddr4_dqs_p[8]             }]
set_property  PACKAGE_PIN  BA20  [get_ports {  ddr4_dqs_n[8]             }]
set_property  PACKAGE_PIN  AM19  [get_ports {  ddr4_dm[0]                }]
set_property  PACKAGE_PIN  AT22  [get_ports {  ddr4_dm[1]                }]
set_property  PACKAGE_PIN  AU23  [get_ports {  ddr4_dm[2]                }]
set_property  PACKAGE_PIN  AW24  [get_ports {  ddr4_dm[3]                }]
set_property  PACKAGE_PIN  AJ18  [get_ports {  ddr4_dm[4]                }]
set_property  PACKAGE_PIN  AY17  [get_ports {  ddr4_dm[5]                }]
set_property  PACKAGE_PIN  AV17  [get_ports {  ddr4_dm[6]                }]
set_property  PACKAGE_PIN  AY12  [get_ports {  ddr4_dm[7]                }]
set_property  PACKAGE_PIN  BA23  [get_ports {  ddr4_dm[8]                }]



#######################################
# I/O standard definitions
#######################################
#set_property  IOSTANDARD  LVDS_25         [get_ports sysclk*00_*              ]
set_property  IOSTANDARD  LVCMOS33        [get_ports pb_sw*                   ]
set_property  IOSTANDARD  LVCMOS33        [get_ports led*                     ]
