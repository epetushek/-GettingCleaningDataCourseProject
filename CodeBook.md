{\rtf1\ansi\ansicpg1252\cocoartf1504\cocoasubrtf830
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red42\green44\blue46;\red249\green249\blue249;}
{\*\expandedcolortbl;;\cssrgb\c21569\c22745\c23529;\cssrgb\c98039\c98039\c98039;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{hyphen\}}{\leveltext\leveltemplateid2\'01\uc0\u8259 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww15300\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \cf2 \cb3 \expnd0\expndtw0\kerning0
Code Book\
\

\b run_analysis Script Overview
\b0 \
\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	1.	}Downloads and unzips file\
{\listtext	2.	}Loads .txt files from directory\
{\listtext	3.	}Adds subject ID and column names\
{\listtext	4.	}Merges the training and test data sets\
{\listtext	5.	}Extracts and selects only the variables containing the Mean and Standard Deviation\
{\listtext	6.	}Converts activity from numeric to string or descriptive form \
{\listtext	7.	}Re-labels column names to be more descriptive\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\partightenfactor0
\ls1\ilvl1\cf2 {\listtext	\uc0\u8259 	}std to StdDev\
{\listtext	\uc0\u8259 	}mean to Mean\
{\listtext	\uc0\u8259 	}t to Time\
{\listtext	\uc0\u8259 	}F to Frequency\
{\listtext	\uc0\u8259 	}Bbody to Body\
{\listtext	\uc0\u8259 	}Gg to Gyro\
{\listtext	\uc0\u8259 	}AccMag to AccelMagnitude\
{\listtext	\uc0\u8259 	}Bbodyaccjerkmag to BodyAccelJerkMagnitude \
{\listtext	\uc0\u8259 	}JerkMag to JerkMagnitude\
{\listtext	\uc0\u8259 	}GyroMag to GyroMagnitude\
\pard\tx220\tx720\tx1440\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0\cf2 {\listtext	8.	}Calculates average for each variable across each activity for every subject\
{\listtext	9.	}Writes data to .txt file labeled tidy.txt\
\pard\tx720\tx1440\pardeftab720\partightenfactor0
\cf2 \expnd0\expndtw0\kerning0
\

\b Dataset Information \
\

\b0 See: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones\
}