--
-- MIDI Fighter Twister Remote Codec
--   by: Unix-Ninja
--
-- V.1.0.0 / Map V.1.0.0

function remote_init(manufacturer, model)
	chn="0"

	local items=
	{
		{name="CC 00",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 01",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 02",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 03",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 04",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 05",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 06",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 07",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 08",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 09",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 10",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 11",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 12",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 13",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 14",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 15",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 16",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 17",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 18",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 19",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 20",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 21",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 22",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 23",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 24",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 25",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 26",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 27",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 28",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 29",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 30",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 31",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 32",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 33",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 34",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 35",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 36",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 37",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 38",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 39",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 40",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 41",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 42",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 43",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 44",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 45",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 46",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 47",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 48",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 49",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 50",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 51",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 52",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 53",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 54",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 55",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 56",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 57",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 58",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 59",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 60",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 61",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 62",             	input="value",	output="value",	min=0,	max=127},
		{name="CC 63",             	input="value",	output="value",	min=0,	max=127},
	}
	remote.define_items(items)

	local inputs=
	{
		{pattern="b"..chn.." 00 xx",     	name="CC 00"},
		{pattern="b"..chn.." 01 xx",     	name="CC 01"},
		{pattern="b"..chn.." 02 xx",     	name="CC 02"},
		{pattern="b"..chn.." 03 xx",     	name="CC 03"},
		{pattern="b"..chn.." 04 xx",     	name="CC 04"},
		{pattern="b"..chn.." 05 xx",     	name="CC 05"},
		{pattern="b"..chn.." 06 xx",     	name="CC 06"},
		{pattern="b"..chn.." 07 xx",     	name="CC 07"},
		{pattern="b"..chn.." 08 xx",     	name="CC 08"},
		{pattern="b"..chn.." 09 xx",     	name="CC 09"},
		{pattern="b"..chn.." 0A xx",     	name="CC 10"},
		{pattern="b"..chn.." 0B xx",     	name="CC 11"},
		{pattern="b"..chn.." 0C xx",     	name="CC 12"},
		{pattern="b"..chn.." 0D xx",     	name="CC 13"},
		{pattern="b"..chn.." 0E xx",     	name="CC 14"},
		{pattern="b"..chn.." 0F xx",     	name="CC 15"},
		{pattern="b"..chn.." 10 xx",     	name="CC 16"},
		{pattern="b"..chn.." 11 xx",     	name="CC 17"},
		{pattern="b"..chn.." 12 xx",     	name="CC 18"},
		{pattern="b"..chn.." 13 xx",     	name="CC 19"},
		{pattern="b"..chn.." 14 xx",     	name="CC 20"},
		{pattern="b"..chn.." 15 xx",     	name="CC 21"},
		{pattern="b"..chn.." 16 xx",     	name="CC 22"},
		{pattern="b"..chn.." 17 xx",     	name="CC 23"},
		{pattern="b"..chn.." 18 xx",     	name="CC 24"},
		{pattern="b"..chn.." 19 xx",     	name="CC 25"},
		{pattern="b"..chn.." 1A xx",     	name="CC 26"},
		{pattern="b"..chn.." 1B xx",     	name="CC 27"},
		{pattern="b"..chn.." 1C xx",     	name="CC 28"},
		{pattern="b"..chn.." 1D xx",     	name="CC 29"},
		{pattern="b"..chn.." 1E xx",     	name="CC 30"},
		{pattern="b"..chn.." 1F xx",     	name="CC 31"},
		{pattern="b"..chn.." 20 xx",     	name="CC 32"},
		{pattern="b"..chn.." 21 xx",     	name="CC 33"},
		{pattern="b"..chn.." 22 xx",     	name="CC 34"},
		{pattern="b"..chn.." 23 xx",     	name="CC 35"},
		{pattern="b"..chn.." 24 xx",     	name="CC 36"},
		{pattern="b"..chn.." 25 xx",     	name="CC 37"},
		{pattern="b"..chn.." 26 xx",     	name="CC 38"},
		{pattern="b"..chn.." 27 xx",     	name="CC 39"},
		{pattern="b"..chn.." 28 xx",     	name="CC 40"},
		{pattern="b"..chn.." 29 xx",     	name="CC 41"},
		{pattern="b"..chn.." 2A xx",     	name="CC 42"},
		{pattern="b"..chn.." 2B xx",     	name="CC 43"},
		{pattern="b"..chn.." 2C xx",     	name="CC 44"},
		{pattern="b"..chn.." 2D xx",     	name="CC 45"},
		{pattern="b"..chn.." 2E xx",     	name="CC 46"},
		{pattern="b"..chn.." 2F xx",     	name="CC 47"},
		{pattern="b"..chn.." 30 xx",     	name="CC 48"},
		{pattern="b"..chn.." 31 xx",     	name="CC 49"},
		{pattern="b"..chn.." 32 xx",     	name="CC 50"},
		{pattern="b"..chn.." 33 xx",     	name="CC 51"},
		{pattern="b"..chn.." 34 xx",     	name="CC 52"},
		{pattern="b"..chn.." 35 xx",     	name="CC 53"},
		{pattern="b"..chn.." 36 xx",     	name="CC 54"},
		{pattern="b"..chn.." 37 xx",     	name="CC 55"},
		{pattern="b"..chn.." 38 xx",     	name="CC 56"},
		{pattern="b"..chn.." 39 xx",     	name="CC 57"},
		{pattern="b"..chn.." 3A xx",     	name="CC 58"},
		{pattern="b"..chn.." 3B xx",     	name="CC 59"},
		{pattern="b"..chn.." 3C xx",     	name="CC 60"},
		{pattern="b"..chn.." 3D xx",     	name="CC 61"},
		{pattern="b"..chn.." 3E xx",     	name="CC 62"},
		{pattern="b"..chn.." 3F xx",     	name="CC 63"},
	}
	remote.define_auto_inputs(inputs)

	local outputs={
		{name="CC 00"           ,	pattern="b"..chn.." 00 xx"},
		{name="CC 01"           ,	pattern="b"..chn.." 01 xx"},
		{name="CC 02"           ,	pattern="b"..chn.." 02 xx"},
		{name="CC 03"           ,	pattern="b"..chn.." 03 xx"},
		{name="CC 04"           ,	pattern="b"..chn.." 04 xx"},
		{name="CC 05"           ,	pattern="b"..chn.." 05 xx"},
		{name="CC 06"           ,	pattern="b"..chn.." 06 xx"},
		{name="CC 07"           ,	pattern="b"..chn.." 07 xx"},
		{name="CC 08"           ,	pattern="b"..chn.." 08 xx"},
		{name="CC 09"           ,	pattern="b"..chn.." 09 xx"},
		{name="CC 10"           ,	pattern="b"..chn.." 0A xx"},
		{name="CC 11"           ,	pattern="b"..chn.." 0B xx"},
		{name="CC 12"           ,	pattern="b"..chn.." 0C xx"},
		{name="CC 13"           ,	pattern="b"..chn.." 0D xx"},
		{name="CC 14"           ,	pattern="b"..chn.." 0E xx"},
		{name="CC 15"           ,	pattern="b"..chn.." 0F xx"},
		{name="CC 16"           ,	pattern="b"..chn.." 10 xx"},
		{name="CC 17"           ,	pattern="b"..chn.." 11 xx"},
		{name="CC 18"           ,	pattern="b"..chn.." 12 xx"},
		{name="CC 19"           ,	pattern="b"..chn.." 13 xx"},
		{name="CC 20"           ,	pattern="b"..chn.." 14 xx"},
		{name="CC 21"           ,	pattern="b"..chn.." 15 xx"},
		{name="CC 22"           ,	pattern="b"..chn.." 16 xx"},
		{name="CC 23"           ,	pattern="b"..chn.." 17 xx"},
		{name="CC 24"           ,	pattern="b"..chn.." 18 xx"},
		{name="CC 25"           ,	pattern="b"..chn.." 19 xx"},
		{name="CC 26"           ,	pattern="b"..chn.." 1A xx"},
		{name="CC 27"           ,	pattern="b"..chn.." 1B xx"},
		{name="CC 28"           ,	pattern="b"..chn.." 1C xx"},
		{name="CC 29"           ,	pattern="b"..chn.." 1D xx"},
		{name="CC 30"           ,	pattern="b"..chn.." 1E xx"},
		{name="CC 31"           ,	pattern="b"..chn.." 1F xx"},
		{name="CC 32"           ,	pattern="b"..chn.." 20 xx"},
		{name="CC 33"           ,	pattern="b"..chn.." 21 xx"},
		{name="CC 34"           ,	pattern="b"..chn.." 22 xx"},
		{name="CC 35"           ,	pattern="b"..chn.." 23 xx"},
		{name="CC 36"           ,	pattern="b"..chn.." 24 xx"},
		{name="CC 37"           ,	pattern="b"..chn.." 25 xx"},
		{name="CC 38"           ,	pattern="b"..chn.." 26 xx"},
		{name="CC 39"           ,	pattern="b"..chn.." 27 xx"},
		{name="CC 40"           ,	pattern="b"..chn.." 28 xx"},
		{name="CC 41"           ,	pattern="b"..chn.." 29 xx"},
		{name="CC 42"           ,	pattern="b"..chn.." 2A xx"},
		{name="CC 43"           ,	pattern="b"..chn.." 2B xx"},
		{name="CC 44"           ,	pattern="b"..chn.." 2C xx"},
		{name="CC 45"           ,	pattern="b"..chn.." 2D xx"},
		{name="CC 46"           ,	pattern="b"..chn.." 2E xx"},
		{name="CC 47"           ,	pattern="b"..chn.." 2F xx"},
		{name="CC 48"           ,	pattern="b"..chn.." 30 xx"},
		{name="CC 49"           ,	pattern="b"..chn.." 31 xx"},
		{name="CC 50"           ,	pattern="b"..chn.." 32 xx"},
		{name="CC 51"           ,	pattern="b"..chn.." 33 xx"},
		{name="CC 52"           ,	pattern="b"..chn.." 34 xx"},
		{name="CC 53"           ,	pattern="b"..chn.." 35 xx"},
		{name="CC 54"           ,	pattern="b"..chn.." 36 xx"},
		{name="CC 55"           ,	pattern="b"..chn.." 37 xx"},
		{name="CC 56"           ,	pattern="b"..chn.." 38 xx"},
		{name="CC 57"           ,	pattern="b"..chn.." 39 xx"},
		{name="CC 58"           ,	pattern="b"..chn.." 3A xx"},
		{name="CC 59"           ,	pattern="b"..chn.." 3B xx"},
		{name="CC 60"           ,	pattern="b"..chn.." 3C xx"},
		{name="CC 61"           ,	pattern="b"..chn.." 3D xx"},
		{name="CC 62"           ,	pattern="b"..chn.." 3E xx"},
		{name="CC 63"           ,	pattern="b"..chn.." 3F xx"},
	}
	remote.define_auto_outputs(outputs)
end

function remote_probe()
	return {
	}
end

function remote_prepare_for_use()
	local retEvents={
	}
	return retEvents
end

function remote_release_from_use()
	local retEvents={
	}
	return retEvents
end

-- 20170101 /< V.1.0.0


-- ------------------------------------------------------------------------
--                                                                         
-- Codec by Unix-Ninja                                           
--                                                                         
-- https://www.unix-ninja.com                                
--                                                                         
-- Permission is given by the author to freely use this Codec for personal 
-- use.                                                                    
--                                                                         
-- Any commercial use, distribution or inclusion of this Codec in any other
-- Codec packs, libraries or software products needs an express permission 
-- from the author. Please contact him at Koshdukai@gmail.com              
--                                                                         
-- If any of the algorithms used in this Codec are used in your Codecs,    
-- please give credit where due to the author or any future contributors.  
--                                                                         
-- COVERED CODEC IS PROVIDED UNDER THIS LICENSE ON AN "AS IS" BASIS,       
-- WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,              
-- INCLUDING, WITHOUT LIMITATION, WARRANTIES THAT THE COVERED CODEC        
-- IS FREE OF DEFECTS, MERCHANTABLE, FIT FOR A PARTICULAR PURPOSE          
-- OR NON-INFRINGING. THE ENTIRE RISK AS TO THE QUALITY AND                
-- PERFORMANCE OF THE COVERED CODEC IS WITH YOU. SHOULD ANY COVERED        
-- CODEC PROVE DEFECTIVE IN ANY RESPECT, YOU (NOT THE INITIAL              
-- NECESSARY SERVICING, REPAIR OR CORRECTION. THIS DISCLAIMER OF           
-- WARRANTY CONSTITUTES AN ESSENTIAL PART OF THIS LICENSE. NO USE          
-- OF ANY COVERED CODEC IS AUTHORIZED HERE UNDER, EXCEPT UNDER             
-- THIS DISCLAIMER.                                                        
-- DEVELOPER OR ANY OTHER FUTURE CONTRIBUTOR) ASSUME THE COST OF ANY       
--                                                                         
-- Use at your own risk!                                                   
--                                                                         
-- ------------------------------------------------------------------------
