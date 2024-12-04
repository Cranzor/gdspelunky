extends Resource
class_name Sprites

const sprite_database = {
	"black" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/black"
	},
	"black_fade_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 8), Vector2(1, 1)], [Vector2(3, 8), Vector2(1, 1)], [Vector2(5, 8), Vector2(1, 1)], [Vector2(7, 8), Vector2(1, 1)], [Vector2(9, 8), Vector2(1, 1)], [Vector2(11, 8), Vector2(1, 1)], [Vector2(13, 8), Vector2(1, 1)], [Vector2(15, 8), Vector2(1, 1)], [Vector2(2, 9), Vector2(1, 1)], [Vector2(4, 9), Vector2(1, 1)], [Vector2(6, 9), Vector2(1, 1)], [Vector2(8, 9), Vector2(1, 1)], [Vector2(10, 9), Vector2(1, 1)], [Vector2(12, 9), Vector2(1, 1)], [Vector2(14, 9), Vector2(1, 1)], [Vector2(1, 10), Vector2(1, 1)], [Vector2(3, 10), Vector2(1, 1)], [Vector2(5, 10), Vector2(1, 1)], [Vector2(7, 10), Vector2(1, 1)], [Vector2(9, 10), Vector2(1, 1)], [Vector2(11, 10), Vector2(1, 1)], [Vector2(13, 10), Vector2(1, 1)], [Vector2(15, 10), Vector2(1, 1)], [Vector2(2, 11), Vector2(1, 5)], [Vector2(4, 11), Vector2(1, 1)], [Vector2(6, 11), Vector2(1, 5)], [Vector2(8, 11), Vector2(1, 1)], [Vector2(10, 11), Vector2(1, 5)], [Vector2(12, 11), Vector2(1, 1)], [Vector2(14, 11), Vector2(1, 5)], [Vector2(1, 12), Vector2(1, 1)], [Vector2(3, 12), Vector2(1, 1)], [Vector2(5, 12), Vector2(1, 1)], [Vector2(7, 12), Vector2(1, 1)], [Vector2(9, 12), Vector2(1, 1)], [Vector2(11, 12), Vector2(1, 1)], [Vector2(13, 12), Vector2(1, 1)], [Vector2(15, 12), Vector2(1, 1)], [Vector2(4, 13), Vector2(1, 3)], [Vector2(8, 13), Vector2(1, 3)], [Vector2(12, 13), Vector2(1, 3)], [Vector2(0, 14), Vector2(2, 2)], [Vector2(3, 14), Vector2(1, 2)], [Vector2(5, 14), Vector2(1, 2)], [Vector2(7, 14), Vector2(1, 2)], [Vector2(9, 14), Vector2(1, 2)], [Vector2(11, 14), Vector2(1, 2)], [Vector2(13, 14), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/black_fade_up"
	},
	"font" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(0, 0)]],
		1 : [[Vector2(4, 0), Vector2(8, 16)]],
		2 : [[Vector2(4, 0), Vector2(8, 14)], [Vector2(2, 2), Vector2(2, 12)], [Vector2(12, 2), Vector2(2, 12)]],
		3 : [[Vector2(4, 0), Vector2(8, 16)], [Vector2(0, 4), Vector2(4, 8)], [Vector2(12, 4), Vector2(4, 8)]],
		4 : [[Vector2(2, 6), Vector2(8, 6)], [Vector2(4, 12), Vector2(6, 4)]],
		5 : [[Vector2(2, 4), Vector2(12, 8)]],
		6 : [[Vector2(4, 6), Vector2(8, 10)]],
		7 : [[Vector2(0, 0), Vector2(10, 2)], [Vector2(0, 2), Vector2(8, 2)], [Vector2(10, 2), Vector2(4, 2)], [Vector2(0, 4), Vector2(6, 2)], [Vector2(8, 4), Vector2(4, 2)], [Vector2(0, 6), Vector2(4, 2)], [Vector2(6, 6), Vector2(4, 2)], [Vector2(0, 8), Vector2(2, 2)], [Vector2(4, 8), Vector2(4, 2)], [Vector2(14, 8), Vector2(2, 8)], [Vector2(2, 10), Vector2(4, 2)], [Vector2(12, 10), Vector2(2, 6)], [Vector2(10, 12), Vector2(2, 4)], [Vector2(8, 14), Vector2(2, 2)]],
		8 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		9 : [[Vector2(4, 0), Vector2(8, 16)], [Vector2(2, 2), Vector2(2, 14)], [Vector2(12, 8), Vector2(2, 8)]],
		10 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(14, 2), Vector2(2, 14)]],
		11 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(14, 2), Vector2(2, 14)]],
		12 : [[Vector2(2, 0), Vector2(14, 10)], [Vector2(4, 10), Vector2(4, 2)], [Vector2(10, 10), Vector2(4, 2)]],
		13 : [[Vector2(0, 0), Vector2(14, 10)], [Vector2(6, 10), Vector2(8, 6)]],
		14 : [[Vector2(2, 0), Vector2(14, 16)]],
		15 : [[Vector2(4, 0), Vector2(12, 16)], [Vector2(2, 2), Vector2(2, 14)]],
		16 : [[Vector2(0, 0), Vector2(14, 8)], [Vector2(6, 8), Vector2(8, 8)]],
		17 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		18 : [[Vector2(2, 0), Vector2(10, 12)], [Vector2(0, 2), Vector2(2, 8)], [Vector2(12, 2), Vector2(2, 14)], [Vector2(6, 12), Vector2(6, 4)]],
		19 : [[Vector2(4, 0), Vector2(8, 16)]],
		20 : [[Vector2(4, 0), Vector2(8, 14)], [Vector2(6, 14), Vector2(6, 2)]],
		21 : [[Vector2(6, 0), Vector2(8, 6)], [Vector2(4, 2), Vector2(2, 12)], [Vector2(2, 4), Vector2(2, 8)], [Vector2(6, 6), Vector2(6, 10)], [Vector2(12, 8), Vector2(2, 8)]],
		22 : [[Vector2(2, 0), Vector2(12, 16)]],
		23 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		24 : [[Vector2(2, 0), Vector2(8, 6)], [Vector2(10, 2), Vector2(2, 12)], [Vector2(12, 4), Vector2(2, 8)], [Vector2(4, 6), Vector2(6, 10)], [Vector2(2, 8), Vector2(2, 8)]],
		25 : [[Vector2(2, 0), Vector2(12, 6)], [Vector2(4, 6), Vector2(10, 4)], [Vector2(4, 10), Vector2(8, 6)]],
		26 : [[Vector2(4, 0), Vector2(10, 16)], [Vector2(2, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 14)]],
		27 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 14)]],
		28 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		29 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)]],
		30 : [[Vector2(0, 0), Vector2(14, 14)], [Vector2(14, 2), Vector2(2, 12)], [Vector2(2, 14), Vector2(12, 2)]],
		31 : [[Vector2(2, 0), Vector2(14, 16)], [Vector2(0, 2), Vector2(2, 12)]],
		32 : [[Vector2(0, 0), Vector2(16, 12)], [Vector2(0, 12), Vector2(8, 2)], [Vector2(2, 14), Vector2(6, 2)]],
		33 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 14)]],
		34 : [[Vector2(2, 0), Vector2(14, 12)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(2, 12), Vector2(12, 2)], [Vector2(2, 14), Vector2(4, 2)], [Vector2(8, 14), Vector2(4, 2)]],
		35 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(14, 2)]],
		36 : [[Vector2(2, 0), Vector2(12, 16)]],
		37 : [[Vector2(8, 0), Vector2(8, 14)], [Vector2(0, 6), Vector2(8, 8)], [Vector2(2, 14), Vector2(12, 2)]],
		38 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(4, 2)], [Vector2(10, 14), Vector2(6, 2)]],
		39 : [[Vector2(0, 0), Vector2(8, 14)], [Vector2(8, 8), Vector2(8, 8)], [Vector2(2, 14), Vector2(6, 2)]],
		40 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(14, 2)]],
		41 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(14, 2)]],
		42 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		43 : [[Vector2(0, 0), Vector2(16, 12)], [Vector2(0, 12), Vector2(8, 2)], [Vector2(2, 14), Vector2(6, 2)]],
		44 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		45 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(14, 2)]],
		46 : [[Vector2(0, 0), Vector2(14, 14)], [Vector2(14, 2), Vector2(2, 14)], [Vector2(2, 14), Vector2(4, 2)], [Vector2(10, 14), Vector2(4, 2)]],
		47 : [[Vector2(2, 0), Vector2(14, 14)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(2, 14), Vector2(12, 2)]],
		48 : [[Vector2(0, 0), Vector2(16, 6)], [Vector2(4, 6), Vector2(8, 10)]],
		49 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(12, 2)]],
		50 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(12, 2)]],
		51 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(12, 2)]],
		52 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(4, 2)], [Vector2(10, 14), Vector2(4, 2)]],
		53 : [[Vector2(0, 0), Vector2(16, 10)], [Vector2(4, 10), Vector2(8, 6)]],
		54 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(2, 14), Vector2(14, 2)]],
		55 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 6), Vector2(2, 8)]],
		56 : [[Vector2(4, 0), Vector2(8, 12)]],
		57 : [[Vector2(4, 0), Vector2(8, 16)], [Vector2(2, 2), Vector2(2, 12)]],
		58 : [[Vector2(4, 0), Vector2(8, 16)], [Vector2(12, 2), Vector2(2, 12)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/font"
	},
	"font_old" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		1 : [[Vector2(4, 0), Vector2(8, 16)], [Vector2(2, 2), Vector2(2, 14)], [Vector2(12, 8), Vector2(2, 8)]],
		2 : [[Vector2(1, 0), Vector2(12, 16)], [Vector2(13, 2), Vector2(2, 14)]],
		3 : [[Vector2(1, 0), Vector2(12, 16)], [Vector2(13, 2), Vector2(2, 14)]],
		4 : [[Vector2(1, 0), Vector2(14, 11)], [Vector2(7, 11), Vector2(8, 5)]],
		5 : [[Vector2(1, 0), Vector2(14, 16)]],
		6 : [[Vector2(3, 0), Vector2(12, 16)], [Vector2(1, 2), Vector2(2, 14)]],
		7 : [[Vector2(2, 0), Vector2(12, 8)], [Vector2(6, 8), Vector2(8, 8)]],
		8 : [[Vector2(2, 0), Vector2(12, 16)], [Vector2(0, 2), Vector2(2, 12)], [Vector2(14, 2), Vector2(2, 12)]],
		9 : [[Vector2(0, 0), Vector2(14, 12)], [Vector2(6, 12), Vector2(8, 4)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/font_old"
	},
	"font_small" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(0, 0)]],
		1 : [[Vector2(2, 0), Vector2(4, 8)]],
		2 : [[Vector2(2, 0), Vector2(4, 7)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 6)]],
		3 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(0, 2), Vector2(2, 4)], [Vector2(6, 2), Vector2(2, 4)]],
		4 : [[Vector2(1, 3), Vector2(4, 3)], [Vector2(2, 6), Vector2(3, 2)]],
		5 : [[Vector2(1, 2), Vector2(6, 4)]],
		6 : [[Vector2(2, 3), Vector2(4, 5)]],
		7 : [[Vector2(5, 0), Vector2(3, 4)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(3, 2), Vector2(1, 6)], [Vector2(2, 3), Vector2(1, 5)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(5, 4), Vector2(2, 1)], [Vector2(0, 5), Vector2(1, 2)], [Vector2(5, 5), Vector2(1, 1)]],
		8 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]],
		9 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 7)], [Vector2(6, 4), Vector2(1, 4)]],
		10 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(7, 1), Vector2(1, 7)]],
		11 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(7, 1), Vector2(1, 7)]],
		12 : [[Vector2(1, 0), Vector2(7, 5)], [Vector2(2, 5), Vector2(2, 1)], [Vector2(5, 5), Vector2(2, 1)]],
		13 : [[Vector2(0, 0), Vector2(7, 5)], [Vector2(3, 5), Vector2(4, 3)]],
		14 : [[Vector2(1, 0), Vector2(7, 8)]],
		15 : [[Vector2(2, 0), Vector2(6, 8)], [Vector2(1, 1), Vector2(1, 7)]],
		16 : [[Vector2(0, 0), Vector2(7, 4)], [Vector2(3, 4), Vector2(4, 4)]],
		17 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]],
		18 : [[Vector2(1, 0), Vector2(5, 6)], [Vector2(0, 1), Vector2(1, 4)], [Vector2(6, 1), Vector2(1, 7)], [Vector2(3, 6), Vector2(3, 2)]],
		19 : [[Vector2(2, 0), Vector2(4, 8)]],
		20 : [[Vector2(2, 0), Vector2(4, 7)], [Vector2(3, 7), Vector2(3, 1)]],
		21 : [[Vector2(3, 0), Vector2(4, 3)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(1, 2), Vector2(1, 4)], [Vector2(3, 3), Vector2(3, 5)], [Vector2(6, 4), Vector2(1, 4)]],
		22 : [[Vector2(1, 0), Vector2(6, 8)]],
		23 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]],
		24 : [[Vector2(1, 0), Vector2(4, 3)], [Vector2(5, 1), Vector2(1, 6)], [Vector2(6, 2), Vector2(1, 4)], [Vector2(2, 3), Vector2(3, 5)], [Vector2(1, 4), Vector2(1, 4)]],
		25 : [[Vector2(1, 0), Vector2(6, 3)], [Vector2(2, 3), Vector2(5, 2)], [Vector2(2, 5), Vector2(4, 3)]],
		26 : [[Vector2(2, 0), Vector2(5, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 7)]],
		27 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 7)]],
		28 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]],
		29 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)]],
		30 : [[Vector2(0, 0), Vector2(7, 7)], [Vector2(7, 1), Vector2(1, 6)], [Vector2(1, 7), Vector2(6, 1)]],
		31 : [[Vector2(1, 0), Vector2(7, 8)], [Vector2(0, 2), Vector2(1, 5)]],
		32 : [[Vector2(0, 0), Vector2(8, 6)], [Vector2(0, 6), Vector2(4, 1)], [Vector2(1, 7), Vector2(3, 1)]],
		33 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 7)]],
		34 : [[Vector2(1, 0), Vector2(7, 6)], [Vector2(0, 2), Vector2(1, 5)], [Vector2(1, 6), Vector2(6, 1)], [Vector2(1, 7), Vector2(2, 1)], [Vector2(4, 7), Vector2(2, 1)]],
		35 : [[Vector2(0, 0), Vector2(8, 7)]],
		36 : [[Vector2(1, 0), Vector2(6, 8)]],
		37 : [[Vector2(4, 0), Vector2(4, 7)], [Vector2(0, 3), Vector2(4, 4)], [Vector2(1, 7), Vector2(6, 1)]],
		38 : [[Vector2(0, 0), Vector2(8, 7)], [Vector2(1, 7), Vector2(2, 1)]],
		39 : [[Vector2(0, 0), Vector2(4, 7)], [Vector2(4, 4), Vector2(4, 4)], [Vector2(1, 7), Vector2(3, 1)]],
		40 : [[Vector2(0, 0), Vector2(8, 7)]],
		41 : [[Vector2(0, 0), Vector2(8, 7)]],
		42 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]],
		43 : [[Vector2(0, 0), Vector2(8, 6)], [Vector2(0, 6), Vector2(4, 1)], [Vector2(1, 7), Vector2(3, 1)]],
		44 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]],
		45 : [[Vector2(0, 0), Vector2(8, 7)]],
		46 : [[Vector2(0, 0), Vector2(7, 7)], [Vector2(7, 1), Vector2(1, 7)], [Vector2(1, 7), Vector2(2, 1)], [Vector2(5, 7), Vector2(2, 1)]],
		47 : [[Vector2(1, 0), Vector2(7, 7)], [Vector2(0, 2), Vector2(1, 5)], [Vector2(1, 7), Vector2(6, 1)]],
		48 : [[Vector2(0, 0), Vector2(8, 3)], [Vector2(2, 3), Vector2(4, 5)]],
		49 : [[Vector2(0, 0), Vector2(8, 7)], [Vector2(1, 7), Vector2(6, 1)]],
		50 : [[Vector2(0, 0), Vector2(8, 7)], [Vector2(1, 7), Vector2(6, 1)]],
		51 : [[Vector2(0, 0), Vector2(8, 7)], [Vector2(1, 7), Vector2(6, 1)]],
		52 : [[Vector2(0, 0), Vector2(8, 7)], [Vector2(1, 7), Vector2(2, 1)], [Vector2(5, 7), Vector2(2, 1)]],
		53 : [[Vector2(0, 0), Vector2(8, 5)], [Vector2(2, 5), Vector2(4, 3)]],
		54 : [[Vector2(0, 0), Vector2(8, 7)]],
		55 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 3), Vector2(1, 4)]],
		56 : [[Vector2(2, 0), Vector2(4, 6)]],
		57 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 6)]],
		58 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(6, 1), Vector2(1, 6)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/font_small"
	},
	"lvl" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(6, 15)], [Vector2(6, 4), Vector2(3, 11)], [Vector2(10, 4), Vector2(5, 5)], [Vector2(9, 5), Vector2(1, 11)], [Vector2(10, 9), Vector2(4, 6)], [Vector2(14, 10), Vector2(2, 5)], [Vector2(1, 15), Vector2(7, 1)], [Vector2(10, 15), Vector2(3, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/lvl"
	},
	"red" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 1), Vector2(16, 14)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/red"
	},
	"room" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(160, 128)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 2), Vector2(12, 12)], [Vector2(18, 2), Vector2(12, 12)], [Vector2(34, 2), Vector2(12, 12)], [Vector2(50, 2), Vector2(12, 12)], [Vector2(66, 2), Vector2(12, 12)], [Vector2(82, 2), Vector2(12, 12)], [Vector2(98, 2), Vector2(12, 12)], [Vector2(114, 2), Vector2(12, 12)], [Vector2(130, 2), Vector2(12, 12)], [Vector2(146, 2), Vector2(12, 12)], [Vector2(2, 18), Vector2(12, 12)], [Vector2(18, 18), Vector2(12, 12)], [Vector2(34, 18), Vector2(12, 12)], [Vector2(50, 18), Vector2(12, 12)], [Vector2(66, 18), Vector2(12, 12)], [Vector2(82, 18), Vector2(12, 12)], [Vector2(98, 18), Vector2(12, 12)], [Vector2(114, 18), Vector2(12, 12)], [Vector2(130, 18), Vector2(12, 12)], [Vector2(146, 18), Vector2(12, 12)], [Vector2(2, 34), Vector2(12, 12)], [Vector2(18, 34), Vector2(12, 12)], [Vector2(34, 34), Vector2(12, 12)], [Vector2(50, 34), Vector2(12, 12)], [Vector2(66, 34), Vector2(12, 12)], [Vector2(82, 34), Vector2(12, 12)], [Vector2(98, 34), Vector2(12, 12)], [Vector2(114, 34), Vector2(12, 12)], [Vector2(130, 34), Vector2(12, 12)], [Vector2(146, 34), Vector2(12, 12)], [Vector2(2, 50), Vector2(12, 12)], [Vector2(18, 50), Vector2(12, 12)], [Vector2(34, 50), Vector2(12, 12)], [Vector2(50, 50), Vector2(12, 12)], [Vector2(66, 50), Vector2(12, 12)], [Vector2(82, 50), Vector2(12, 12)], [Vector2(98, 50), Vector2(12, 12)], [Vector2(114, 50), Vector2(12, 12)], [Vector2(130, 50), Vector2(12, 12)], [Vector2(146, 50), Vector2(12, 12)], [Vector2(2, 66), Vector2(12, 12)], [Vector2(18, 66), Vector2(12, 12)], [Vector2(34, 66), Vector2(12, 12)], [Vector2(50, 66), Vector2(12, 12)], [Vector2(66, 66), Vector2(12, 12)], [Vector2(82, 66), Vector2(12, 12)], [Vector2(98, 66), Vector2(12, 12)], [Vector2(114, 66), Vector2(12, 12)], [Vector2(130, 66), Vector2(12, 12)], [Vector2(146, 66), Vector2(12, 12)], [Vector2(2, 82), Vector2(12, 12)], [Vector2(18, 82), Vector2(12, 12)], [Vector2(34, 82), Vector2(12, 12)], [Vector2(50, 82), Vector2(12, 12)], [Vector2(66, 82), Vector2(12, 12)], [Vector2(82, 82), Vector2(12, 12)], [Vector2(98, 82), Vector2(12, 12)], [Vector2(114, 82), Vector2(12, 12)], [Vector2(130, 82), Vector2(12, 12)], [Vector2(146, 82), Vector2(12, 12)], [Vector2(2, 98), Vector2(12, 12)], [Vector2(18, 98), Vector2(12, 12)], [Vector2(34, 98), Vector2(12, 12)], [Vector2(50, 98), Vector2(12, 12)], [Vector2(66, 98), Vector2(12, 12)], [Vector2(82, 98), Vector2(12, 12)], [Vector2(98, 98), Vector2(12, 12)], [Vector2(114, 98), Vector2(12, 12)], [Vector2(130, 98), Vector2(12, 12)], [Vector2(146, 98), Vector2(12, 12)], [Vector2(2, 114), Vector2(12, 12)], [Vector2(18, 114), Vector2(12, 12)], [Vector2(34, 114), Vector2(12, 12)], [Vector2(50, 114), Vector2(12, 12)], [Vector2(66, 114), Vector2(12, 12)], [Vector2(82, 114), Vector2(12, 12)], [Vector2(98, 114), Vector2(12, 12)], [Vector2(114, 114), Vector2(12, 12)], [Vector2(130, 114), Vector2(12, 12)], [Vector2(146, 114), Vector2(12, 12)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/room"
	},
	"metal_block" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/metal_block"
	},
	"metal_door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/metal_door"
	},
	"alien_floor" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/alien/alien_floor"
	},
	"alien_front" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/alien/alien_front"
	},
	"alien_front2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/alien/alien_front2"
	},
	"alien_front3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/alien/alien_front3"
	},
	"alien_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/alien/alien_top"
	},
	"barrier" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(7, 1)], [Vector2(3, 1), Vector2(7, 1)], [Vector2(11, 1), Vector2(1, 1)], [Vector2(3, 2), Vector2(2, 1)], [Vector2(6, 2), Vector2(4, 8)], [Vector2(4, 3), Vector2(1, 2)], [Vector2(5, 5), Vector2(1, 2)], [Vector2(5, 9), Vector2(1, 17)], [Vector2(6, 10), Vector2(3, 5)], [Vector2(4, 13), Vector2(1, 8)], [Vector2(3, 14), Vector2(1, 4)], [Vector2(6, 15), Vector2(1, 18)], [Vector2(8, 15), Vector2(1, 3)], [Vector2(9, 18), Vector2(1, 27)], [Vector2(7, 21), Vector2(1, 27)], [Vector2(8, 23), Vector2(1, 25)], [Vector2(10, 27), Vector2(1, 3)], [Vector2(5, 32), Vector2(1, 1)], [Vector2(4, 33), Vector2(1, 1)], [Vector2(3, 34), Vector2(1, 3)], [Vector2(6, 35), Vector2(1, 13)], [Vector2(10, 36), Vector2(1, 3)], [Vector2(4, 37), Vector2(1, 1)], [Vector2(5, 38), Vector2(1, 10)], [Vector2(4, 43), Vector2(1, 4)], [Vector2(10, 45), Vector2(1, 3)]],
		1 : [[Vector2(4, 0), Vector2(7, 1)], [Vector2(5, 1), Vector2(6, 2)], [Vector2(2, 2), Vector2(1, 1)], [Vector2(12, 2), Vector2(1, 1)], [Vector2(3, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(4, 2)], [Vector2(10, 3), Vector2(1, 3)], [Vector2(6, 5), Vector2(3, 5)], [Vector2(9, 6), Vector2(1, 14)], [Vector2(5, 9), Vector2(1, 2)], [Vector2(10, 9), Vector2(1, 7)], [Vector2(7, 10), Vector2(2, 3)], [Vector2(4, 11), Vector2(1, 1)], [Vector2(3, 12), Vector2(1, 3)], [Vector2(11, 12), Vector2(1, 2)], [Vector2(8, 13), Vector2(1, 9)], [Vector2(4, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 23)], [Vector2(5, 16), Vector2(1, 2)], [Vector2(6, 17), Vector2(1, 31)], [Vector2(10, 20), Vector2(1, 3)], [Vector2(5, 21), Vector2(1, 10)], [Vector2(11, 23), Vector2(1, 3)], [Vector2(4, 26), Vector2(1, 2)], [Vector2(10, 26), Vector2(1, 1)], [Vector2(9, 27), Vector2(1, 2)], [Vector2(8, 28), Vector2(1, 17)], [Vector2(9, 33), Vector2(1, 9)], [Vector2(5, 35), Vector2(1, 2)], [Vector2(7, 40), Vector2(1, 8)], [Vector2(9, 44), Vector2(1, 3)], [Vector2(5, 45), Vector2(1, 3)], [Vector2(8, 47), Vector2(1, 1)], [Vector2(10, 47), Vector2(1, 1)]],
		2 : [[Vector2(4, 0), Vector2(6, 1)], [Vector2(5, 1), Vector2(6, 2)], [Vector2(5, 3), Vector2(4, 3)], [Vector2(2, 4), Vector2(1, 1)], [Vector2(5, 6), Vector2(3, 5)], [Vector2(4, 9), Vector2(1, 7)], [Vector2(8, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(2, 9)], [Vector2(3, 12), Vector2(1, 2)], [Vector2(9, 13), Vector2(1, 3)], [Vector2(7, 15), Vector2(1, 7)], [Vector2(8, 16), Vector2(1, 22)], [Vector2(5, 20), Vector2(1, 1)], [Vector2(4, 21), Vector2(1, 4)], [Vector2(9, 21), Vector2(1, 6)], [Vector2(7, 23), Vector2(1, 14)], [Vector2(10, 24), Vector2(1, 3)], [Vector2(5, 25), Vector2(2, 4)], [Vector2(9, 28), Vector2(1, 3)], [Vector2(6, 29), Vector2(1, 2)], [Vector2(6, 32), Vector2(1, 8)], [Vector2(5, 34), Vector2(1, 12)], [Vector2(4, 37), Vector2(1, 6)], [Vector2(9, 38), Vector2(1, 8)], [Vector2(3, 39), Vector2(1, 4)], [Vector2(2, 41), Vector2(1, 2)], [Vector2(6, 41), Vector2(1, 7)], [Vector2(7, 43), Vector2(1, 5)], [Vector2(8, 46), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/blocks/alien/barrier"
	},
	"barrier_emitter" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		1 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		2 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(15, 5)], [Vector2(2, 7), Vector2(14, 5)], [Vector2(1, 12), Vector2(14, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		3 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		4 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		5 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		6 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(0, 2), Vector2(15, 5)], [Vector2(0, 7), Vector2(14, 5)], [Vector2(1, 12), Vector2(14, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		7 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		8 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		9 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]],
		10 : [[Vector2(0, 0), Vector2(16, 2)], [Vector2(1, 2), Vector2(14, 5)], [Vector2(2, 7), Vector2(12, 7)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(3, 14), Vector2(10, 1)], [Vector2(4, 15), Vector2(8, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/blocks/alien/barrier_emitter"
	},
	"altar_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/altars/altar_left"
	},
	"altar_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/altars/altar_right"
	},
	"sac_altar" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(32, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/altars/sac_altar"
	},
	"sac_altar_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/altars/sac_altar_left"
	},
	"sac_altar_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/altars/sac_altar_right"
	},
	"skull_block" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/altars/skull_block"
	},
	"cave_bg" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 32)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/cave_bg"
	},
	"cave_bg1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(1, 1)], [Vector2(1, 1), Vector2(2, 1)], [Vector2(2, 2), Vector2(3, 1)], [Vector2(4, 3), Vector2(3, 1)], [Vector2(5, 4), Vector2(4, 1)], [Vector2(6, 5), Vector2(4, 1)], [Vector2(7, 6), Vector2(4, 1)], [Vector2(8, 7), Vector2(6, 2)], [Vector2(14, 8), Vector2(2, 23)], [Vector2(9, 9), Vector2(5, 9)], [Vector2(16, 9), Vector2(5, 20)], [Vector2(21, 10), Vector2(1, 18)], [Vector2(22, 12), Vector2(1, 16)], [Vector2(31, 13), Vector2(1, 2)], [Vector2(8, 14), Vector2(1, 3)], [Vector2(30, 14), Vector2(1, 2)], [Vector2(29, 15), Vector2(1, 2)], [Vector2(23, 16), Vector2(2, 12)], [Vector2(27, 16), Vector2(2, 3)], [Vector2(25, 17), Vector2(2, 9)], [Vector2(3, 18), Vector2(3, 7)], [Vector2(10, 18), Vector2(4, 1)], [Vector2(2, 19), Vector2(1, 3)], [Vector2(6, 19), Vector2(1, 7)], [Vector2(12, 19), Vector2(2, 1)], [Vector2(27, 19), Vector2(1, 3)], [Vector2(7, 20), Vector2(1, 6)], [Vector2(13, 20), Vector2(1, 1)], [Vector2(8, 21), Vector2(1, 4)], [Vector2(4, 25), Vector2(2, 1)], [Vector2(13, 26), Vector2(1, 5)], [Vector2(25, 26), Vector2(1, 1)], [Vector2(12, 28), Vector2(1, 2)], [Vector2(16, 29), Vector2(3, 1)], [Vector2(16, 30), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/cave_bg1"
	},
	"cave_bg2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 1), Vector2(4, 2)], [Vector2(22, 1), Vector2(4, 24)], [Vector2(5, 2), Vector2(2, 23)], [Vector2(21, 2), Vector2(1, 25)], [Vector2(26, 2), Vector2(1, 8)], [Vector2(3, 3), Vector2(2, 8)], [Vector2(7, 3), Vector2(3, 27)], [Vector2(12, 3), Vector2(4, 26)], [Vector2(20, 3), Vector2(1, 24)], [Vector2(27, 3), Vector2(1, 8)], [Vector2(10, 4), Vector2(2, 24)], [Vector2(16, 4), Vector2(2, 25)], [Vector2(28, 4), Vector2(1, 7)], [Vector2(2, 5), Vector2(1, 5)], [Vector2(18, 5), Vector2(1, 23)], [Vector2(19, 6), Vector2(1, 22)], [Vector2(29, 6), Vector2(1, 4)], [Vector2(0, 11), Vector2(2, 4)], [Vector2(26, 11), Vector2(1, 18)], [Vector2(2, 12), Vector2(1, 4)], [Vector2(4, 12), Vector2(1, 19)], [Vector2(27, 12), Vector2(1, 17)], [Vector2(30, 12), Vector2(2, 6)], [Vector2(29, 13), Vector2(1, 3)], [Vector2(28, 14), Vector2(1, 7)], [Vector2(1, 15), Vector2(1, 1)], [Vector2(3, 19), Vector2(1, 8)], [Vector2(2, 20), Vector2(1, 6)], [Vector2(1, 21), Vector2(1, 4)], [Vector2(28, 22), Vector2(2, 6)], [Vector2(30, 23), Vector2(1, 3)], [Vector2(5, 25), Vector2(1, 1)], [Vector2(24, 25), Vector2(2, 5)], [Vector2(6, 26), Vector2(1, 3)], [Vector2(23, 26), Vector2(1, 4)], [Vector2(5, 27), Vector2(1, 3)], [Vector2(22, 27), Vector2(1, 2)], [Vector2(2, 28), Vector2(2, 2)], [Vector2(10, 28), Vector2(1, 1)], [Vector2(3, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/cave_bg2"
	},
	"cave_bg_entrance" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(15, 16)], [Vector2(0, 2), Vector2(1, 6)], [Vector2(0, 10), Vector2(1, 5)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/cave_bg_entrance"
	},
	"entrance" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/entrance"
	},
	"exit" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/exit"
	},
	"gold_door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/gold_door"
	},
	"msg_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 15)], [Vector2(6, 15), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/background/msg_sign"
	},
	"dark" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark"
	},
	"dark_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 1)], [Vector2(2, 1), Vector2(2, 1)], [Vector2(6, 1), Vector2(4, 1)], [Vector2(11, 1), Vector2(2, 1)], [Vector2(15, 1), Vector2(1, 1)], [Vector2(7, 2), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_bottom"
	},
	"dark_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_down"
	},
	"dark_fall" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(14, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(15, 1), Vector2(1, 6)], [Vector2(2, 8), Vector2(6, 1)], [Vector2(9, 8), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_fall"
	},
	"dark_gold" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_gold"
	},
	"dark_gold_big" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_gold_big"
	},
	"dark_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(15, 0), Vector2(1, 16)], [Vector2(14, 2), Vector2(1, 4)], [Vector2(13, 3), Vector2(1, 2)], [Vector2(14, 9), Vector2(1, 3)], [Vector2(14, 13), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_left"
	},
	"dark_plat" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_plat"
	},
	"dark_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(1, 15)], [Vector2(1, 1), Vector2(1, 4)], [Vector2(2, 2), Vector2(1, 2)], [Vector2(1, 8), Vector2(1, 3)], [Vector2(1, 12), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_right"
	},
	"dark_smooth" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_smooth"
	},
	"dark_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 13), Vector2(3, 3)], [Vector2(0, 14), Vector2(1, 2)], [Vector2(6, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(1, 2)], [Vector2(12, 14), Vector2(2, 2)], [Vector2(15, 14), Vector2(1, 2)], [Vector2(1, 15), Vector2(5, 1)], [Vector2(11, 15), Vector2(1, 1)], [Vector2(14, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_top"
	},
	"dark_top2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 11), Vector2(3, 5)], [Vector2(4, 12), Vector2(1, 4)], [Vector2(8, 12), Vector2(1, 4)], [Vector2(3, 13), Vector2(1, 3)], [Vector2(9, 13), Vector2(1, 3)], [Vector2(0, 14), Vector2(1, 2)], [Vector2(2, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(4, 2)], [Vector2(15, 14), Vector2(1, 2)], [Vector2(1, 15), Vector2(1, 1)], [Vector2(14, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_top2"
	},
	"dark_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_up"
	},
	"dark_up2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/dark_up2"
	},
	"ice" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice"
	},
	"ice_block" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_block"
	},
	"ice_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 2)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_bottom"
	},
	"ice_bottom2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(15, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_bottom2"
	},
	"ice_caveman" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_caveman"
	},
	"ice_dl" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_dl"
	},
	"ice_dlr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_dlr"
	},
	"ice_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_down"
	},
	"ice_dr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_dr"
	},
	"ice_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_left"
	},
	"ice_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_lr"
	},
	"ice_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_right"
	},
	"ice_udl" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_udl"
	},
	"ice_udr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_udr"
	},
	"ice_ul" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_ul"
	},
	"ice_ulr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_ulr"
	},
	"ice_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_up"
	},
	"ice_up2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_up2"
	},
	"ice_ur" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/ice_ur"
	},
	"moai" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 64)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 64)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/moai"
	},
	"moai2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/moai2"
	},
	"moai3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 64)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 64)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/moai3"
	},
	"moai_inside" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 48)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 48)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/moai_inside"
	},
	"thin_ice1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/thin_ice1"
	},
	"thin_ice2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/thin_ice2"
	},
	"thin_ice3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/thin_ice3"
	},
	"thin_ice4" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 7)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/thin_ice4"
	},
	"thin_ice5" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 6)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/thin_ice5"
	},
	"thin_ice6" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/dark/thin_ice6"
	},
	"gold" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(13, 14)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/gold/gold"
	},
	"gold_big" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(15, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/gold/gold_big"
	},
	"gold_block" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/gold/gold_block"
	},
	"lady_xoc" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(80, 96)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(78, 95)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/gold/lady_xoc"
	},
	"grave" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave"
	},
	"grave2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave2"
	},
	"grave3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave3"
	},
	"grave4" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave4"
	},
	"grave5" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave5"
	},
	"grave6" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave6"
	},
	"grave_ash" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/graves/grave_ash"
	},
	"ladder" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/ladders/ladder"
	},
	"ladder_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/ladders/ladder_top"
	},
	"vine" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(13, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/ladders/vine"
	},
	"vine_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(3, 0), Vector2(9, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/ladders/vine_bottom"
	},
	"vine_source" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/ladders/vine_source"
	},
	"vine_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/ladders/vine_top"
	},
	"leaves" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(1, 14), Vector2(2, 1)], [Vector2(4, 14), Vector2(4, 1)], [Vector2(9, 14), Vector2(2, 1)], [Vector2(12, 14), Vector2(4, 1)], [Vector2(5, 15), Vector2(2, 1)], [Vector2(13, 15), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/leaves"
	},
	"leaves_dead" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 11)], [Vector2(0, 11), Vector2(6, 3)], [Vector2(8, 11), Vector2(5, 1)], [Vector2(7, 12), Vector2(5, 2)], [Vector2(6, 13), Vector2(1, 2)], [Vector2(0, 14), Vector2(2, 1)], [Vector2(3, 14), Vector2(3, 1)], [Vector2(7, 14), Vector2(2, 2)], [Vector2(10, 14), Vector2(2, 1)], [Vector2(1, 15), Vector2(1, 1)], [Vector2(4, 15), Vector2(1, 1)], [Vector2(10, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/leaves_dead"
	},
	"leaves_dead_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 11)], [Vector2(3, 11), Vector2(5, 1)], [Vector2(10, 11), Vector2(6, 3)], [Vector2(4, 12), Vector2(5, 2)], [Vector2(9, 13), Vector2(1, 2)], [Vector2(4, 14), Vector2(2, 1)], [Vector2(7, 14), Vector2(2, 2)], [Vector2(10, 14), Vector2(3, 1)], [Vector2(14, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(1, 1)], [Vector2(14, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/leaves_dead_r"
	},
	"leaves_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(0, 14), Vector2(4, 1)], [Vector2(5, 14), Vector2(2, 1)], [Vector2(8, 14), Vector2(4, 1)], [Vector2(13, 14), Vector2(2, 1)], [Vector2(1, 15), Vector2(2, 1)], [Vector2(9, 15), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/leaves_right"
	},
	"leaves_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 14)], [Vector2(1, 14), Vector2(2, 1)], [Vector2(4, 14), Vector2(4, 1)], [Vector2(9, 14), Vector2(2, 1)], [Vector2(13, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/leaves_top"
	},
	"lush" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush"
	},
	"lush_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 2)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_bottom"
	},
	"lush_bottom2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_bottom2"
	},
	"lush_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_down"
	},
	"lush_gold" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_gold"
	},
	"lush_gold_big" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_gold_big"
	},
	"lush_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(13, 0), Vector2(3, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_left"
	},
	"lush_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(3, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_right"
	},
	"lush_smooth" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_smooth"
	},
	"lush_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(0, 11), Vector2(16, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_top"
	},
	"lush_top2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(0, 9), Vector2(16, 7)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_top2"
	},
	"lush_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_up"
	},
	"lush_up2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_up2"
	},
	"lush_up3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/lush_up3"
	},
	"tiki_torch" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 32)],
			"collision_rectangles" : [Vector2(5, 0), Vector2(6, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tiki_torch"
	},
	"tree_branch_dead_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_branch_dead_l"
	},
	"tree_branch_dead_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_branch_dead_r"
	},
	"tree_branch_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_branch_left"
	},
	"tree_branch_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_branch_right"
	},
	"tree_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_top"
	},
	"tree_top_dead" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_top_dead"
	},
	"tree_trunk" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/lush/tree_trunk"
	},
	"block" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/block"
	},
	"brick" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/brick"
	},
	"brick2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/brick2"
	},
	"brick_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/brick_down"
	},
	"brick_gold" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/brick_gold"
	},
	"brick_gold_big" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/brick_gold_big"
	},
	"cave_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 3)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_bottom"
	},
	"cave_bottom_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_bottom_l"
	},
	"cave_bottom_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_bottom_r"
	},
	"cave_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(13, 0), Vector2(3, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_left"
	},
	"cave_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(3, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_right"
	},
	"cave_smooth" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_smooth"
	},
	"cave_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(0, 13), Vector2(16, 3)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_top"
	},
	"cave_top2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(0, 11), Vector2(16, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_top2"
	},
	"cave_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_up"
	},
	"cave_up2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/mines/cave_up2"
	},
	"lamp" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/lamp"
	},
	"lamp_red" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/lamp_red"
	},
	"sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign"
	},
	"sign_bomb" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_bomb"
	},
	"sign_clothing" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_clothing"
	},
	"sign_craps" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_craps"
	},
	"sign_general" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_general"
	},
	"sign_kissing" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_kissing"
	},
	"sign_rare" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_rare"
	},
	"sign_weapon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/shop/sign_weapon"
	},
	"button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 11), Vector2(12, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/button"
	},
	"button_pushed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 13), Vector2(12, 3)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/button_pushed"
	},
	"g_temple" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple"
	},
	"g_temple_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_down"
	},
	"g_temple_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up"
	},
	"g_temple_up2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up2"
	},
	"g_temple_up3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up3"
	},
	"g_temple_up4" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up4"
	},
	"g_temple_up5" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up5"
	},
	"g_temple_up6" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up6"
	},
	"g_temple_up7" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up7"
	},
	"g_temple_up8" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/g_temple_up8"
	},
	"temple" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple"
	},
	"temple_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 3)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_bottom"
	},
	"temple_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_down"
	},
	"temple_gold" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_gold"
	},
	"temple_gold_big" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_gold_big"
	},
	"temple_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(14, 0), Vector2(2, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_left"
	},
	"temple_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(2, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_right"
	},
	"temple_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(3, 13), Vector2(11, 3)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_top"
	},
	"temple_top2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(3, 14), Vector2(7, 2)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_top2"
	},
	"temple_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up"
	},
	"temple_up2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up2"
	},
	"temple_up3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up3"
	},
	"temple_up4" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up4"
	},
	"temple_up5" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up5"
	},
	"temple_up6" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up6"
	},
	"temple_up7" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up7"
	},
	"temple_up8" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/temple/temple_up8"
	},
	"lava" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/lava"
	},
	"lava_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/lava_top"
	},
	"water" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water"
	},
	"water_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_bottom"
	},
	"water_bottom2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_bottom2"
	},
	"water_bottom3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_bottom3"
	},
	"water_bottom4" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_bottom4"
	},
	"water_bottom_tall1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_bottom_tall1"
	},
	"water_bottom_tall2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_bottom_tall2"
	},
	"water_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/blocks/water/water_top"
	},
	"tunnel_man_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel_man_left"
	},
	"tunnel_man_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel_man_right"
	},
	"yell_help" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(12, 13)], [Vector2(1, 1), Vector2(1, 11)], [Vector2(14, 1), Vector2(1, 11)], [Vector2(0, 2), Vector2(1, 9)], [Vector2(15, 2), Vector2(1, 9)], [Vector2(7, 13), Vector2(3, 2)], [Vector2(8, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/yell_help"
	},
	"damsel_attack_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_attack_l"
	},
	"damsel_bounce_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(15, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_bounce_l"
	},
	"damsel_climb" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_climb"
	},
	"damsel_climb2" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(0, 5), Vector2(16, 19)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_climb2"
	},
	"damsel_climb3" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(0, 5), Vector2(16, 19)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_climb3"
	},
	"damsel_crawl_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 4), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_crawl_l"
	},
	"damsel_die_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_die_l"
	},
	"damsel_die_ll" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(13, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_die_ll"
	},
	"damsel_die_lr" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(13, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_die_lr"
	},
	"damsel_dt_hl" : {
		"origin" : Vector2(24, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(7, 0), Vector2(25, 29)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_dt_hl"
	},
	"damsel_duck_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_duck_l"
	},
	"damsel_exit" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_exit"
	},
	"damsel_exit2" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_exit2"
	},
	"damsel_fall_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 5), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_fall_l"
	},
	"damsel_hang_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(13, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_hang_l"
	},
	"damsel_hold_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(13, 14)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_hold_l"
	},
	"damsel_kiss_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_kiss_l"
	},
	"damsel_kiss_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_kiss_r"
	},
	"damsel_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_left"
	},
	"damsel_left_ico" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_left_ico"
	},
	"damsel_look_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_look_l"
	},
	"damsel_push_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_push_l"
	},
	"damsel_run_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_run_l"
	},
	"damsel_stun_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_stun_l"
	},
	"damsel_whoa_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_whoa_l"
	},
	"damsel_yell_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_yell_l"
	},
	"damsel_yell_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/damsel_yell_r"
	},
	"wal_damsel" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 48)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(48, 48)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/damsel/wal_damsel"
	},
	"attack_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/attack_left"
	},
	"climb_up" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/climb_up"
	},
	"climb_up2" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 18)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/climb_up2"
	},
	"climb_up3" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 18)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/climb_up3"
	},
	"crawl_left" : {
		"origin" : Vector2(9, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(20, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(18, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/crawl_left"
	},
	"die_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 7), Vector2(14, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/die_l"
	},
	"die_l_bounce" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(15, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/die_l_bounce"
	},
	"die_l_fall" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/die_l_fall"
	},
	"die_ll" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(13, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/die_ll"
	},
	"die_lr" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/die_lr"
	},
	"duck_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 7), Vector2(14, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/duck_left"
	},
	"duck_to_hang_l" : {
		"origin" : Vector2(24, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(8, 1), Vector2(24, 28)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/duck_to_hang_l"
	},
	"fall_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/fall_left"
	},
	"hang_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/hang_left"
	},
	"jump_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/jump_left"
	},
	"look_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/look_left"
	},
	"look_run_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/look_run_l"
	},
	"p_exit" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/p_exit"
	},
	"p_kiss_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/p_kiss_l"
	},
	"p_kiss_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/p_kiss_r"
	},
	"push_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/push_left"
	},
	"run_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/run_left"
	},
	"stand_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/stand_left"
	},
	"stand_left_ico" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/stand_left_ico"
	},
	"stun_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/stun_l"
	},
	"throw_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/throw_left"
	},
	"whoa_left" : {
		"origin" : Vector2(12, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : [Vector2(3, 6), Vector2(18, 18)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/whoa_left"
	},
	"yell_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/yell_left"
	},
	"yell_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/main dude/yell_right"
	},
	"tunnel_attack_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(8, 13)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 7)], [Vector2(13, 2), Vector2(1, 5)], [Vector2(3, 9), Vector2(1, 4)], [Vector2(12, 9), Vector2(1, 3)], [Vector2(2, 10), Vector2(1, 2)], [Vector2(4, 13), Vector2(7, 2)], [Vector2(4, 15), Vector2(3, 1)], [Vector2(8, 15), Vector2(3, 1)]],
		1 : [[Vector2(4, 0), Vector2(8, 14)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 7)], [Vector2(13, 2), Vector2(1, 5)], [Vector2(2, 9), Vector2(2, 4)], [Vector2(12, 9), Vector2(2, 4)], [Vector2(1, 10), Vector2(1, 1)], [Vector2(14, 10), Vector2(1, 2)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(4, 14), Vector2(3, 1)], [Vector2(8, 14), Vector2(4, 1)], [Vector2(9, 15), Vector2(3, 1)]],
		2 : [[Vector2(3, 0), Vector2(8, 11)], [Vector2(2, 1), Vector2(1, 10)], [Vector2(11, 1), Vector2(1, 14)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(0, 7), Vector2(2, 4)], [Vector2(13, 8), Vector2(1, 2)], [Vector2(5, 11), Vector2(6, 1)], [Vector2(13, 11), Vector2(1, 3)], [Vector2(6, 12), Vector2(3, 3)], [Vector2(10, 12), Vector2(1, 3)], [Vector2(5, 14), Vector2(1, 1)], [Vector2(6, 15), Vector2(2, 1)]],
		3 : [[Vector2(4, 0), Vector2(8, 14)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 7)], [Vector2(13, 2), Vector2(1, 5)], [Vector2(2, 9), Vector2(2, 4)], [Vector2(12, 9), Vector2(2, 4)], [Vector2(1, 10), Vector2(1, 1)], [Vector2(14, 10), Vector2(1, 2)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(4, 14), Vector2(3, 1)], [Vector2(8, 14), Vector2(4, 1)], [Vector2(9, 15), Vector2(3, 1)]],
		4 : [[Vector2(5, 0), Vector2(8, 13)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(13, 1), Vector2(1, 7)], [Vector2(14, 2), Vector2(1, 5)], [Vector2(3, 10), Vector2(2, 4)], [Vector2(2, 11), Vector2(1, 2)], [Vector2(5, 13), Vector2(6, 1)], [Vector2(4, 14), Vector2(2, 1)], [Vector2(7, 14), Vector2(4, 1)], [Vector2(8, 15), Vector2(3, 1)]],
		5 : [[Vector2(6, 0), Vector2(8, 10)], [Vector2(5, 1), Vector2(1, 6)], [Vector2(14, 1), Vector2(1, 9)], [Vector2(15, 2), Vector2(1, 7)], [Vector2(3, 9), Vector2(3, 5)], [Vector2(2, 10), Vector2(1, 3)], [Vector2(6, 10), Vector2(6, 3)], [Vector2(6, 13), Vector2(5, 1)], [Vector2(7, 14), Vector2(4, 1)], [Vector2(8, 15), Vector2(3, 1)]],
		6 : [[Vector2(5, 0), Vector2(8, 13)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(13, 1), Vector2(1, 7)], [Vector2(14, 2), Vector2(1, 5)], [Vector2(3, 10), Vector2(2, 4)], [Vector2(2, 11), Vector2(1, 2)], [Vector2(5, 13), Vector2(6, 1)], [Vector2(4, 14), Vector2(2, 1)], [Vector2(7, 14), Vector2(4, 1)], [Vector2(8, 15), Vector2(3, 1)]],
		7 : [[Vector2(3, 0), Vector2(8, 11)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(11, 1), Vector2(1, 15)], [Vector2(12, 2), Vector2(1, 9)], [Vector2(1, 7), Vector2(1, 5)], [Vector2(0, 8), Vector2(1, 3)], [Vector2(2, 8), Vector2(1, 4)], [Vector2(13, 8), Vector2(1, 2)], [Vector2(4, 11), Vector2(7, 1)], [Vector2(5, 12), Vector2(6, 1)], [Vector2(12, 12), Vector2(2, 2)], [Vector2(5, 13), Vector2(3, 3)], [Vector2(9, 13), Vector2(2, 3)], [Vector2(4, 14), Vector2(1, 1)], [Vector2(12, 14), Vector2(1, 1)]],
		8 : [[Vector2(3, 0), Vector2(8, 11)], [Vector2(2, 1), Vector2(1, 10)], [Vector2(11, 1), Vector2(1, 14)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(0, 7), Vector2(2, 4)], [Vector2(13, 8), Vector2(1, 2)], [Vector2(5, 11), Vector2(6, 1)], [Vector2(13, 11), Vector2(1, 3)], [Vector2(6, 12), Vector2(3, 3)], [Vector2(10, 12), Vector2(1, 3)], [Vector2(5, 14), Vector2(1, 1)], [Vector2(6, 15), Vector2(2, 1)]],
		9 : [[Vector2(3, 0), Vector2(8, 11)], [Vector2(2, 1), Vector2(1, 10)], [Vector2(11, 1), Vector2(1, 14)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(0, 7), Vector2(2, 4)], [Vector2(13, 8), Vector2(1, 2)], [Vector2(5, 11), Vector2(6, 1)], [Vector2(13, 11), Vector2(1, 3)], [Vector2(6, 12), Vector2(3, 3)], [Vector2(10, 12), Vector2(1, 3)], [Vector2(5, 14), Vector2(1, 1)], [Vector2(6, 15), Vector2(2, 1)]],
		10 : [[Vector2(3, 0), Vector2(8, 11)], [Vector2(2, 1), Vector2(1, 10)], [Vector2(11, 1), Vector2(1, 14)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(0, 7), Vector2(2, 4)], [Vector2(13, 8), Vector2(1, 2)], [Vector2(5, 11), Vector2(6, 1)], [Vector2(13, 11), Vector2(1, 3)], [Vector2(6, 12), Vector2(3, 3)], [Vector2(10, 12), Vector2(1, 3)], [Vector2(5, 14), Vector2(1, 1)], [Vector2(6, 15), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/character/tunnel man/tunnel_attack_l"
	},
	"tunnel_climb" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_climb"
	},
	"tunnel_climb2" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(0, 5), Vector2(16, 19)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_climb2"
	},
	"tunnel_climb3" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(0, 5), Vector2(16, 19)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_climb3"
	},
	"tunnel_crawl_l" : {
		"origin" : Vector2(9, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(20, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(18, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_crawl_l"
	},
	"tunnel_die_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 7), Vector2(14, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_die_l"
	},
	"tunnel_die_ll" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_die_ll"
	},
	"tunnel_die_lr" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(13, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_die_lr"
	},
	"tunnel_dt_hl" : {
		"origin" : Vector2(24, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(8, 1), Vector2(24, 28)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_dt_hl"
	},
	"tunnel_duck_l" : {
		"origin" : Vector2(9, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 7), Vector2(8, 9)], [Vector2(1, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)], [Vector2(11, 9), Vector2(1, 7)], [Vector2(12, 12), Vector2(1, 4)], [Vector2(13, 13), Vector2(1, 3)], [Vector2(14, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_duck_l"
	},
	"tunnel_exit" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_exit"
	},
	"tunnel_fall_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_fall_l"
	},
	"tunnel_hang_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_hang_l"
	},
	"tunnel_jump_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_jump_l"
	},
	"tunnel_l_bounce" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(15, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_l_bounce"
	},
	"tunnel_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_left"
	},
	"tunnel_l_fall" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_l_fall"
	},
	"tunnel_look_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_look_l"
	},
	"tunnel_look_run_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_look_run_l"
	},
	"tunnel_push_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_push_l"
	},
	"tunnel_run_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_run_l"
	},
	"tunnel_stun_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_stun_l"
	},
	"tunnel_whoa_l" : {
		"origin" : Vector2(12, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : [Vector2(4, 6), Vector2(17, 18)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/character/tunnel man/tunnel_whoa_l"
	},
	"big_collect" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 0), Vector2(2, 14)], [Vector2(6, 2), Vector2(2, 14)], [Vector2(10, 2), Vector2(2, 4)], [Vector2(5, 3), Vector2(1, 6)], [Vector2(4, 4), Vector2(1, 4)], [Vector2(10, 7), Vector2(1, 6)], [Vector2(11, 8), Vector2(1, 4)], [Vector2(4, 10), Vector2(2, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/big_collect"
	},
	"blood" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 1), Vector2(3, 4)], [Vector2(1, 2), Vector2(1, 2)], [Vector2(5, 2), Vector2(1, 3)], [Vector2(3, 5), Vector2(2, 1)]],
		1 : [[Vector2(2, 1), Vector2(3, 5)], [Vector2(1, 2), Vector2(1, 3)], [Vector2(5, 2), Vector2(1, 3)]],
		2 : [[Vector2(3, 2), Vector2(3, 4)], [Vector2(2, 3), Vector2(1, 3)], [Vector2(6, 3), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/blood"
	},
	"blood_spark" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(2, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)]],
		1 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]],
		2 : [[Vector2(1, 2), Vector2(6, 5)], [Vector2(0, 3), Vector2(1, 3)], [Vector2(7, 3), Vector2(1, 3)]],
		3 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)]],
		4 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)]],
		5 : [[Vector2(3, 1), Vector2(3, 6)]],
		6 : [[Vector2(4, 1), Vector2(1, 4)], [Vector2(3, 2), Vector2(1, 2)], [Vector2(5, 2), Vector2(1, 2)]],
		7 : [[Vector2(4, 1), Vector2(1, 3)], [Vector2(3, 2), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 1)]],
		8 : [[Vector2(3, 0), Vector2(3, 3)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/blood_spark"
	},
	"blood_trail" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 1), Vector2(3, 4)], [Vector2(1, 2), Vector2(1, 2)], [Vector2(5, 2), Vector2(1, 3)], [Vector2(3, 5), Vector2(2, 1)]],
		1 : [[Vector2(2, 1), Vector2(3, 4)], [Vector2(0, 2), Vector2(2, 2)], [Vector2(5, 2), Vector2(1, 3)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(3, 5), Vector2(2, 1)]],
		2 : [[Vector2(2, 1), Vector2(3, 5)], [Vector2(1, 2), Vector2(1, 3)], [Vector2(5, 2), Vector2(1, 3)], [Vector2(0, 3), Vector2(1, 2)]],
		3 : [[Vector2(3, 1), Vector2(2, 5)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]],
		4 : [[Vector2(2, 2), Vector2(4, 2)], [Vector2(1, 3), Vector2(1, 1)], [Vector2(2, 4), Vector2(3, 1)]],
		5 : [[Vector2(2, 3), Vector2(3, 2)]],
		6 : [[Vector2(3, 3), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/blood_trail"
	},
	"bone" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(2, 4)], [Vector2(3, 1), Vector2(1, 5)], [Vector2(6, 1), Vector2(1, 2)], [Vector2(2, 3), Vector2(1, 4)], [Vector2(4, 4), Vector2(1, 1)], [Vector2(1, 5), Vector2(1, 2)]],
		1 : [[Vector2(3, 0), Vector2(2, 6)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 3)], [Vector2(3, 6), Vector2(1, 1)]],
		2 : [[Vector2(1, 1), Vector2(2, 4)], [Vector2(0, 2), Vector2(1, 2)], [Vector2(3, 2), Vector2(1, 4)], [Vector2(4, 3), Vector2(1, 3)], [Vector2(5, 4), Vector2(1, 3)], [Vector2(6, 5), Vector2(1, 2)]],
		3 : [[Vector2(1, 2), Vector2(3, 4)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(4, 3), Vector2(2, 3)], [Vector2(6, 4), Vector2(1, 2)]],
		4 : [[Vector2(5, 1), Vector2(2, 2)], [Vector2(4, 2), Vector2(1, 5)], [Vector2(3, 3), Vector2(1, 5)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(2, 4), Vector2(1, 4)], [Vector2(1, 5), Vector2(1, 2)]],
		5 : [[Vector2(4, 1), Vector2(2, 6)], [Vector2(3, 2), Vector2(1, 6)], [Vector2(2, 4), Vector2(1, 3)], [Vector2(4, 7), Vector2(1, 1)]],
		6 : [[Vector2(1, 1), Vector2(2, 2)], [Vector2(3, 2), Vector2(2, 3)], [Vector2(2, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(2, 4)], [Vector2(7, 4), Vector2(1, 2)], [Vector2(4, 5), Vector2(1, 1)]],
		7 : [[Vector2(1, 2), Vector2(6, 2)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(2, 4), Vector2(5, 1)], [Vector2(4, 5), Vector2(3, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/bone"
	},
	"bubble" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(2, 2)]],
		1 : [[Vector2(3, 2), Vector2(2, 1)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(3, 5), Vector2(2, 1)]],
		2 : [[Vector2(3, 1), Vector2(2, 1)], [Vector2(2, 2), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 1)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(2, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(3, 6), Vector2(2, 1)]],
		3 : [[Vector2(2, 1), Vector2(2, 1)], [Vector2(1, 2), Vector2(1, 1)], [Vector2(4, 2), Vector2(1, 1)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(1, 5), Vector2(1, 1)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(2, 1)]],
		4 : [[Vector2(3, 1), Vector2(2, 1)], [Vector2(2, 2), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 1)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(2, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(3, 6), Vector2(2, 1)]],
		5 : [[Vector2(4, 1), Vector2(2, 1)], [Vector2(3, 2), Vector2(1, 1)], [Vector2(6, 2), Vector2(1, 1)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(6, 5), Vector2(1, 1)], [Vector2(4, 6), Vector2(2, 1)]],
		6 : [[Vector2(3, 1), Vector2(2, 1)], [Vector2(2, 2), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 1)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(2, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(3, 6), Vector2(2, 1)]],
		7 : [[Vector2(4, 1), Vector2(1, 2)], [Vector2(1, 3), Vector2(2, 1)], [Vector2(5, 4), Vector2(2, 1)], [Vector2(3, 5), Vector2(1, 2)]],
		8 : [[Vector2(4, 1), Vector2(1, 1)], [Vector2(1, 3), Vector2(1, 1)], [Vector2(6, 4), Vector2(1, 1)], [Vector2(3, 6), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/bubble"
	},
	"bullet" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(2, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/bullet"
	},
	"burn" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(1, 12)], [Vector2(2, 3), Vector2(1, 10)], [Vector2(4, 3), Vector2(1, 11)], [Vector2(1, 4), Vector2(1, 8)], [Vector2(5, 4), Vector2(1, 9)], [Vector2(0, 5), Vector2(1, 2)], [Vector2(6, 5), Vector2(1, 2)], [Vector2(0, 8), Vector2(1, 3)], [Vector2(6, 8), Vector2(1, 4)]],
		1 : [[Vector2(5, 1), Vector2(1, 11)], [Vector2(2, 2), Vector2(2, 2)], [Vector2(4, 3), Vector2(1, 7)], [Vector2(2, 4), Vector2(1, 1)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(6, 5), Vector2(1, 6)], [Vector2(2, 6), Vector2(1, 9)], [Vector2(1, 7), Vector2(1, 3)], [Vector2(1, 11), Vector2(1, 3)]],
		2 : [[Vector2(3, 1), Vector2(1, 1)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 8)], [Vector2(4, 4), Vector2(1, 7)], [Vector2(3, 5), Vector2(1, 7)], [Vector2(1, 6), Vector2(2, 5)], [Vector2(6, 7), Vector2(1, 3)], [Vector2(2, 11), Vector2(1, 2)], [Vector2(4, 13), Vector2(1, 1)]],
		3 : [[Vector2(4, 1), Vector2(1, 2)], [Vector2(2, 3), Vector2(1, 9)], [Vector2(1, 4), Vector2(1, 7)], [Vector2(3, 4), Vector2(2, 8)], [Vector2(5, 5), Vector2(1, 6)], [Vector2(0, 6), Vector2(1, 3)], [Vector2(6, 6), Vector2(2, 2)], [Vector2(6, 8), Vector2(1, 2)], [Vector2(3, 13), Vector2(1, 1)]],
		4 : [[Vector2(4, 4), Vector2(3, 2)], [Vector2(1, 5), Vector2(3, 2)], [Vector2(0, 6), Vector2(1, 2)], [Vector2(5, 6), Vector2(2, 1)], [Vector2(1, 7), Vector2(2, 1)], [Vector2(4, 8), Vector2(2, 2)], [Vector2(1, 9), Vector2(2, 2)], [Vector2(7, 9), Vector2(1, 1)], [Vector2(3, 10), Vector2(1, 2)], [Vector2(2, 11), Vector2(1, 1)], [Vector2(5, 11), Vector2(1, 1)]],
		5 : [[Vector2(1, 4), Vector2(2, 2)], [Vector2(0, 5), Vector2(1, 2)], [Vector2(5, 5), Vector2(2, 1)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(4, 7), Vector2(2, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(1, 9), Vector2(1, 1)], [Vector2(6, 10), Vector2(1, 2)], [Vector2(3, 11), Vector2(1, 1)]],
		6 : [[Vector2(5, 4), Vector2(1, 2)], [Vector2(1, 5), Vector2(2, 1)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(3, 8), Vector2(1, 2)]],
		7 : [[Vector2(4, 4), Vector2(1, 1)], [Vector2(2, 5), Vector2(1, 1)], [Vector2(3, 6), Vector2(1, 1)]],
		8 : [[Vector2(0, 0), Vector2(0, 0)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/burn"
	},
	"drip" : {
		"origin" : Vector2(1, 1),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(2, 2)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(2, 2)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/drip"
	},
	"explosion" : {
		"origin" : Vector2(24, 24),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(20, 12), Vector2(7, 24)], [Vector2(18, 13), Vector2(2, 22)], [Vector2(27, 13), Vector2(2, 22)], [Vector2(16, 14), Vector2(2, 20)], [Vector2(29, 14), Vector2(2, 20)], [Vector2(15, 15), Vector2(1, 18)], [Vector2(31, 15), Vector2(1, 18)], [Vector2(14, 16), Vector2(1, 16)], [Vector2(32, 16), Vector2(1, 16)], [Vector2(13, 17), Vector2(1, 14)], [Vector2(33, 17), Vector2(1, 14)], [Vector2(12, 18), Vector2(1, 12)], [Vector2(34, 18), Vector2(1, 12)], [Vector2(11, 21), Vector2(1, 6)], [Vector2(35, 21), Vector2(1, 6)]],
		1 : [[Vector2(21, 5), Vector2(6, 38)], [Vector2(17, 6), Vector2(4, 36)], [Vector2(27, 6), Vector2(4, 36)], [Vector2(15, 7), Vector2(2, 34)], [Vector2(31, 7), Vector2(2, 34)], [Vector2(14, 8), Vector2(1, 32)], [Vector2(33, 8), Vector2(1, 32)], [Vector2(12, 9), Vector2(2, 30)], [Vector2(34, 9), Vector2(2, 30)], [Vector2(11, 10), Vector2(1, 28)], [Vector2(36, 10), Vector2(1, 28)], [Vector2(10, 11), Vector2(1, 26)], [Vector2(37, 11), Vector2(1, 26)], [Vector2(9, 12), Vector2(1, 24)], [Vector2(38, 12), Vector2(1, 24)], [Vector2(8, 14), Vector2(1, 20)], [Vector2(39, 14), Vector2(1, 20)], [Vector2(7, 15), Vector2(1, 18)], [Vector2(40, 15), Vector2(1, 18)], [Vector2(6, 17), Vector2(1, 14)], [Vector2(41, 17), Vector2(1, 14)], [Vector2(5, 21), Vector2(1, 6)], [Vector2(42, 21), Vector2(1, 6)]],
		2 : [[Vector2(24, 3), Vector2(1, 41)], [Vector2(20, 5), Vector2(1, 39)], [Vector2(25, 7), Vector2(1, 37)], [Vector2(30, 7), Vector2(1, 37)], [Vector2(23, 8), Vector2(1, 36)], [Vector2(21, 9), Vector2(1, 35)], [Vector2(32, 9), Vector2(1, 2)], [Vector2(19, 10), Vector2(1, 34)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(13, 11), Vector2(1, 30)], [Vector2(22, 11), Vector2(1, 33)], [Vector2(36, 11), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 30)], [Vector2(26, 12), Vector2(1, 32)], [Vector2(29, 12), Vector2(1, 32)], [Vector2(31, 12), Vector2(1, 32)], [Vector2(34, 12), Vector2(2, 29)], [Vector2(12, 13), Vector2(1, 26)], [Vector2(15, 13), Vector2(1, 30)], [Vector2(32, 13), Vector2(2, 30)], [Vector2(6, 14), Vector2(1, 2)], [Vector2(16, 14), Vector2(1, 29)], [Vector2(18, 14), Vector2(1, 30)], [Vector2(7, 15), Vector2(1, 3)], [Vector2(17, 15), Vector2(1, 29)], [Vector2(27, 15), Vector2(2, 29)], [Vector2(40, 15), Vector2(1, 3)], [Vector2(8, 16), Vector2(1, 7)], [Vector2(39, 16), Vector2(1, 20)], [Vector2(9, 17), Vector2(1, 18)], [Vector2(38, 17), Vector2(1, 19)], [Vector2(10, 18), Vector2(1, 18)], [Vector2(36, 18), Vector2(2, 20)], [Vector2(42, 18), Vector2(2, 2)], [Vector2(11, 19), Vector2(1, 17)], [Vector2(40, 19), Vector2(2, 5)], [Vector2(5, 20), Vector2(1, 2)], [Vector2(42, 20), Vector2(1, 2)], [Vector2(6, 21), Vector2(1, 2)], [Vector2(40, 24), Vector2(1, 3)], [Vector2(8, 29), Vector2(1, 6)], [Vector2(40, 29), Vector2(2, 6)], [Vector2(7, 30), Vector2(1, 4)], [Vector2(42, 30), Vector2(1, 4)], [Vector2(36, 38), Vector2(1, 2)], [Vector2(34, 41), Vector2(1, 1)]],
		3 : [[Vector2(12, 3), Vector2(3, 2)], [Vector2(21, 3), Vector2(9, 42)], [Vector2(11, 4), Vector2(1, 2)], [Vector2(15, 4), Vector2(1, 1)], [Vector2(19, 4), Vector2(2, 41)], [Vector2(30, 4), Vector2(2, 40)], [Vector2(10, 5), Vector2(1, 2)], [Vector2(12, 5), Vector2(1, 1)], [Vector2(18, 5), Vector2(1, 40)], [Vector2(32, 5), Vector2(2, 38)], [Vector2(37, 5), Vector2(2, 2)], [Vector2(14, 6), Vector2(4, 36)], [Vector2(34, 6), Vector2(1, 38)], [Vector2(12, 7), Vector2(2, 34)], [Vector2(35, 7), Vector2(1, 37)], [Vector2(10, 8), Vector2(2, 32)], [Vector2(36, 8), Vector2(2, 34)], [Vector2(9, 9), Vector2(1, 30)], [Vector2(38, 9), Vector2(2, 31)], [Vector2(8, 10), Vector2(1, 29)], [Vector2(40, 10), Vector2(1, 29)], [Vector2(7, 12), Vector2(1, 26)], [Vector2(41, 12), Vector2(1, 26)], [Vector2(42, 13), Vector2(1, 21)], [Vector2(6, 14), Vector2(1, 23)], [Vector2(43, 14), Vector2(1, 19)], [Vector2(5, 15), Vector2(1, 21)], [Vector2(3, 16), Vector2(2, 16)], [Vector2(44, 16), Vector2(1, 16)], [Vector2(2, 17), Vector2(1, 13)], [Vector2(45, 17), Vector2(1, 13)], [Vector2(1, 18), Vector2(1, 11)], [Vector2(46, 18), Vector2(1, 11)], [Vector2(0, 19), Vector2(1, 9)], [Vector2(47, 19), Vector2(1, 8)], [Vector2(4, 32), Vector2(1, 2)], [Vector2(5, 39), Vector2(3, 3)], [Vector2(8, 40), Vector2(1, 2)], [Vector2(38, 40), Vector2(1, 1)], [Vector2(40, 41), Vector2(2, 2)], [Vector2(6, 42), Vector2(2, 1)], [Vector2(15, 42), Vector2(3, 1)], [Vector2(36, 42), Vector2(1, 1)], [Vector2(39, 42), Vector2(1, 1)], [Vector2(17, 43), Vector2(1, 1)], [Vector2(33, 43), Vector2(1, 1)], [Vector2(40, 43), Vector2(1, 1)], [Vector2(21, 45), Vector2(7, 1)]],
		4 : [[Vector2(21, 9), Vector2(5, 28)], [Vector2(28, 9), Vector2(2, 28)], [Vector2(19, 10), Vector2(2, 27)], [Vector2(26, 10), Vector2(2, 27)], [Vector2(30, 10), Vector2(2, 25)], [Vector2(17, 11), Vector2(2, 24)], [Vector2(32, 11), Vector2(1, 23)], [Vector2(16, 12), Vector2(1, 22)], [Vector2(33, 12), Vector2(1, 22)], [Vector2(15, 13), Vector2(1, 21)], [Vector2(34, 13), Vector2(1, 20)], [Vector2(14, 14), Vector2(1, 19)], [Vector2(35, 14), Vector2(1, 19)], [Vector2(11, 15), Vector2(2, 15)], [Vector2(10, 16), Vector2(1, 10)], [Vector2(13, 16), Vector2(1, 15)], [Vector2(36, 16), Vector2(2, 14)], [Vector2(38, 18), Vector2(1, 12)], [Vector2(39, 20), Vector2(1, 3)], [Vector2(8, 21), Vector2(2, 5)], [Vector2(7, 22), Vector2(1, 3)], [Vector2(39, 24), Vector2(1, 5)], [Vector2(40, 25), Vector2(1, 4)], [Vector2(10, 27), Vector2(1, 2)], [Vector2(12, 30), Vector2(1, 1)], [Vector2(36, 30), Vector2(1, 2)], [Vector2(18, 35), Vector2(1, 1)], [Vector2(30, 35), Vector2(1, 1)]],
		5 : [[Vector2(19, 5), Vector2(11, 36)], [Vector2(17, 6), Vector2(2, 35)], [Vector2(30, 6), Vector2(1, 36)], [Vector2(15, 7), Vector2(2, 32)], [Vector2(31, 7), Vector2(2, 33)], [Vector2(14, 8), Vector2(1, 30)], [Vector2(33, 8), Vector2(1, 31)], [Vector2(13, 9), Vector2(1, 29)], [Vector2(34, 9), Vector2(1, 29)], [Vector2(35, 10), Vector2(1, 27)], [Vector2(11, 11), Vector2(2, 27)], [Vector2(36, 11), Vector2(1, 25)], [Vector2(10, 12), Vector2(1, 26)], [Vector2(37, 12), Vector2(1, 23)], [Vector2(9, 13), Vector2(1, 19)], [Vector2(38, 13), Vector2(2, 19)], [Vector2(8, 14), Vector2(1, 18)], [Vector2(40, 14), Vector2(1, 17)], [Vector2(7, 15), Vector2(1, 17)], [Vector2(41, 15), Vector2(1, 11)], [Vector2(6, 16), Vector2(1, 15)], [Vector2(42, 18), Vector2(1, 6)], [Vector2(5, 19), Vector2(1, 7)], [Vector2(41, 27), Vector2(1, 3)], [Vector2(38, 32), Vector2(1, 2)], [Vector2(9, 33), Vector2(1, 4)], [Vector2(41, 33), Vector2(1, 1)], [Vector2(38, 36), Vector2(2, 2)], [Vector2(13, 39), Vector2(2, 4)], [Vector2(16, 39), Vector2(1, 1)], [Vector2(12, 40), Vector2(1, 2)], [Vector2(15, 40), Vector2(1, 2)], [Vector2(31, 40), Vector2(1, 1)], [Vector2(19, 41), Vector2(9, 1)], [Vector2(29, 41), Vector2(1, 1)], [Vector2(20, 42), Vector2(7, 1)], [Vector2(21, 43), Vector2(5, 1)], [Vector2(22, 44), Vector2(3, 1)]],
		6 : [[Vector2(20, 3), Vector2(10, 35)], [Vector2(17, 4), Vector2(3, 35)], [Vector2(30, 4), Vector2(2, 33)], [Vector2(15, 5), Vector2(2, 33)], [Vector2(32, 5), Vector2(2, 31)], [Vector2(14, 6), Vector2(1, 31)], [Vector2(34, 6), Vector2(1, 32)], [Vector2(13, 7), Vector2(1, 30)], [Vector2(35, 7), Vector2(1, 29)], [Vector2(36, 8), Vector2(1, 26)], [Vector2(6, 9), Vector2(2, 2)], [Vector2(12, 9), Vector2(1, 29)], [Vector2(37, 10), Vector2(2, 23)], [Vector2(11, 11), Vector2(1, 27)], [Vector2(39, 11), Vector2(2, 20)], [Vector2(9, 12), Vector2(2, 20)], [Vector2(41, 12), Vector2(1, 18)], [Vector2(8, 13), Vector2(1, 19)], [Vector2(7, 14), Vector2(1, 17)], [Vector2(42, 14), Vector2(1, 14)], [Vector2(3, 15), Vector2(2, 8)], [Vector2(2, 16), Vector2(1, 6)], [Vector2(5, 16), Vector2(2, 12)], [Vector2(43, 18), Vector2(1, 8)], [Vector2(4, 23), Vector2(1, 3)], [Vector2(6, 28), Vector2(1, 2)], [Vector2(39, 31), Vector2(1, 2)], [Vector2(10, 32), Vector2(1, 6)], [Vector2(9, 33), Vector2(1, 4)], [Vector2(41, 33), Vector2(1, 1)], [Vector2(33, 36), Vector2(1, 3)], [Vector2(38, 36), Vector2(2, 2)], [Vector2(30, 37), Vector2(1, 1)], [Vector2(20, 38), Vector2(9, 1)], [Vector2(32, 38), Vector2(1, 2)], [Vector2(13, 39), Vector2(2, 2)], [Vector2(19, 39), Vector2(9, 1)], [Vector2(15, 40), Vector2(1, 2)], [Vector2(21, 40), Vector2(7, 1)], [Vector2(14, 41), Vector2(1, 1)], [Vector2(22, 41), Vector2(5, 1)], [Vector2(25, 42), Vector2(1, 1)]],
		7 : [[Vector2(19, 8), Vector2(8, 31)], [Vector2(29, 8), Vector2(5, 27)], [Vector2(39, 8), Vector2(2, 4)], [Vector2(17, 9), Vector2(2, 30)], [Vector2(27, 9), Vector2(2, 28)], [Vector2(34, 9), Vector2(2, 23)], [Vector2(38, 9), Vector2(1, 2)], [Vector2(6, 10), Vector2(2, 2)], [Vector2(12, 10), Vector2(5, 28)], [Vector2(36, 10), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 27)], [Vector2(8, 13), Vector2(2, 20)], [Vector2(37, 13), Vector2(5, 18)], [Vector2(6, 14), Vector2(2, 17)], [Vector2(10, 14), Vector2(1, 24)], [Vector2(42, 14), Vector2(1, 15)], [Vector2(5, 15), Vector2(1, 14)], [Vector2(43, 15), Vector2(1, 12)], [Vector2(3, 16), Vector2(2, 7)], [Vector2(44, 16), Vector2(1, 5)], [Vector2(2, 17), Vector2(1, 5)], [Vector2(44, 22), Vector2(1, 4)], [Vector2(4, 23), Vector2(1, 4)], [Vector2(7, 31), Vector2(1, 1)], [Vector2(37, 31), Vector2(4, 1)], [Vector2(34, 32), Vector2(1, 2)], [Vector2(37, 32), Vector2(3, 2)], [Vector2(36, 33), Vector2(1, 1)], [Vector2(9, 34), Vector2(1, 3)], [Vector2(29, 35), Vector2(4, 1)], [Vector2(34, 35), Vector2(2, 2)], [Vector2(41, 35), Vector2(1, 1)], [Vector2(29, 36), Vector2(2, 1)], [Vector2(27, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(15, 38), Vector2(2, 1)], [Vector2(14, 39), Vector2(1, 1)], [Vector2(19, 39), Vector2(7, 1)], [Vector2(22, 40), Vector2(2, 1)]],
		8 : [[Vector2(19, 5), Vector2(1, 4)], [Vector2(18, 6), Vector2(1, 4)], [Vector2(20, 6), Vector2(1, 1)], [Vector2(26, 6), Vector2(1, 2)], [Vector2(30, 6), Vector2(1, 1)], [Vector2(17, 7), Vector2(1, 2)], [Vector2(25, 7), Vector2(1, 1)], [Vector2(29, 8), Vector2(5, 1)], [Vector2(20, 9), Vector2(8, 27)], [Vector2(30, 9), Vector2(6, 21)], [Vector2(15, 10), Vector2(2, 22)], [Vector2(19, 10), Vector2(1, 26)], [Vector2(28, 10), Vector2(2, 25)], [Vector2(36, 10), Vector2(1, 20)], [Vector2(14, 11), Vector2(1, 20)], [Vector2(17, 11), Vector2(2, 23)], [Vector2(10, 12), Vector2(1, 1)], [Vector2(13, 12), Vector2(1, 18)], [Vector2(37, 12), Vector2(1, 16)], [Vector2(12, 14), Vector2(1, 14)], [Vector2(38, 14), Vector2(1, 13)], [Vector2(11, 16), Vector2(1, 10)], [Vector2(39, 16), Vector2(1, 7)], [Vector2(10, 17), Vector2(1, 9)], [Vector2(9, 18), Vector2(1, 7)], [Vector2(8, 19), Vector2(1, 3)], [Vector2(30, 30), Vector2(5, 1)], [Vector2(30, 31), Vector2(4, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(30, 32), Vector2(3, 1)], [Vector2(30, 33), Vector2(1, 1)], [Vector2(18, 34), Vector2(1, 1)], [Vector2(28, 35), Vector2(1, 1)], [Vector2(25, 36), Vector2(3, 1)], [Vector2(30, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(1, 1)], [Vector2(23, 37), Vector2(1, 3)], [Vector2(24, 38), Vector2(1, 1)]],
		9 : [[Vector2(22, 2), Vector2(2, 30)], [Vector2(24, 3), Vector2(1, 32)], [Vector2(20, 4), Vector2(2, 27)], [Vector2(29, 4), Vector2(1, 3)], [Vector2(19, 5), Vector2(1, 25)], [Vector2(28, 5), Vector2(1, 2)], [Vector2(18, 6), Vector2(1, 23)], [Vector2(25, 6), Vector2(1, 30)], [Vector2(16, 7), Vector2(1, 1)], [Vector2(27, 7), Vector2(1, 25)], [Vector2(30, 7), Vector2(1, 2)], [Vector2(17, 8), Vector2(1, 3)], [Vector2(26, 8), Vector2(1, 25)], [Vector2(28, 8), Vector2(1, 22)], [Vector2(29, 10), Vector2(5, 1)], [Vector2(30, 11), Vector2(6, 12)], [Vector2(15, 12), Vector2(3, 16)], [Vector2(29, 12), Vector2(1, 18)], [Vector2(36, 12), Vector2(1, 9)], [Vector2(14, 14), Vector2(1, 13)], [Vector2(37, 14), Vector2(1, 3)], [Vector2(13, 15), Vector2(1, 1)], [Vector2(13, 19), Vector2(1, 8)], [Vector2(12, 20), Vector2(1, 6)], [Vector2(30, 23), Vector2(5, 1)], [Vector2(30, 24), Vector2(4, 1)], [Vector2(30, 25), Vector2(3, 2)], [Vector2(30, 27), Vector2(2, 2)], [Vector2(30, 29), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)], [Vector2(23, 32), Vector2(1, 1)], [Vector2(22, 35), Vector2(1, 3)], [Vector2(27, 36), Vector2(1, 1)], [Vector2(24, 37), Vector2(1, 2)], [Vector2(25, 40), Vector2(1, 1)], [Vector2(24, 41), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/explosion"
	},
	"flame" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 1), Vector2(3, 6)], [Vector2(1, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(6, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/flame"
	},
	"flame_trail" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 7)], [Vector2(1, 1), Vector2(1, 5)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(7, 2), Vector2(1, 3)], [Vector2(0, 4), Vector2(1, 1)], [Vector2(3, 7), Vector2(3, 1)]],
		1 : [[Vector2(2, 1), Vector2(3, 6)], [Vector2(1, 2), Vector2(1, 3)], [Vector2(5, 2), Vector2(2, 3)], [Vector2(5, 5), Vector2(1, 1)]],
		2 : [[Vector2(2, 2), Vector2(4, 3)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(2, 5), Vector2(3, 1)]],
		3 : [[Vector2(3, 2), Vector2(2, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)]],
		4 : [[Vector2(3, 3), Vector2(2, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/flame_trail"
	},
	"laser" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(0, 2), Vector2(1, 4)], [Vector2(7, 2), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/laser"
	},
	"laser_explode" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(14, 10), Vector2(3, 11)], [Vector2(12, 11), Vector2(2, 9)], [Vector2(17, 11), Vector2(2, 9)], [Vector2(11, 12), Vector2(1, 7)], [Vector2(19, 12), Vector2(1, 7)], [Vector2(10, 14), Vector2(1, 3)], [Vector2(20, 14), Vector2(1, 3)]],
		1 : [[Vector2(16, 8), Vector2(1, 12)], [Vector2(15, 9), Vector2(1, 11)], [Vector2(17, 9), Vector2(1, 11)], [Vector2(14, 10), Vector2(1, 10)], [Vector2(18, 10), Vector2(1, 10)], [Vector2(13, 11), Vector2(1, 9)], [Vector2(19, 11), Vector2(1, 9)], [Vector2(12, 12), Vector2(1, 7)], [Vector2(11, 13), Vector2(1, 5)], [Vector2(20, 13), Vector2(1, 6)], [Vector2(10, 15), Vector2(1, 2)]],
		2 : [[Vector2(14, 4), Vector2(2, 2)], [Vector2(13, 5), Vector2(1, 5)], [Vector2(16, 5), Vector2(1, 2)], [Vector2(12, 7), Vector2(1, 1)], [Vector2(14, 9), Vector2(1, 11)], [Vector2(16, 9), Vector2(2, 11)], [Vector2(15, 10), Vector2(1, 10)], [Vector2(12, 11), Vector2(2, 8)], [Vector2(18, 12), Vector2(1, 8)], [Vector2(11, 13), Vector2(1, 6)], [Vector2(19, 13), Vector2(1, 6)], [Vector2(9, 14), Vector2(2, 4)], [Vector2(20, 14), Vector2(1, 4)], [Vector2(8, 15), Vector2(1, 2)], [Vector2(21, 15), Vector2(1, 3)], [Vector2(10, 18), Vector2(1, 1)], [Vector2(13, 19), Vector2(1, 1)]],
		3 : [[Vector2(13, 4), Vector2(3, 1)], [Vector2(12, 5), Vector2(2, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 2)], [Vector2(19, 8), Vector2(1, 1)], [Vector2(10, 10), Vector2(1, 3)], [Vector2(16, 10), Vector2(2, 11)], [Vector2(11, 11), Vector2(1, 9)], [Vector2(14, 11), Vector2(2, 12)], [Vector2(9, 12), Vector2(1, 6)], [Vector2(12, 12), Vector2(2, 9)], [Vector2(18, 12), Vector2(3, 8)], [Vector2(8, 13), Vector2(1, 4)], [Vector2(21, 13), Vector2(1, 5)], [Vector2(23, 13), Vector2(1, 1)], [Vector2(7, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(1, 6)], [Vector2(22, 14), Vector2(1, 3)], [Vector2(23, 15), Vector2(1, 1)], [Vector2(8, 19), Vector2(2, 1)], [Vector2(21, 19), Vector2(2, 1)], [Vector2(13, 21), Vector2(1, 1)]],
		4 : [[Vector2(10, 8), Vector2(2, 1)], [Vector2(8, 9), Vector2(3, 1)], [Vector2(19, 10), Vector2(1, 1)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(14, 12), Vector2(4, 8)], [Vector2(21, 12), Vector2(1, 4)], [Vector2(13, 13), Vector2(1, 8)], [Vector2(18, 13), Vector2(1, 7)], [Vector2(22, 13), Vector2(1, 2)], [Vector2(7, 14), Vector2(1, 3)], [Vector2(12, 14), Vector2(1, 7)], [Vector2(19, 14), Vector2(2, 3)], [Vector2(8, 15), Vector2(1, 3)], [Vector2(9, 16), Vector2(1, 4)], [Vector2(11, 17), Vector2(1, 3)], [Vector2(19, 17), Vector2(1, 3)], [Vector2(10, 18), Vector2(1, 2)], [Vector2(20, 18), Vector2(1, 2)], [Vector2(8, 19), Vector2(1, 1)], [Vector2(21, 19), Vector2(2, 1)], [Vector2(14, 20), Vector2(3, 1)], [Vector2(14, 21), Vector2(2, 1)]],
		5 : [[Vector2(25, 14), Vector2(1, 3)], [Vector2(6, 15), Vector2(2, 4)], [Vector2(15, 15), Vector2(2, 6)], [Vector2(24, 15), Vector2(1, 3)], [Vector2(5, 16), Vector2(1, 2)], [Vector2(13, 16), Vector2(2, 5)], [Vector2(17, 16), Vector2(1, 4)], [Vector2(23, 16), Vector2(1, 2)], [Vector2(8, 17), Vector2(1, 3)], [Vector2(12, 17), Vector2(1, 3)], [Vector2(18, 17), Vector2(2, 3)], [Vector2(22, 17), Vector2(1, 1)], [Vector2(9, 18), Vector2(3, 2)], [Vector2(20, 18), Vector2(1, 2)], [Vector2(7, 19), Vector2(1, 1)], [Vector2(21, 19), Vector2(5, 1)], [Vector2(14, 21), Vector2(2, 1)]],
		6 : [[Vector2(25, 16), Vector2(2, 1)], [Vector2(24, 17), Vector2(2, 1)], [Vector2(6, 18), Vector2(1, 2)], [Vector2(12, 18), Vector2(7, 2)], [Vector2(7, 19), Vector2(5, 1)], [Vector2(19, 19), Vector2(7, 1)]],
		7 : [[Vector2(11, 19), Vector2(15, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/laser_explode"
	},
	"laser_trail" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(0, 2), Vector2(1, 4)], [Vector2(7, 2), Vector2(1, 4)]],
		1 : [[Vector2(2, 1), Vector2(4, 6)], [Vector2(1, 2), Vector2(1, 4)], [Vector2(6, 2), Vector2(1, 4)]],
		2 : [[Vector2(3, 2), Vector2(2, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)]],
		3 : [[Vector2(3, 3), Vector2(2, 3)], [Vector2(2, 4), Vector2(1, 1)], [Vector2(5, 4), Vector2(1, 1)]],
		4 : [[Vector2(3, 4), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/laser_trail"
	},
	"lava_drip" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(1, 7)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(1, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]],
		1 : [[Vector2(3, 0), Vector2(1, 7)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(1, 3), Vector2(1, 3)], [Vector2(5, 3), Vector2(1, 3)]],
		2 : [[Vector2(3, 1), Vector2(1, 5)], [Vector2(2, 2), Vector2(1, 3)], [Vector2(4, 2), Vector2(1, 4)]],
		3 : [[Vector2(3, 2), Vector2(1, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(4, 3), Vector2(1, 2)]],
		4 : [[Vector2(2, 3), Vector2(2, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/lava_drip"
	},
	"leaf" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 1), Vector2(2, 3)], [Vector2(7, 2), Vector2(2, 4)], [Vector2(6, 3), Vector2(1, 3)], [Vector2(5, 4), Vector2(1, 1)], [Vector2(9, 4), Vector2(1, 1)]],
		1 : [[Vector2(5, 3), Vector2(3, 3)], [Vector2(3, 4), Vector2(2, 3)], [Vector2(8, 4), Vector2(1, 1)], [Vector2(2, 5), Vector2(1, 1)], [Vector2(5, 6), Vector2(1, 1)]],
		2 : [[Vector2(1, 2), Vector2(2, 3)], [Vector2(0, 3), Vector2(1, 1)], [Vector2(3, 3), Vector2(1, 4)], [Vector2(4, 4), Vector2(1, 2)], [Vector2(2, 5), Vector2(1, 1)]],
		3 : [[Vector2(1, 1), Vector2(1, 4)], [Vector2(0, 2), Vector2(1, 2)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(3, 3), Vector2(1, 4)], [Vector2(4, 5), Vector2(1, 1)]],
		4 : [[Vector2(4, 4), Vector2(3, 3)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(2, 3)], [Vector2(9, 6), Vector2(1, 1)], [Vector2(5, 7), Vector2(2, 1)]],
		5 : [[Vector2(11, 4), Vector2(2, 3)], [Vector2(9, 5), Vector2(2, 3)], [Vector2(13, 5), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)]],
		6 : [[Vector2(13, 0), Vector2(1, 5)], [Vector2(12, 1), Vector2(1, 5)], [Vector2(14, 1), Vector2(1, 3)], [Vector2(11, 2), Vector2(1, 3)]],
		7 : [[Vector2(11, 1), Vector2(3, 2)], [Vector2(10, 2), Vector2(1, 3)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(11, 3), Vector2(2, 1)], [Vector2(11, 4), Vector2(1, 1)]],
		8 : [[Vector2(9, 0), Vector2(4, 2)], [Vector2(8, 1), Vector2(1, 3)], [Vector2(7, 2), Vector2(1, 1)], [Vector2(9, 2), Vector2(3, 1)], [Vector2(9, 3), Vector2(2, 1)]],
		9 : [[Vector2(8, 1), Vector2(3, 3)], [Vector2(7, 2), Vector2(1, 3)], [Vector2(11, 2), Vector2(1, 1)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(8, 4), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/leaf"
	},
	"leaf_still" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 4), Vector2(3, 3)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(8, 5), Vector2(2, 3)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(6, 7), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/leaf_still"
	},
	"poof" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(2, 2)]],
		1 : [[Vector2(3, 2), Vector2(2, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)]],
		2 : [[Vector2(2, 1), Vector2(4, 5)], [Vector2(1, 2), Vector2(1, 3)], [Vector2(6, 2), Vector2(1, 4)], [Vector2(3, 6), Vector2(3, 1)]],
		3 : [[Vector2(4, 0), Vector2(2, 4)], [Vector2(3, 1), Vector2(1, 2)], [Vector2(6, 1), Vector2(1, 2)], [Vector2(1, 3), Vector2(2, 4)], [Vector2(0, 4), Vector2(1, 2)], [Vector2(3, 4), Vector2(1, 2)], [Vector2(6, 4), Vector2(2, 2)]],
		4 : [[Vector2(4, 0), Vector2(1, 3)], [Vector2(3, 1), Vector2(1, 1)], [Vector2(5, 1), Vector2(1, 1)], [Vector2(0, 5), Vector2(2, 2)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)]],
		5 : [[Vector2(4, 0), Vector2(1, 1)], [Vector2(0, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/poof"
	},
	"psychic_create" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 5), Vector2(4, 6)], [Vector2(5, 6), Vector2(1, 4)], [Vector2(10, 6), Vector2(1, 4)]],
		1 : [[Vector2(7, 5), Vector2(2, 6)], [Vector2(6, 6), Vector2(1, 4)], [Vector2(9, 6), Vector2(1, 4)], [Vector2(5, 7), Vector2(1, 2)], [Vector2(10, 7), Vector2(1, 2)]],
		2 : [[Vector2(7, 6), Vector2(2, 4)], [Vector2(6, 7), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 2)]],
		3 : [[Vector2(7, 7), Vector2(2, 2)]],
		4 : [[Vector2(8, 7), Vector2(1, 1)], [Vector2(7, 8), Vector2(1, 1)]],
		5 : [[Vector2(7, 7), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/psychic_create"
	},
	"psychic_wave" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 7), Vector2(2, 2)]],
		1 : [[Vector2(7, 6), Vector2(2, 4)], [Vector2(6, 7), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 2)]],
		2 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		3 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		4 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		5 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		6 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		7 : [[Vector2(6, 2), Vector2(4, 1)], [Vector2(4, 3), Vector2(2, 1)], [Vector2(10, 3), Vector2(2, 1)], [Vector2(3, 4), Vector2(1, 2)], [Vector2(12, 4), Vector2(1, 2)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(3, 10), Vector2(1, 2)], [Vector2(12, 10), Vector2(1, 2)], [Vector2(4, 12), Vector2(2, 1)], [Vector2(10, 12), Vector2(2, 1)], [Vector2(6, 13), Vector2(4, 1)]],
		8 : [[Vector2(6, 1), Vector2(4, 1)], [Vector2(4, 2), Vector2(2, 1)], [Vector2(10, 2), Vector2(2, 1)], [Vector2(2, 4), Vector2(1, 2)], [Vector2(13, 4), Vector2(1, 2)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 4)], [Vector2(2, 10), Vector2(1, 2)], [Vector2(13, 10), Vector2(1, 2)], [Vector2(4, 13), Vector2(2, 1)], [Vector2(10, 13), Vector2(2, 1)], [Vector2(6, 14), Vector2(4, 1)]],
		9 : [[Vector2(7, 5), Vector2(2, 2)], [Vector2(6, 6), Vector2(1, 4)], [Vector2(9, 6), Vector2(1, 4)], [Vector2(5, 7), Vector2(1, 2)], [Vector2(10, 7), Vector2(1, 2)], [Vector2(7, 9), Vector2(2, 2)]],
		10 : [[Vector2(6, 3), Vector2(4, 3)], [Vector2(5, 4), Vector2(1, 8)], [Vector2(10, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(9, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(6, 9), Vector2(1, 4)], [Vector2(9, 9), Vector2(1, 4)], [Vector2(7, 10), Vector2(2, 3)]],
		11 : [[Vector2(6, 3), Vector2(4, 2)], [Vector2(5, 4), Vector2(1, 2)], [Vector2(10, 4), Vector2(1, 2)], [Vector2(4, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(5, 10), Vector2(1, 2)], [Vector2(10, 10), Vector2(1, 2)], [Vector2(6, 11), Vector2(4, 2)]],
		12 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		13 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		14 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		15 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		16 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/psychic_wave"
	},
	"psychic_wave_p" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 7), Vector2(2, 2)]],
		1 : [[Vector2(7, 6), Vector2(2, 4)], [Vector2(6, 7), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 2)]],
		2 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		3 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		4 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		5 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		6 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		7 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		8 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		9 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		10 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		11 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		12 : [[Vector2(7, 5), Vector2(2, 2)], [Vector2(6, 6), Vector2(1, 4)], [Vector2(9, 6), Vector2(1, 4)], [Vector2(5, 7), Vector2(1, 2)], [Vector2(10, 7), Vector2(1, 2)], [Vector2(7, 9), Vector2(2, 2)]],
		13 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		14 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		15 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		16 : [[Vector2(6, 2), Vector2(4, 1)], [Vector2(4, 3), Vector2(2, 1)], [Vector2(10, 3), Vector2(2, 1)], [Vector2(3, 4), Vector2(1, 2)], [Vector2(12, 4), Vector2(1, 2)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(3, 10), Vector2(1, 2)], [Vector2(12, 10), Vector2(1, 2)], [Vector2(4, 12), Vector2(2, 1)], [Vector2(10, 12), Vector2(2, 1)], [Vector2(6, 13), Vector2(4, 1)]],
		17 : [[Vector2(6, 1), Vector2(4, 1)], [Vector2(4, 2), Vector2(2, 1)], [Vector2(10, 2), Vector2(2, 1)], [Vector2(2, 4), Vector2(1, 2)], [Vector2(13, 4), Vector2(1, 2)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 4)], [Vector2(2, 10), Vector2(1, 2)], [Vector2(13, 10), Vector2(1, 2)], [Vector2(4, 13), Vector2(2, 1)], [Vector2(10, 13), Vector2(2, 1)], [Vector2(6, 14), Vector2(4, 1)]],
		18 : [[Vector2(6, 3), Vector2(4, 3)], [Vector2(5, 4), Vector2(1, 8)], [Vector2(10, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(9, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(6, 9), Vector2(1, 4)], [Vector2(9, 9), Vector2(1, 4)], [Vector2(7, 10), Vector2(2, 3)]],
		19 : [[Vector2(6, 3), Vector2(4, 2)], [Vector2(5, 4), Vector2(1, 2)], [Vector2(10, 4), Vector2(1, 2)], [Vector2(4, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(5, 10), Vector2(1, 2)], [Vector2(10, 10), Vector2(1, 2)], [Vector2(6, 11), Vector2(4, 2)]],
		20 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		21 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		22 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		23 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]],
		24 : [[Vector2(6, 2), Vector2(4, 2)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(10, 3), Vector2(2, 2)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/psychic_wave_p"
	},
	"rubble" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble"
	},
	"rubble_dark" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_dark"
	},
	"rubble_dark_small" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 4)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_dark_small"
	},
	"rubble_lush" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_lush"
	},
	"rubble_lush_small" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 4)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_lush_small"
	},
	"rubble_small" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 4)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_small"
	},
	"rubble_tan" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_tan"
	},
	"rubble_tan_small" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 4)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/rubble_tan_small"
	},
	"shotgun_blast_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 4), Vector2(4, 8)], [Vector2(5, 5), Vector2(1, 6)], [Vector2(10, 5), Vector2(1, 6)], [Vector2(4, 6), Vector2(1, 4)], [Vector2(11, 6), Vector2(1, 4)]],
		1 : [[Vector2(5, 3), Vector2(3, 10)], [Vector2(4, 4), Vector2(1, 8)], [Vector2(8, 4), Vector2(2, 8)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(10, 5), Vector2(2, 6)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(2, 7), Vector2(1, 2)], [Vector2(13, 7), Vector2(1, 2)]],
		2 : [[Vector2(3, 2), Vector2(3, 1)], [Vector2(4, 3), Vector2(4, 1)], [Vector2(9, 3), Vector2(2, 9)], [Vector2(5, 4), Vector2(4, 8)], [Vector2(11, 4), Vector2(1, 7)], [Vector2(2, 5), Vector2(3, 1)], [Vector2(12, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(2, 3)], [Vector2(13, 6), Vector2(1, 3)], [Vector2(2, 8), Vector2(1, 1)], [Vector2(4, 9), Vector2(1, 2)], [Vector2(3, 10), Vector2(1, 1)], [Vector2(4, 12), Vector2(3, 1)], [Vector2(9, 12), Vector2(1, 1)]],
		3 : [[Vector2(3, 3), Vector2(6, 10)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(9, 4), Vector2(3, 8)], [Vector2(1, 5), Vector2(1, 5)], [Vector2(12, 5), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(14, 7), Vector2(1, 2)]],
		4 : [[Vector2(6, 2), Vector2(2, 11)], [Vector2(3, 3), Vector2(3, 10)], [Vector2(2, 4), Vector2(1, 7)], [Vector2(8, 4), Vector2(1, 7)], [Vector2(1, 5), Vector2(1, 5)], [Vector2(9, 5), Vector2(1, 5)], [Vector2(5, 13), Vector2(1, 1)]],
		5 : [[Vector2(3, 3), Vector2(5, 10)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(8, 4), Vector2(2, 8)], [Vector2(1, 5), Vector2(1, 6)], [Vector2(10, 5), Vector2(1, 7)], [Vector2(0, 6), Vector2(1, 4)], [Vector2(11, 6), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 1)], [Vector2(8, 12), Vector2(1, 1)]],
		6 : [[Vector2(4, 4), Vector2(3, 8)], [Vector2(2, 5), Vector2(2, 6)], [Vector2(7, 5), Vector2(1, 6)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(8, 6), Vector2(1, 4)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(9, 7), Vector2(2, 3)], [Vector2(12, 7), Vector2(1, 1)], [Vector2(11, 8), Vector2(1, 1)], [Vector2(3, 11), Vector2(1, 1)]],
		7 : [[Vector2(2, 4), Vector2(4, 7)], [Vector2(0, 5), Vector2(2, 6)], [Vector2(6, 5), Vector2(1, 5)], [Vector2(7, 6), Vector2(1, 4)], [Vector2(9, 6), Vector2(1, 1)], [Vector2(8, 7), Vector2(1, 3)], [Vector2(10, 7), Vector2(1, 1)], [Vector2(9, 8), Vector2(1, 1)], [Vector2(12, 8), Vector2(1, 1)]],
		8 : [[Vector2(2, 5), Vector2(3, 5)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(5, 6), Vector2(2, 3)], [Vector2(0, 7), Vector2(1, 2)], [Vector2(7, 7), Vector2(2, 1)], [Vector2(7, 8), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(5, 9), Vector2(1, 1)], [Vector2(3, 10), Vector2(2, 1)]],
		9 : [[Vector2(2, 5), Vector2(1, 5)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(3, 6), Vector2(2, 4)], [Vector2(8, 6), Vector2(1, 3)], [Vector2(0, 7), Vector2(1, 2)], [Vector2(5, 7), Vector2(2, 4)], [Vector2(9, 7), Vector2(2, 1)], [Vector2(12, 7), Vector2(1, 1)], [Vector2(7, 8), Vector2(1, 2)], [Vector2(9, 8), Vector2(1, 1)], [Vector2(11, 8), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/shotgun_blast_left"
	},
	"shotgun_blast_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 4), Vector2(4, 8)], [Vector2(5, 5), Vector2(1, 6)], [Vector2(10, 5), Vector2(1, 6)], [Vector2(4, 6), Vector2(1, 4)], [Vector2(11, 6), Vector2(1, 4)]],
		1 : [[Vector2(8, 3), Vector2(3, 10)], [Vector2(6, 4), Vector2(2, 8)], [Vector2(11, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(2, 6)], [Vector2(12, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(2, 7), Vector2(1, 2)], [Vector2(13, 7), Vector2(1, 2)]],
		2 : [[Vector2(10, 2), Vector2(3, 1)], [Vector2(5, 3), Vector2(2, 9)], [Vector2(8, 3), Vector2(4, 1)], [Vector2(4, 4), Vector2(1, 7)], [Vector2(7, 4), Vector2(4, 8)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(3, 1)], [Vector2(2, 6), Vector2(1, 3)], [Vector2(11, 6), Vector2(2, 3)], [Vector2(13, 8), Vector2(1, 1)], [Vector2(11, 9), Vector2(1, 2)], [Vector2(12, 10), Vector2(1, 1)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(9, 12), Vector2(3, 1)]],
		3 : [[Vector2(7, 3), Vector2(6, 10)], [Vector2(4, 4), Vector2(3, 8)], [Vector2(13, 4), Vector2(1, 8)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(14, 5), Vector2(1, 5)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(1, 7), Vector2(1, 2)]],
		4 : [[Vector2(8, 2), Vector2(2, 11)], [Vector2(10, 3), Vector2(3, 10)], [Vector2(7, 4), Vector2(1, 7)], [Vector2(13, 4), Vector2(1, 7)], [Vector2(6, 5), Vector2(1, 5)], [Vector2(14, 5), Vector2(1, 5)], [Vector2(10, 13), Vector2(1, 1)]],
		5 : [[Vector2(8, 3), Vector2(5, 10)], [Vector2(6, 4), Vector2(2, 8)], [Vector2(13, 4), Vector2(1, 8)], [Vector2(5, 5), Vector2(1, 7)], [Vector2(14, 5), Vector2(1, 6)], [Vector2(4, 6), Vector2(1, 3)], [Vector2(15, 6), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 1)], [Vector2(7, 12), Vector2(1, 1)]],
		6 : [[Vector2(9, 4), Vector2(3, 8)], [Vector2(8, 5), Vector2(1, 6)], [Vector2(12, 5), Vector2(2, 6)], [Vector2(7, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 5)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(2, 3)], [Vector2(15, 7), Vector2(1, 3)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(12, 11), Vector2(1, 1)]],
		7 : [[Vector2(10, 4), Vector2(4, 7)], [Vector2(9, 5), Vector2(1, 5)], [Vector2(14, 5), Vector2(2, 6)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 4)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 3)], [Vector2(3, 8), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)]],
		8 : [[Vector2(11, 5), Vector2(3, 5)], [Vector2(9, 6), Vector2(2, 3)], [Vector2(14, 6), Vector2(1, 4)], [Vector2(7, 7), Vector2(2, 1)], [Vector2(15, 7), Vector2(1, 2)], [Vector2(5, 8), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 1)], [Vector2(10, 9), Vector2(1, 1)], [Vector2(11, 10), Vector2(2, 1)]],
		9 : [[Vector2(13, 5), Vector2(1, 5)], [Vector2(7, 6), Vector2(1, 3)], [Vector2(11, 6), Vector2(2, 4)], [Vector2(14, 6), Vector2(1, 5)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(2, 1)], [Vector2(9, 7), Vector2(2, 4)], [Vector2(15, 7), Vector2(1, 2)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/shotgun_blast_right"
	},
	"small_collect" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 10)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(3, 6)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(3, 9), Vector2(1, 1)]],
		1 : [[Vector2(3, 2), Vector2(3, 6)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(3, 9), Vector2(1, 1)]],
		2 : [[Vector2(2, 1), Vector2(3, 6)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(4, 8), Vector2(1, 1)]],
		3 : [[Vector2(2, 1), Vector2(3, 6)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(4, 8), Vector2(1, 1)]],
		4 : [[Vector2(2, 2), Vector2(3, 6)], [Vector2(1, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(1, 6)], [Vector2(6, 4), Vector2(1, 1)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(6, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(4, 9), Vector2(1, 1)]],
		5 : [[Vector2(2, 2), Vector2(3, 6)], [Vector2(1, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(1, 6)], [Vector2(6, 4), Vector2(1, 1)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(6, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(4, 9), Vector2(1, 1)]],
		6 : [[Vector2(2, 1), Vector2(3, 6)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(4, 8), Vector2(1, 1)]],
		7 : [[Vector2(2, 1), Vector2(3, 6)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(4, 8), Vector2(1, 1)]],
		8 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)]],
		9 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)]],
		10 : [[Vector2(3, 1), Vector2(3, 6)], [Vector2(2, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(3, 8), Vector2(1, 1)]],
		11 : [[Vector2(3, 1), Vector2(3, 6)], [Vector2(2, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(3, 8), Vector2(1, 1)]],
		12 : [[Vector2(3, 2), Vector2(3, 6)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(3, 9), Vector2(1, 1)]],
		13 : [[Vector2(3, 2), Vector2(3, 6)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(3, 9), Vector2(1, 1)]],
		14 : [[Vector2(3, 2), Vector2(3, 6)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(3, 9), Vector2(1, 1)]],
		15 : [[Vector2(3, 2), Vector2(3, 6)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(2, 1)], [Vector2(3, 9), Vector2(1, 1)]],
		16 : [[Vector2(3, 1), Vector2(3, 6)], [Vector2(2, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(3, 8), Vector2(1, 1)]],
		17 : [[Vector2(3, 1), Vector2(3, 6)], [Vector2(2, 2), Vector2(1, 6)], [Vector2(3, 7), Vector2(2, 1)], [Vector2(3, 8), Vector2(1, 1)]],
		18 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)]],
		19 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/small_collect"
	},
	"smoke_puff" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(2, 4)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 2)]],
		1 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(1, 2), Vector2(2, 3)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(2, 5), Vector2(1, 2)]],
		2 : [[Vector2(2, 0), Vector2(3, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)], [Vector2(0, 2), Vector2(1, 3)], [Vector2(6, 2), Vector2(2, 2)], [Vector2(6, 4), Vector2(1, 2)]],
		3 : [[Vector2(4, 0), Vector2(3, 2)], [Vector2(1, 1), Vector2(3, 2)], [Vector2(0, 2), Vector2(1, 2)], [Vector2(5, 2), Vector2(2, 1)], [Vector2(1, 3), Vector2(2, 1)], [Vector2(4, 4), Vector2(2, 2)], [Vector2(1, 5), Vector2(2, 2)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(3, 6), Vector2(1, 2)], [Vector2(2, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]],
		4 : [[Vector2(1, 0), Vector2(2, 2)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(5, 1), Vector2(2, 1)], [Vector2(1, 2), Vector2(1, 1)], [Vector2(4, 3), Vector2(2, 1)], [Vector2(3, 4), Vector2(2, 1)], [Vector2(1, 5), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 2)], [Vector2(3, 7), Vector2(1, 1)]],
		5 : [[Vector2(5, 0), Vector2(1, 2)], [Vector2(1, 1), Vector2(2, 1)], [Vector2(1, 2), Vector2(1, 1)], [Vector2(4, 2), Vector2(1, 1)], [Vector2(3, 4), Vector2(1, 2)]],
		6 : [[Vector2(4, 0), Vector2(1, 1)], [Vector2(2, 1), Vector2(1, 1)], [Vector2(3, 2), Vector2(1, 1)]],
		7 : [[Vector2(0, 0), Vector2(0, 0)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/smoke_puff"
	},
	"smooch_heart" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 3), Vector2(2, 8)], [Vector2(9, 3), Vector2(2, 8)], [Vector2(3, 4), Vector2(1, 6)], [Vector2(6, 4), Vector2(1, 9)], [Vector2(8, 4), Vector2(1, 9)], [Vector2(11, 4), Vector2(1, 6)], [Vector2(2, 5), Vector2(1, 4)], [Vector2(7, 5), Vector2(1, 9)], [Vector2(12, 5), Vector2(1, 4)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(9, 11), Vector2(1, 1)]],
		1 : [[Vector2(5, 4), Vector2(2, 7)], [Vector2(8, 4), Vector2(2, 7)], [Vector2(4, 5), Vector2(1, 5)], [Vector2(7, 5), Vector2(1, 8)], [Vector2(10, 5), Vector2(1, 5)], [Vector2(3, 6), Vector2(1, 3)], [Vector2(11, 6), Vector2(1, 3)], [Vector2(6, 11), Vector2(1, 1)], [Vector2(8, 11), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/smooch_heart"
	},
	"splash" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 2), Vector2(14, 14)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/effects/splash"
	},
	"yellow_ball" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 2), Vector2(6, 12)], [Vector2(4, 3), Vector2(1, 10)], [Vector2(11, 3), Vector2(1, 10)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(2, 5), Vector2(1, 6)], [Vector2(13, 5), Vector2(1, 6)]],
		1 : [[Vector2(6, 1), Vector2(4, 14)], [Vector2(4, 2), Vector2(2, 12)], [Vector2(10, 2), Vector2(2, 12)], [Vector2(3, 3), Vector2(1, 10)], [Vector2(12, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 4)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/yellow_ball"
	},
	"yellow_trail" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 14)], [Vector2(4, 2), Vector2(2, 12)], [Vector2(10, 2), Vector2(2, 12)], [Vector2(3, 3), Vector2(1, 10)], [Vector2(12, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 4)]],
		1 : [[Vector2(5, 2), Vector2(6, 12)], [Vector2(4, 3), Vector2(1, 10)], [Vector2(11, 3), Vector2(1, 10)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(2, 5), Vector2(1, 6)], [Vector2(13, 5), Vector2(1, 6)]],
		2 : [[Vector2(6, 6), Vector2(2, 1)], [Vector2(7, 7), Vector2(2, 1)], [Vector2(8, 8), Vector2(2, 1)], [Vector2(9, 9), Vector2(1, 1)]],
		3 : [[Vector2(7, 7), Vector2(2, 1)]],
		4 : [[Vector2(5, 3), Vector2(6, 10)], [Vector2(4, 4), Vector2(1, 8)], [Vector2(11, 4), Vector2(1, 8)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(12, 5), Vector2(1, 6)]],
		5 : [[Vector2(5, 4), Vector2(6, 8)], [Vector2(4, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 6)]],
		6 : [[Vector2(7, 4), Vector2(2, 8)], [Vector2(6, 5), Vector2(1, 6)], [Vector2(9, 5), Vector2(1, 6)], [Vector2(5, 6), Vector2(1, 4)], [Vector2(10, 6), Vector2(1, 4)], [Vector2(4, 7), Vector2(1, 2)], [Vector2(11, 7), Vector2(1, 2)]],
		7 : [[Vector2(7, 4), Vector2(2, 8)], [Vector2(6, 5), Vector2(1, 6)], [Vector2(9, 5), Vector2(1, 6)]],
		8 : [[Vector2(4, 4), Vector2(1, 2)], [Vector2(5, 5), Vector2(2, 2)], [Vector2(7, 6), Vector2(1, 3)], [Vector2(6, 7), Vector2(1, 1)], [Vector2(8, 7), Vector2(1, 3)], [Vector2(9, 8), Vector2(1, 3)], [Vector2(10, 9), Vector2(1, 2)], [Vector2(11, 10), Vector2(1, 2)]],
		9 : [[Vector2(4, 7), Vector2(8, 2)]],
		10 : [[Vector2(8, 6), Vector2(2, 2)], [Vector2(7, 7), Vector2(1, 3)], [Vector2(6, 8), Vector2(1, 2)], [Vector2(8, 8), Vector2(1, 1)]],
		11 : [[Vector2(7, 6), Vector2(2, 4)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/effects/yellow_trail"
	},
	"alien" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 5), Vector2(14, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien"
	},
	"alien_boss" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(31, 31)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_boss"
	},
	"alien_boss_dead" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 22), Vector2(2, 10)], [Vector2(15, 22), Vector2(7, 10)], [Vector2(7, 23), Vector2(1, 9)], [Vector2(10, 23), Vector2(5, 9)], [Vector2(22, 23), Vector2(5, 9)], [Vector2(27, 24), Vector2(2, 8)], [Vector2(29, 25), Vector2(1, 7)], [Vector2(4, 26), Vector2(3, 6)], [Vector2(30, 26), Vector2(1, 6)], [Vector2(3, 27), Vector2(1, 1)], [Vector2(3, 29), Vector2(1, 3)], [Vector2(2, 30), Vector2(1, 2)], [Vector2(31, 30), Vector2(1, 2)], [Vector2(1, 31), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_boss_dead"
	},
	"alien_boss_die" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(15, 1), Vector2(7, 31)], [Vector2(12, 2), Vector2(3, 30)], [Vector2(22, 2), Vector2(4, 30)], [Vector2(10, 3), Vector2(2, 29)], [Vector2(26, 3), Vector2(2, 29)], [Vector2(8, 4), Vector2(2, 28)], [Vector2(28, 4), Vector2(1, 28)], [Vector2(7, 5), Vector2(1, 27)], [Vector2(29, 5), Vector2(1, 27)], [Vector2(6, 6), Vector2(1, 26)], [Vector2(30, 6), Vector2(1, 17)], [Vector2(5, 7), Vector2(1, 25)], [Vector2(4, 8), Vector2(1, 17)], [Vector2(31, 8), Vector2(1, 13)], [Vector2(3, 10), Vector2(1, 14)], [Vector2(2, 12), Vector2(1, 10)], [Vector2(1, 14), Vector2(1, 6)], [Vector2(30, 25), Vector2(1, 7)], [Vector2(31, 26), Vector2(1, 6)], [Vector2(4, 27), Vector2(1, 5)], [Vector2(3, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(1, 3)], [Vector2(1, 30), Vector2(1, 2)]],
		1 : [[Vector2(13, 1), Vector2(10, 31)], [Vector2(11, 2), Vector2(2, 30)], [Vector2(23, 2), Vector2(4, 30)], [Vector2(9, 3), Vector2(2, 29)], [Vector2(27, 3), Vector2(2, 29)], [Vector2(7, 4), Vector2(2, 28)], [Vector2(29, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 27)], [Vector2(30, 5), Vector2(1, 18)], [Vector2(5, 6), Vector2(1, 26)], [Vector2(4, 7), Vector2(1, 25)], [Vector2(31, 7), Vector2(1, 14)], [Vector2(2, 9), Vector2(2, 5)], [Vector2(1, 10), Vector2(1, 2)], [Vector2(3, 14), Vector2(1, 18)], [Vector2(2, 18), Vector2(1, 3)], [Vector2(2, 23), Vector2(1, 3)], [Vector2(1, 24), Vector2(1, 1)], [Vector2(30, 25), Vector2(1, 7)], [Vector2(31, 26), Vector2(1, 6)], [Vector2(2, 27), Vector2(1, 5)], [Vector2(1, 28), Vector2(1, 3)]],
		2 : [[Vector2(15, 2), Vector2(7, 30)], [Vector2(4, 3), Vector2(2, 7)], [Vector2(12, 3), Vector2(3, 29)], [Vector2(22, 3), Vector2(4, 29)], [Vector2(3, 4), Vector2(1, 1)], [Vector2(6, 4), Vector2(6, 28)], [Vector2(26, 4), Vector2(2, 28)], [Vector2(28, 5), Vector2(1, 27)], [Vector2(3, 6), Vector2(1, 2)], [Vector2(29, 6), Vector2(1, 26)], [Vector2(30, 7), Vector2(1, 16)], [Vector2(31, 9), Vector2(1, 12)], [Vector2(5, 10), Vector2(1, 22)], [Vector2(4, 12), Vector2(1, 20)], [Vector2(3, 13), Vector2(1, 3)], [Vector2(3, 17), Vector2(1, 9)], [Vector2(2, 18), Vector2(1, 3)], [Vector2(2, 23), Vector2(1, 3)], [Vector2(1, 24), Vector2(1, 1)], [Vector2(30, 25), Vector2(1, 7)], [Vector2(31, 26), Vector2(1, 6)], [Vector2(3, 27), Vector2(1, 5)], [Vector2(2, 28), Vector2(1, 3)]],
		3 : [[Vector2(8, 3), Vector2(2, 7)], [Vector2(15, 3), Vector2(7, 29)], [Vector2(7, 4), Vector2(1, 1)], [Vector2(10, 4), Vector2(5, 28)], [Vector2(22, 4), Vector2(4, 28)], [Vector2(26, 5), Vector2(2, 27)], [Vector2(7, 6), Vector2(1, 2)], [Vector2(28, 6), Vector2(1, 26)], [Vector2(29, 7), Vector2(1, 25)], [Vector2(30, 8), Vector2(1, 15)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(31, 10), Vector2(1, 12)], [Vector2(8, 12), Vector2(1, 20)], [Vector2(7, 13), Vector2(1, 19)], [Vector2(6, 17), Vector2(1, 15)], [Vector2(5, 18), Vector2(1, 14)], [Vector2(4, 19), Vector2(1, 3)], [Vector2(4, 24), Vector2(1, 8)], [Vector2(3, 25), Vector2(1, 1)], [Vector2(30, 25), Vector2(1, 7)], [Vector2(31, 26), Vector2(1, 6)], [Vector2(3, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(1, 3)], [Vector2(1, 30), Vector2(1, 2)]],
		4 : [[Vector2(11, 7), Vector2(2, 7)], [Vector2(18, 7), Vector2(7, 25)], [Vector2(10, 8), Vector2(1, 4)], [Vector2(13, 8), Vector2(5, 24)], [Vector2(25, 8), Vector2(3, 24)], [Vector2(28, 9), Vector2(1, 23)], [Vector2(29, 10), Vector2(1, 22)], [Vector2(30, 11), Vector2(1, 12)], [Vector2(31, 13), Vector2(1, 9)], [Vector2(12, 14), Vector2(1, 18)], [Vector2(10, 15), Vector2(2, 17)], [Vector2(8, 16), Vector2(2, 16)], [Vector2(7, 17), Vector2(1, 15)], [Vector2(5, 18), Vector2(2, 14)], [Vector2(4, 19), Vector2(1, 3)], [Vector2(4, 24), Vector2(1, 8)], [Vector2(3, 25), Vector2(1, 1)], [Vector2(30, 25), Vector2(1, 7)], [Vector2(31, 26), Vector2(1, 6)], [Vector2(3, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(1, 3)], [Vector2(1, 30), Vector2(1, 2)]],
		5 : [[Vector2(11, 11), Vector2(2, 7)], [Vector2(18, 11), Vector2(7, 21)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(13, 12), Vector2(5, 20)], [Vector2(25, 12), Vector2(3, 20)], [Vector2(28, 13), Vector2(1, 19)], [Vector2(29, 14), Vector2(1, 18)], [Vector2(30, 15), Vector2(1, 9)], [Vector2(31, 17), Vector2(1, 7)], [Vector2(12, 18), Vector2(1, 14)], [Vector2(10, 19), Vector2(2, 13)], [Vector2(8, 20), Vector2(2, 12)], [Vector2(7, 21), Vector2(1, 11)], [Vector2(5, 22), Vector2(2, 10)], [Vector2(4, 23), Vector2(1, 1)], [Vector2(4, 25), Vector2(1, 7)], [Vector2(3, 26), Vector2(1, 1)], [Vector2(30, 26), Vector2(1, 6)], [Vector2(31, 27), Vector2(1, 5)], [Vector2(3, 29), Vector2(1, 3)], [Vector2(2, 30), Vector2(1, 2)], [Vector2(1, 31), Vector2(1, 1)]],
		6 : [[Vector2(11, 15), Vector2(2, 17)], [Vector2(18, 15), Vector2(7, 17)], [Vector2(10, 16), Vector2(1, 16)], [Vector2(13, 16), Vector2(5, 16)], [Vector2(25, 16), Vector2(3, 16)], [Vector2(28, 17), Vector2(1, 15)], [Vector2(29, 18), Vector2(1, 14)], [Vector2(30, 19), Vector2(1, 13)], [Vector2(8, 21), Vector2(2, 11)], [Vector2(31, 21), Vector2(1, 4)], [Vector2(5, 22), Vector2(3, 10)], [Vector2(4, 23), Vector2(1, 1)], [Vector2(4, 25), Vector2(1, 7)], [Vector2(3, 26), Vector2(1, 1)], [Vector2(31, 27), Vector2(1, 5)], [Vector2(3, 29), Vector2(1, 3)], [Vector2(2, 30), Vector2(1, 2)], [Vector2(1, 31), Vector2(1, 1)]],
		7 : [[Vector2(8, 20), Vector2(2, 12)], [Vector2(15, 20), Vector2(7, 12)], [Vector2(7, 21), Vector2(1, 11)], [Vector2(10, 21), Vector2(5, 11)], [Vector2(22, 21), Vector2(5, 11)], [Vector2(27, 22), Vector2(2, 10)], [Vector2(29, 23), Vector2(1, 9)], [Vector2(4, 24), Vector2(3, 8)], [Vector2(30, 24), Vector2(1, 3)], [Vector2(3, 25), Vector2(1, 1)], [Vector2(3, 27), Vector2(1, 5)], [Vector2(2, 28), Vector2(1, 1)], [Vector2(30, 29), Vector2(1, 3)], [Vector2(2, 30), Vector2(1, 2)], [Vector2(31, 30), Vector2(1, 2)], [Vector2(1, 31), Vector2(1, 1)]],
		8 : [[Vector2(8, 22), Vector2(2, 10)], [Vector2(15, 22), Vector2(7, 10)], [Vector2(7, 23), Vector2(1, 9)], [Vector2(10, 23), Vector2(5, 9)], [Vector2(22, 23), Vector2(5, 9)], [Vector2(27, 24), Vector2(2, 8)], [Vector2(29, 25), Vector2(1, 7)], [Vector2(4, 26), Vector2(3, 6)], [Vector2(30, 26), Vector2(1, 6)], [Vector2(3, 27), Vector2(1, 1)], [Vector2(3, 29), Vector2(1, 3)], [Vector2(2, 30), Vector2(1, 2)], [Vector2(31, 30), Vector2(1, 2)], [Vector2(1, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/alien_boss_die"
	},
	"alien_boss_disp" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(31, 31)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_boss_disp"
	},
	"alien_boss_hurt" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(31, 31)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_boss_hurt"
	},
	"alien_boss_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(31, 31)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_boss_tile"
	},
	"alien_deploy" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(3, 0), Vector2(10, 19)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_deploy"
	},
	"alien_eject" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(3, 8), Vector2(10, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_eject"
	},
	"alien_parachute" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 24)],
			"collision_rectangles" : [Vector2(3, 0), Vector2(10, 17)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/alien_parachute"
	},
	"bat_hang" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(3, 0), Vector2(11, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/bat_hang"
	},
	"bat_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(16, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/bat_left"
	},
	"bat_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(16, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/bat_right"
	},
	"dead_fish_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(8, 6)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/dead_fish_left"
	},
	"dead_fish_left_ico" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 5), Vector2(8, 6)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/dead_fish_left_ico"
	},
	"dead_fish_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(8, 6)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/dead_fish_right"
	},
	"fire_frog_armed_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 4), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/fire_frog_armed_l"
	},
	"fire_frog_jump_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 2), Vector2(14, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/fire_frog_jump_l"
	},
	"fire_frog_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 3), Vector2(14, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/fire_frog_left"
	},
	"frog_jump_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 2), Vector2(14, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/frog_jump_l"
	},
	"frog_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 4), Vector2(13, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/frog_left"
	},
	"olmec_slam" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 8)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(59, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/olmec_slam"
	},
	"piranha_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/piranha_left"
	},
	"piranha_left_ico" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 4), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/piranha_left_ico"
	},
	"piranha_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/piranha_right"
	},
	"sprite624" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(14, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/sprite624"
	},
	"sprite625" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/sprite625"
	},
	"sight" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/sight"
	},
	"snake_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 4), Vector2(14, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/snake_left"
	},
	"snake_walk_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/snake_walk_l"
	},
	"spider" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 5), Vector2(16, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/spider"
	},
	"spider_drown" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 6), Vector2(14, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/spider_drown"
	},
	"spider_drowning" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/spider_drowning"
	},
	"spider_flip" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/spider_flip"
	},
	"spider_hang" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/spider_hang"
	},
	"ufo" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/ufo"
	},
	"ufo_blast" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/ufo_blast"
	},
	"ufo_crash" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 4), Vector2(15, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/ufo_crash"
	},
	"zombie_jump_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/zombie_jump_l"
	},
	"zombie_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/zombie_left"
	},
	"caravan1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(10, 25), Vector2(12, 30)], [Vector2(8, 26), Vector2(2, 36)], [Vector2(22, 26), Vector2(2, 36)], [Vector2(7, 27), Vector2(1, 35)], [Vector2(24, 27), Vector2(1, 35)], [Vector2(6, 28), Vector2(1, 34)], [Vector2(25, 28), Vector2(1, 35)], [Vector2(5, 29), Vector2(1, 34)], [Vector2(26, 30), Vector2(1, 34)], [Vector2(4, 34), Vector2(1, 10)], [Vector2(27, 34), Vector2(1, 10)], [Vector2(3, 36), Vector2(1, 6)], [Vector2(28, 36), Vector2(1, 6)], [Vector2(27, 49), Vector2(1, 15)], [Vector2(28, 50), Vector2(1, 14)], [Vector2(4, 52), Vector2(1, 11)], [Vector2(29, 52), Vector2(1, 8)], [Vector2(10, 55), Vector2(5, 4)], [Vector2(20, 55), Vector2(2, 8)], [Vector2(30, 55), Vector2(1, 4)], [Vector2(3, 56), Vector2(1, 8)], [Vector2(19, 56), Vector2(1, 8)], [Vector2(2, 59), Vector2(1, 4)], [Vector2(10, 59), Vector2(4, 1)], [Vector2(18, 59), Vector2(1, 4)], [Vector2(10, 60), Vector2(3, 4)], [Vector2(1, 61), Vector2(1, 1)], [Vector2(17, 61), Vector2(1, 1)], [Vector2(9, 62), Vector2(1, 1)], [Vector2(13, 62), Vector2(1, 2)], [Vector2(29, 62), Vector2(1, 2)]],
		1 : [[Vector2(10, 26), Vector2(12, 30)], [Vector2(8, 27), Vector2(2, 36)], [Vector2(22, 27), Vector2(2, 35)], [Vector2(7, 28), Vector2(1, 34)], [Vector2(24, 28), Vector2(1, 35)], [Vector2(6, 29), Vector2(1, 33)], [Vector2(25, 29), Vector2(1, 35)], [Vector2(5, 30), Vector2(1, 34)], [Vector2(26, 31), Vector2(1, 19)], [Vector2(4, 35), Vector2(1, 10)], [Vector2(27, 35), Vector2(1, 10)], [Vector2(3, 37), Vector2(1, 6)], [Vector2(28, 37), Vector2(1, 6)], [Vector2(4, 51), Vector2(1, 13)], [Vector2(26, 51), Vector2(1, 13)], [Vector2(27, 52), Vector2(1, 12)], [Vector2(3, 54), Vector2(1, 10)], [Vector2(28, 54), Vector2(1, 10)], [Vector2(2, 56), Vector2(1, 8)], [Vector2(10, 56), Vector2(4, 6)], [Vector2(18, 56), Vector2(4, 8)], [Vector2(29, 56), Vector2(1, 6)], [Vector2(1, 57), Vector2(1, 4)], [Vector2(14, 57), Vector2(1, 4)], [Vector2(17, 57), Vector2(1, 4)], [Vector2(30, 57), Vector2(1, 4)], [Vector2(1, 62), Vector2(1, 2)], [Vector2(10, 62), Vector2(3, 2)], [Vector2(17, 62), Vector2(1, 2)], [Vector2(9, 63), Vector2(1, 1)]],
		2 : [[Vector2(10, 23), Vector2(12, 30)], [Vector2(8, 24), Vector2(2, 39)], [Vector2(22, 24), Vector2(2, 40)], [Vector2(7, 25), Vector2(1, 39)], [Vector2(24, 25), Vector2(1, 39)], [Vector2(6, 26), Vector2(1, 38)], [Vector2(25, 26), Vector2(1, 37)], [Vector2(5, 27), Vector2(1, 20)], [Vector2(26, 28), Vector2(1, 19)], [Vector2(4, 32), Vector2(1, 10)], [Vector2(27, 32), Vector2(1, 10)], [Vector2(3, 34), Vector2(1, 6)], [Vector2(28, 34), Vector2(1, 6)], [Vector2(5, 48), Vector2(1, 16)], [Vector2(4, 49), Vector2(1, 13)], [Vector2(26, 49), Vector2(1, 13)], [Vector2(27, 50), Vector2(1, 11)], [Vector2(3, 52), Vector2(1, 9)], [Vector2(28, 52), Vector2(1, 9)], [Vector2(10, 53), Vector2(3, 8)], [Vector2(19, 53), Vector2(3, 8)], [Vector2(2, 55), Vector2(1, 6)], [Vector2(13, 55), Vector2(1, 6)], [Vector2(18, 55), Vector2(1, 6)], [Vector2(29, 55), Vector2(1, 6)], [Vector2(1, 56), Vector2(1, 4)], [Vector2(14, 56), Vector2(1, 4)], [Vector2(17, 56), Vector2(1, 4)], [Vector2(30, 56), Vector2(1, 4)], [Vector2(10, 61), Vector2(1, 1)], [Vector2(20, 61), Vector2(2, 1)], [Vector2(21, 62), Vector2(1, 2)], [Vector2(8, 63), Vector2(1, 1)]],
		3 : [[Vector2(10, 21), Vector2(12, 30)], [Vector2(8, 22), Vector2(2, 42)], [Vector2(22, 22), Vector2(2, 41)], [Vector2(7, 23), Vector2(1, 40)], [Vector2(24, 23), Vector2(1, 41)], [Vector2(6, 24), Vector2(1, 39)], [Vector2(25, 24), Vector2(1, 40)], [Vector2(5, 25), Vector2(1, 20)], [Vector2(26, 26), Vector2(1, 19)], [Vector2(4, 30), Vector2(1, 10)], [Vector2(27, 30), Vector2(1, 10)], [Vector2(3, 32), Vector2(1, 6)], [Vector2(28, 32), Vector2(1, 6)], [Vector2(5, 48), Vector2(1, 15)], [Vector2(4, 49), Vector2(1, 14)], [Vector2(26, 49), Vector2(1, 15)], [Vector2(27, 50), Vector2(1, 11)], [Vector2(10, 51), Vector2(2, 10)], [Vector2(20, 51), Vector2(2, 12)], [Vector2(3, 52), Vector2(1, 11)], [Vector2(12, 52), Vector2(1, 8)], [Vector2(19, 52), Vector2(1, 11)], [Vector2(28, 52), Vector2(1, 8)], [Vector2(2, 55), Vector2(1, 6)], [Vector2(13, 55), Vector2(1, 6)], [Vector2(18, 55), Vector2(1, 6)], [Vector2(29, 55), Vector2(1, 6)], [Vector2(1, 56), Vector2(1, 5)], [Vector2(14, 56), Vector2(1, 5)], [Vector2(17, 56), Vector2(1, 5)], [Vector2(30, 56), Vector2(1, 5)], [Vector2(15, 57), Vector2(1, 3)], [Vector2(31, 57), Vector2(1, 3)], [Vector2(16, 58), Vector2(1, 2)], [Vector2(0, 59), Vector2(1, 1)], [Vector2(10, 61), Vector2(1, 3)], [Vector2(11, 62), Vector2(1, 2)], [Vector2(27, 62), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/caveman/caravan1"
	},
	"caravan2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 14), Vector2(7, 41)], [Vector2(12, 15), Vector2(1, 49)], [Vector2(20, 15), Vector2(1, 9)], [Vector2(11, 16), Vector2(1, 3)], [Vector2(21, 16), Vector2(1, 8)], [Vector2(22, 17), Vector2(1, 2)], [Vector2(11, 21), Vector2(1, 43)], [Vector2(22, 21), Vector2(1, 2)], [Vector2(10, 25), Vector2(1, 39)], [Vector2(20, 25), Vector2(2, 38)], [Vector2(8, 26), Vector2(2, 36)], [Vector2(22, 26), Vector2(2, 36)], [Vector2(7, 27), Vector2(1, 35)], [Vector2(24, 27), Vector2(1, 35)], [Vector2(6, 28), Vector2(1, 34)], [Vector2(25, 28), Vector2(1, 35)], [Vector2(5, 29), Vector2(1, 34)], [Vector2(26, 30), Vector2(1, 34)], [Vector2(4, 34), Vector2(1, 10)], [Vector2(27, 34), Vector2(1, 10)], [Vector2(3, 36), Vector2(1, 6)], [Vector2(28, 36), Vector2(1, 6)], [Vector2(27, 49), Vector2(1, 15)], [Vector2(28, 50), Vector2(1, 14)], [Vector2(4, 52), Vector2(1, 11)], [Vector2(29, 52), Vector2(1, 8)], [Vector2(13, 55), Vector2(2, 4)], [Vector2(30, 55), Vector2(1, 4)], [Vector2(3, 56), Vector2(1, 8)], [Vector2(19, 56), Vector2(1, 8)], [Vector2(2, 59), Vector2(1, 4)], [Vector2(13, 59), Vector2(1, 1)], [Vector2(18, 59), Vector2(1, 4)], [Vector2(1, 61), Vector2(1, 1)], [Vector2(17, 61), Vector2(1, 1)], [Vector2(9, 62), Vector2(1, 1)], [Vector2(13, 62), Vector2(1, 2)], [Vector2(29, 62), Vector2(1, 2)]],
		1 : [[Vector2(13, 15), Vector2(7, 41)], [Vector2(12, 16), Vector2(1, 48)], [Vector2(20, 16), Vector2(1, 9)], [Vector2(11, 17), Vector2(1, 3)], [Vector2(21, 17), Vector2(1, 8)], [Vector2(22, 18), Vector2(1, 2)], [Vector2(11, 22), Vector2(1, 42)], [Vector2(22, 22), Vector2(1, 2)], [Vector2(10, 26), Vector2(1, 38)], [Vector2(20, 26), Vector2(2, 38)], [Vector2(8, 27), Vector2(2, 36)], [Vector2(22, 27), Vector2(2, 35)], [Vector2(7, 28), Vector2(1, 34)], [Vector2(24, 28), Vector2(1, 35)], [Vector2(6, 29), Vector2(1, 33)], [Vector2(25, 29), Vector2(1, 35)], [Vector2(5, 30), Vector2(1, 34)], [Vector2(26, 31), Vector2(1, 19)], [Vector2(4, 35), Vector2(1, 10)], [Vector2(27, 35), Vector2(1, 10)], [Vector2(3, 37), Vector2(1, 6)], [Vector2(28, 37), Vector2(1, 6)], [Vector2(4, 51), Vector2(1, 13)], [Vector2(26, 51), Vector2(1, 13)], [Vector2(27, 52), Vector2(1, 12)], [Vector2(3, 54), Vector2(1, 10)], [Vector2(28, 54), Vector2(1, 10)], [Vector2(2, 56), Vector2(1, 8)], [Vector2(13, 56), Vector2(1, 6)], [Vector2(18, 56), Vector2(2, 8)], [Vector2(29, 56), Vector2(1, 6)], [Vector2(1, 57), Vector2(1, 4)], [Vector2(14, 57), Vector2(1, 4)], [Vector2(17, 57), Vector2(1, 4)], [Vector2(30, 57), Vector2(1, 4)], [Vector2(1, 62), Vector2(1, 2)], [Vector2(17, 62), Vector2(1, 2)], [Vector2(9, 63), Vector2(1, 1)]],
		2 : [[Vector2(13, 7), Vector2(7, 13)], [Vector2(12, 8), Vector2(1, 10)], [Vector2(20, 8), Vector2(1, 10)], [Vector2(11, 9), Vector2(1, 3)], [Vector2(21, 9), Vector2(1, 8)], [Vector2(22, 10), Vector2(1, 2)], [Vector2(11, 14), Vector2(1, 2)], [Vector2(22, 14), Vector2(1, 2)], [Vector2(12, 19), Vector2(1, 3)], [Vector2(11, 20), Vector2(1, 2)], [Vector2(13, 20), Vector2(6, 1)], [Vector2(10, 21), Vector2(1, 1)], [Vector2(13, 21), Vector2(5, 1)], [Vector2(10, 23), Vector2(12, 30)], [Vector2(8, 24), Vector2(2, 39)], [Vector2(22, 24), Vector2(2, 40)], [Vector2(7, 25), Vector2(1, 39)], [Vector2(24, 25), Vector2(1, 39)], [Vector2(6, 26), Vector2(1, 38)], [Vector2(25, 26), Vector2(1, 37)], [Vector2(5, 27), Vector2(1, 20)], [Vector2(26, 28), Vector2(1, 19)], [Vector2(4, 32), Vector2(1, 10)], [Vector2(27, 32), Vector2(1, 10)], [Vector2(3, 34), Vector2(1, 6)], [Vector2(28, 34), Vector2(1, 6)], [Vector2(5, 48), Vector2(1, 16)], [Vector2(4, 49), Vector2(1, 13)], [Vector2(26, 49), Vector2(1, 13)], [Vector2(27, 50), Vector2(1, 11)], [Vector2(3, 52), Vector2(1, 9)], [Vector2(28, 52), Vector2(1, 9)], [Vector2(10, 53), Vector2(3, 8)], [Vector2(19, 53), Vector2(3, 8)], [Vector2(2, 55), Vector2(1, 6)], [Vector2(13, 55), Vector2(1, 6)], [Vector2(18, 55), Vector2(1, 6)], [Vector2(29, 55), Vector2(1, 6)], [Vector2(1, 56), Vector2(1, 4)], [Vector2(14, 56), Vector2(1, 4)], [Vector2(17, 56), Vector2(1, 4)], [Vector2(30, 56), Vector2(1, 4)], [Vector2(10, 61), Vector2(1, 1)], [Vector2(20, 61), Vector2(2, 1)], [Vector2(21, 62), Vector2(1, 2)], [Vector2(8, 63), Vector2(1, 1)]],
		3 : [[Vector2(13, 5), Vector2(7, 13)], [Vector2(12, 6), Vector2(1, 10)], [Vector2(20, 6), Vector2(1, 10)], [Vector2(11, 7), Vector2(1, 3)], [Vector2(21, 7), Vector2(1, 8)], [Vector2(22, 8), Vector2(1, 2)], [Vector2(11, 12), Vector2(1, 2)], [Vector2(22, 12), Vector2(1, 2)], [Vector2(12, 17), Vector2(1, 3)], [Vector2(11, 18), Vector2(1, 2)], [Vector2(13, 18), Vector2(6, 1)], [Vector2(10, 19), Vector2(1, 1)], [Vector2(13, 19), Vector2(5, 1)], [Vector2(10, 21), Vector2(12, 30)], [Vector2(8, 22), Vector2(2, 42)], [Vector2(22, 22), Vector2(2, 41)], [Vector2(7, 23), Vector2(1, 40)], [Vector2(24, 23), Vector2(1, 41)], [Vector2(6, 24), Vector2(1, 39)], [Vector2(25, 24), Vector2(1, 40)], [Vector2(5, 25), Vector2(1, 20)], [Vector2(26, 26), Vector2(1, 19)], [Vector2(4, 30), Vector2(1, 10)], [Vector2(27, 30), Vector2(1, 10)], [Vector2(3, 32), Vector2(1, 6)], [Vector2(28, 32), Vector2(1, 6)], [Vector2(5, 48), Vector2(1, 15)], [Vector2(4, 49), Vector2(1, 14)], [Vector2(26, 49), Vector2(1, 15)], [Vector2(27, 50), Vector2(1, 11)], [Vector2(10, 51), Vector2(2, 10)], [Vector2(20, 51), Vector2(2, 12)], [Vector2(3, 52), Vector2(1, 11)], [Vector2(12, 52), Vector2(1, 8)], [Vector2(19, 52), Vector2(1, 11)], [Vector2(28, 52), Vector2(1, 8)], [Vector2(2, 55), Vector2(1, 6)], [Vector2(13, 55), Vector2(1, 6)], [Vector2(18, 55), Vector2(1, 6)], [Vector2(29, 55), Vector2(1, 6)], [Vector2(1, 56), Vector2(1, 5)], [Vector2(14, 56), Vector2(1, 5)], [Vector2(17, 56), Vector2(1, 5)], [Vector2(30, 56), Vector2(1, 5)], [Vector2(15, 57), Vector2(1, 3)], [Vector2(31, 57), Vector2(1, 3)], [Vector2(16, 58), Vector2(1, 2)], [Vector2(0, 59), Vector2(1, 1)], [Vector2(10, 61), Vector2(1, 3)], [Vector2(11, 62), Vector2(1, 2)], [Vector2(27, 62), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/caveman/caravan2"
	},
	"caravan3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 14), Vector2(6, 41)], [Vector2(12, 15), Vector2(1, 7)], [Vector2(19, 15), Vector2(1, 40)], [Vector2(10, 17), Vector2(2, 2)], [Vector2(20, 17), Vector2(1, 3)], [Vector2(21, 18), Vector2(2, 1)], [Vector2(21, 19), Vector2(1, 1)], [Vector2(11, 23), Vector2(2, 41)], [Vector2(20, 23), Vector2(1, 40)], [Vector2(10, 24), Vector2(1, 40)], [Vector2(8, 26), Vector2(2, 36)], [Vector2(21, 26), Vector2(3, 36)], [Vector2(7, 27), Vector2(1, 35)], [Vector2(24, 27), Vector2(1, 35)], [Vector2(6, 28), Vector2(1, 34)], [Vector2(25, 28), Vector2(1, 35)], [Vector2(5, 29), Vector2(1, 34)], [Vector2(26, 30), Vector2(1, 34)], [Vector2(4, 34), Vector2(1, 10)], [Vector2(27, 34), Vector2(1, 10)], [Vector2(3, 36), Vector2(1, 6)], [Vector2(28, 36), Vector2(1, 6)], [Vector2(27, 49), Vector2(1, 15)], [Vector2(28, 50), Vector2(1, 14)], [Vector2(4, 52), Vector2(1, 11)], [Vector2(29, 52), Vector2(1, 8)], [Vector2(13, 55), Vector2(2, 4)], [Vector2(30, 55), Vector2(1, 4)], [Vector2(3, 56), Vector2(1, 8)], [Vector2(19, 56), Vector2(1, 8)], [Vector2(2, 59), Vector2(1, 4)], [Vector2(13, 59), Vector2(1, 1)], [Vector2(18, 59), Vector2(1, 4)], [Vector2(1, 61), Vector2(1, 1)], [Vector2(17, 61), Vector2(1, 1)], [Vector2(9, 62), Vector2(1, 1)], [Vector2(13, 62), Vector2(1, 2)], [Vector2(21, 62), Vector2(1, 1)], [Vector2(29, 62), Vector2(1, 2)]],
		1 : [[Vector2(13, 15), Vector2(6, 41)], [Vector2(12, 16), Vector2(1, 7)], [Vector2(19, 16), Vector2(1, 48)], [Vector2(10, 18), Vector2(2, 2)], [Vector2(20, 18), Vector2(1, 3)], [Vector2(21, 19), Vector2(2, 1)], [Vector2(21, 20), Vector2(1, 1)], [Vector2(11, 24), Vector2(2, 40)], [Vector2(20, 24), Vector2(1, 40)], [Vector2(10, 25), Vector2(1, 39)], [Vector2(8, 27), Vector2(2, 36)], [Vector2(21, 27), Vector2(3, 35)], [Vector2(7, 28), Vector2(1, 34)], [Vector2(24, 28), Vector2(1, 35)], [Vector2(6, 29), Vector2(1, 33)], [Vector2(25, 29), Vector2(1, 35)], [Vector2(5, 30), Vector2(1, 34)], [Vector2(26, 31), Vector2(1, 19)], [Vector2(4, 35), Vector2(1, 10)], [Vector2(27, 35), Vector2(1, 10)], [Vector2(3, 37), Vector2(1, 6)], [Vector2(28, 37), Vector2(1, 6)], [Vector2(4, 51), Vector2(1, 13)], [Vector2(26, 51), Vector2(1, 13)], [Vector2(27, 52), Vector2(1, 12)], [Vector2(3, 54), Vector2(1, 10)], [Vector2(28, 54), Vector2(1, 10)], [Vector2(2, 56), Vector2(1, 8)], [Vector2(13, 56), Vector2(1, 6)], [Vector2(18, 56), Vector2(1, 8)], [Vector2(29, 56), Vector2(1, 6)], [Vector2(1, 57), Vector2(1, 4)], [Vector2(14, 57), Vector2(1, 4)], [Vector2(17, 57), Vector2(1, 4)], [Vector2(30, 57), Vector2(1, 4)], [Vector2(1, 62), Vector2(1, 2)], [Vector2(17, 62), Vector2(1, 2)], [Vector2(21, 62), Vector2(1, 2)], [Vector2(9, 63), Vector2(1, 1)]],
		2 : [[Vector2(13, 7), Vector2(6, 13)], [Vector2(12, 8), Vector2(1, 6)], [Vector2(19, 8), Vector2(1, 12)], [Vector2(11, 9), Vector2(1, 2)], [Vector2(20, 9), Vector2(1, 3)], [Vector2(10, 10), Vector2(1, 2)], [Vector2(21, 11), Vector2(1, 2)], [Vector2(11, 15), Vector2(2, 5)], [Vector2(20, 15), Vector2(1, 4)], [Vector2(10, 16), Vector2(1, 2)], [Vector2(10, 23), Vector2(12, 30)], [Vector2(8, 24), Vector2(2, 39)], [Vector2(22, 24), Vector2(2, 40)], [Vector2(7, 25), Vector2(1, 39)], [Vector2(24, 25), Vector2(1, 39)], [Vector2(6, 26), Vector2(1, 38)], [Vector2(25, 26), Vector2(1, 37)], [Vector2(5, 27), Vector2(1, 20)], [Vector2(26, 28), Vector2(1, 19)], [Vector2(4, 32), Vector2(1, 10)], [Vector2(27, 32), Vector2(1, 10)], [Vector2(3, 34), Vector2(1, 6)], [Vector2(28, 34), Vector2(1, 6)], [Vector2(5, 48), Vector2(1, 16)], [Vector2(4, 49), Vector2(1, 13)], [Vector2(26, 49), Vector2(1, 13)], [Vector2(27, 50), Vector2(1, 11)], [Vector2(3, 52), Vector2(1, 9)], [Vector2(28, 52), Vector2(1, 9)], [Vector2(10, 53), Vector2(3, 8)], [Vector2(19, 53), Vector2(3, 8)], [Vector2(2, 55), Vector2(1, 6)], [Vector2(13, 55), Vector2(1, 6)], [Vector2(18, 55), Vector2(1, 6)], [Vector2(29, 55), Vector2(1, 6)], [Vector2(1, 56), Vector2(1, 4)], [Vector2(14, 56), Vector2(1, 4)], [Vector2(17, 56), Vector2(1, 4)], [Vector2(30, 56), Vector2(1, 4)], [Vector2(10, 61), Vector2(1, 1)], [Vector2(20, 61), Vector2(2, 1)], [Vector2(21, 62), Vector2(1, 2)], [Vector2(8, 63), Vector2(1, 1)]],
		3 : [[Vector2(13, 5), Vector2(6, 15)], [Vector2(12, 6), Vector2(1, 8)], [Vector2(19, 6), Vector2(1, 14)], [Vector2(10, 7), Vector2(2, 2)], [Vector2(21, 7), Vector2(1, 3)], [Vector2(20, 8), Vector2(1, 4)], [Vector2(22, 8), Vector2(1, 2)], [Vector2(11, 9), Vector2(1, 1)], [Vector2(11, 15), Vector2(2, 5)], [Vector2(20, 15), Vector2(1, 4)], [Vector2(10, 16), Vector2(1, 2)], [Vector2(10, 21), Vector2(12, 30)], [Vector2(8, 22), Vector2(2, 42)], [Vector2(22, 22), Vector2(2, 41)], [Vector2(7, 23), Vector2(1, 40)], [Vector2(24, 23), Vector2(1, 41)], [Vector2(6, 24), Vector2(1, 39)], [Vector2(25, 24), Vector2(1, 40)], [Vector2(5, 25), Vector2(1, 20)], [Vector2(26, 26), Vector2(1, 19)], [Vector2(4, 30), Vector2(1, 10)], [Vector2(27, 30), Vector2(1, 10)], [Vector2(3, 32), Vector2(1, 6)], [Vector2(28, 32), Vector2(1, 6)], [Vector2(5, 48), Vector2(1, 15)], [Vector2(4, 49), Vector2(1, 14)], [Vector2(26, 49), Vector2(1, 15)], [Vector2(27, 50), Vector2(1, 11)], [Vector2(10, 51), Vector2(2, 10)], [Vector2(20, 51), Vector2(2, 12)], [Vector2(3, 52), Vector2(1, 11)], [Vector2(12, 52), Vector2(1, 8)], [Vector2(19, 52), Vector2(1, 11)], [Vector2(28, 52), Vector2(1, 8)], [Vector2(2, 55), Vector2(1, 6)], [Vector2(13, 55), Vector2(1, 6)], [Vector2(18, 55), Vector2(1, 6)], [Vector2(29, 55), Vector2(1, 6)], [Vector2(1, 56), Vector2(1, 5)], [Vector2(14, 56), Vector2(1, 5)], [Vector2(17, 56), Vector2(1, 5)], [Vector2(30, 56), Vector2(1, 5)], [Vector2(15, 57), Vector2(1, 3)], [Vector2(31, 57), Vector2(1, 3)], [Vector2(16, 58), Vector2(1, 2)], [Vector2(0, 59), Vector2(1, 1)], [Vector2(10, 61), Vector2(1, 3)], [Vector2(11, 62), Vector2(1, 2)], [Vector2(27, 62), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/caveman/caravan3"
	},
	"caveman_bounce_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_bounce_l"
	},
	"caveman_dead_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 7), Vector2(16, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_dead_l"
	},
	"caveman_d_held_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 4), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_d_held_l"
	},
	"caveman_die_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_die_ll"
	},
	"caveman_die_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_die_lr"
	},
	"caveman_fall_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_fall_l"
	},
	"caveman_held_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(16, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_held_l"
	},
	"caveman_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_left"
	},
	"caveman_run_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_run_left"
	},
	"caveman_stun_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(16, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/caveman_stun_l"
	},
	"cave_man_worship_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 1), Vector2(5, 15)], [Vector2(6, 2), Vector2(1, 13)], [Vector2(12, 2), Vector2(1, 14)], [Vector2(13, 3), Vector2(1, 13)], [Vector2(4, 5), Vector2(2, 5)], [Vector2(14, 5), Vector2(1, 11)], [Vector2(15, 6), Vector2(1, 5)], [Vector2(5, 10), Vector2(1, 4)], [Vector2(15, 14), Vector2(1, 1)]],
		1 : [[Vector2(7, 1), Vector2(5, 15)], [Vector2(6, 2), Vector2(1, 13)], [Vector2(12, 2), Vector2(1, 14)], [Vector2(13, 3), Vector2(1, 13)], [Vector2(5, 5), Vector2(1, 9)], [Vector2(14, 5), Vector2(1, 11)], [Vector2(3, 7), Vector2(2, 4)], [Vector2(2, 8), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 1)]],
		2 : [[Vector2(6, 2), Vector2(5, 13)], [Vector2(5, 3), Vector2(1, 11)], [Vector2(11, 3), Vector2(1, 13)], [Vector2(12, 4), Vector2(1, 12)], [Vector2(4, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 10)], [Vector2(2, 8), Vector2(2, 4)], [Vector2(1, 9), Vector2(1, 2)], [Vector2(14, 10), Vector2(1, 6)], [Vector2(15, 14), Vector2(1, 1)], [Vector2(7, 15), Vector2(4, 1)]],
		3 : [[Vector2(3, 7), Vector2(5, 9)], [Vector2(2, 8), Vector2(1, 8)], [Vector2(8, 8), Vector2(4, 8)], [Vector2(12, 9), Vector2(1, 7)], [Vector2(13, 10), Vector2(1, 6)], [Vector2(1, 11), Vector2(1, 5)], [Vector2(14, 11), Vector2(1, 5)], [Vector2(0, 13), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 1)]],
		4 : [[Vector2(3, 7), Vector2(5, 9)], [Vector2(2, 8), Vector2(1, 8)], [Vector2(8, 8), Vector2(4, 8)], [Vector2(12, 9), Vector2(1, 7)], [Vector2(13, 10), Vector2(1, 6)], [Vector2(1, 11), Vector2(1, 5)], [Vector2(14, 11), Vector2(1, 5)], [Vector2(0, 13), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 1)]],
		5 : [[Vector2(6, 2), Vector2(5, 13)], [Vector2(5, 3), Vector2(1, 11)], [Vector2(11, 3), Vector2(1, 13)], [Vector2(12, 4), Vector2(1, 12)], [Vector2(4, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 10)], [Vector2(2, 8), Vector2(2, 4)], [Vector2(1, 9), Vector2(1, 2)], [Vector2(14, 10), Vector2(1, 6)], [Vector2(15, 14), Vector2(1, 1)], [Vector2(7, 15), Vector2(4, 1)]],
		6 : [[Vector2(7, 1), Vector2(5, 15)], [Vector2(6, 2), Vector2(1, 13)], [Vector2(12, 2), Vector2(1, 14)], [Vector2(13, 3), Vector2(1, 13)], [Vector2(5, 5), Vector2(1, 9)], [Vector2(14, 5), Vector2(1, 11)], [Vector2(3, 7), Vector2(2, 4)], [Vector2(2, 8), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/caveman/cave_man_worship_l"
	},
	"caveman_worship_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 1), Vector2(5, 15)], [Vector2(3, 2), Vector2(1, 14)], [Vector2(9, 2), Vector2(1, 13)], [Vector2(2, 3), Vector2(1, 13)], [Vector2(1, 5), Vector2(1, 11)], [Vector2(10, 5), Vector2(2, 5)], [Vector2(0, 6), Vector2(1, 5)], [Vector2(10, 10), Vector2(1, 4)], [Vector2(0, 14), Vector2(1, 1)]],
		1 : [[Vector2(4, 1), Vector2(5, 15)], [Vector2(3, 2), Vector2(1, 14)], [Vector2(9, 2), Vector2(1, 13)], [Vector2(2, 3), Vector2(1, 13)], [Vector2(1, 5), Vector2(1, 11)], [Vector2(10, 5), Vector2(1, 9)], [Vector2(12, 5), Vector2(1, 5)], [Vector2(11, 6), Vector2(1, 5)], [Vector2(13, 6), Vector2(1, 3)], [Vector2(0, 14), Vector2(1, 1)]],
		2 : [[Vector2(5, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(1, 13)], [Vector2(10, 3), Vector2(1, 11)], [Vector2(3, 4), Vector2(1, 12)], [Vector2(2, 6), Vector2(1, 10)], [Vector2(11, 6), Vector2(1, 6)], [Vector2(12, 8), Vector2(2, 4)], [Vector2(14, 9), Vector2(1, 2)], [Vector2(1, 10), Vector2(1, 6)], [Vector2(0, 14), Vector2(1, 1)], [Vector2(5, 15), Vector2(4, 1)]],
		3 : [[Vector2(6, 3), Vector2(5, 11)], [Vector2(5, 4), Vector2(1, 12)], [Vector2(11, 4), Vector2(1, 10)], [Vector2(4, 5), Vector2(1, 11)], [Vector2(3, 7), Vector2(1, 9)], [Vector2(12, 7), Vector2(1, 6)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(2, 4)], [Vector2(1, 10), Vector2(1, 6)], [Vector2(15, 10), Vector2(1, 2)], [Vector2(0, 14), Vector2(1, 1)], [Vector2(6, 14), Vector2(4, 1)], [Vector2(6, 15), Vector2(3, 1)]],
		4 : [[Vector2(8, 7), Vector2(5, 9)], [Vector2(4, 8), Vector2(4, 8)], [Vector2(13, 8), Vector2(1, 8)], [Vector2(3, 9), Vector2(1, 7)], [Vector2(2, 10), Vector2(1, 6)], [Vector2(1, 11), Vector2(1, 5)], [Vector2(14, 11), Vector2(1, 5)], [Vector2(15, 13), Vector2(1, 3)]],
		5 : [[Vector2(8, 7), Vector2(5, 9)], [Vector2(4, 8), Vector2(4, 8)], [Vector2(13, 8), Vector2(1, 8)], [Vector2(3, 9), Vector2(1, 7)], [Vector2(2, 10), Vector2(1, 6)], [Vector2(1, 11), Vector2(1, 5)], [Vector2(14, 11), Vector2(1, 5)], [Vector2(15, 13), Vector2(1, 3)]],
		6 : [[Vector2(6, 3), Vector2(5, 11)], [Vector2(5, 4), Vector2(1, 12)], [Vector2(11, 4), Vector2(1, 10)], [Vector2(4, 5), Vector2(1, 11)], [Vector2(3, 7), Vector2(1, 9)], [Vector2(12, 7), Vector2(1, 6)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(2, 4)], [Vector2(1, 10), Vector2(1, 6)], [Vector2(15, 10), Vector2(1, 2)], [Vector2(0, 14), Vector2(1, 1)], [Vector2(6, 14), Vector2(4, 1)], [Vector2(6, 15), Vector2(3, 1)]],
		7 : [[Vector2(5, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(1, 13)], [Vector2(10, 3), Vector2(1, 11)], [Vector2(3, 4), Vector2(1, 12)], [Vector2(2, 6), Vector2(1, 10)], [Vector2(11, 6), Vector2(1, 6)], [Vector2(12, 8), Vector2(2, 4)], [Vector2(14, 9), Vector2(1, 2)], [Vector2(1, 10), Vector2(1, 6)], [Vector2(0, 14), Vector2(1, 1)], [Vector2(5, 15), Vector2(4, 1)]],
		8 : [[Vector2(4, 1), Vector2(5, 15)], [Vector2(3, 2), Vector2(1, 14)], [Vector2(9, 2), Vector2(1, 13)], [Vector2(2, 3), Vector2(1, 13)], [Vector2(1, 5), Vector2(1, 11)], [Vector2(10, 5), Vector2(1, 9)], [Vector2(12, 5), Vector2(1, 5)], [Vector2(11, 6), Vector2(1, 5)], [Vector2(13, 6), Vector2(1, 3)], [Vector2(0, 14), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/caveman/caveman_worship_r"
	},
	"frozen_caveman" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(13, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/caveman/frozen_caveman"
	},
	"ghost_disappear" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : {
				0 : [[Vector2(11, 0), Vector2(5, 5)], [Vector2(10, 1), Vector2(1, 13)], [Vector2(16, 1), Vector2(1, 4)], [Vector2(9, 3), Vector2(1, 10)], [Vector2(17, 3), Vector2(1, 8)], [Vector2(12, 5), Vector2(4, 2)], [Vector2(8, 6), Vector2(1, 7)], [Vector2(7, 7), Vector2(1, 7)], [Vector2(11, 7), Vector2(3, 1)], [Vector2(15, 7), Vector2(2, 1)], [Vector2(6, 8), Vector2(1, 6)], [Vector2(11, 8), Vector2(2, 16)], [Vector2(16, 8), Vector2(1, 4)], [Vector2(5, 9), Vector2(1, 15)], [Vector2(4, 11), Vector2(1, 12)], [Vector2(13, 11), Vector2(1, 13)], [Vector2(15, 11), Vector2(1, 2)], [Vector2(18, 11), Vector2(1, 3)], [Vector2(14, 12), Vector2(1, 11)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(3, 13), Vector2(1, 9)], [Vector2(16, 13), Vector2(1, 9)], [Vector2(8, 14), Vector2(2, 3)], [Vector2(15, 14), Vector2(1, 8)], [Vector2(19, 14), Vector2(2, 3)], [Vector2(6, 15), Vector2(2, 1)], [Vector2(7, 16), Vector2(1, 2)], [Vector2(18, 16), Vector2(1, 6)], [Vector2(8, 17), Vector2(1, 1)], [Vector2(10, 17), Vector2(1, 7)], [Vector2(19, 17), Vector2(1, 3)], [Vector2(9, 19), Vector2(1, 5)], [Vector2(6, 20), Vector2(1, 4)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(7, 21), Vector2(1, 3)]],
		1 : [[Vector2(11, 0), Vector2(5, 5)], [Vector2(10, 1), Vector2(1, 13)], [Vector2(16, 1), Vector2(1, 4)], [Vector2(9, 2), Vector2(1, 11)], [Vector2(8, 3), Vector2(1, 2)], [Vector2(17, 3), Vector2(1, 8)], [Vector2(18, 4), Vector2(1, 4)], [Vector2(12, 5), Vector2(4, 2)], [Vector2(19, 5), Vector2(1, 2)], [Vector2(8, 6), Vector2(1, 12)], [Vector2(7, 7), Vector2(1, 11)], [Vector2(11, 7), Vector2(3, 1)], [Vector2(15, 7), Vector2(2, 1)], [Vector2(4, 8), Vector2(3, 8)], [Vector2(11, 8), Vector2(2, 16)], [Vector2(16, 8), Vector2(1, 4)], [Vector2(3, 9), Vector2(1, 2)], [Vector2(13, 11), Vector2(1, 13)], [Vector2(15, 11), Vector2(1, 2)], [Vector2(18, 11), Vector2(1, 3)], [Vector2(14, 12), Vector2(1, 11)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(3, 13), Vector2(1, 9)], [Vector2(16, 13), Vector2(1, 9)], [Vector2(20, 13), Vector2(2, 3)], [Vector2(9, 14), Vector2(1, 3)], [Vector2(15, 14), Vector2(1, 8)], [Vector2(19, 14), Vector2(1, 6)], [Vector2(4, 16), Vector2(2, 7)], [Vector2(18, 16), Vector2(1, 6)], [Vector2(20, 16), Vector2(1, 1)], [Vector2(2, 17), Vector2(1, 2)], [Vector2(10, 17), Vector2(1, 7)], [Vector2(9, 19), Vector2(1, 5)], [Vector2(6, 20), Vector2(1, 4)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(7, 21), Vector2(1, 3)], [Vector2(5, 23), Vector2(1, 1)]],
		2 : [[Vector2(9, 2), Vector2(4, 1)], [Vector2(8, 3), Vector2(3, 1)], [Vector2(8, 4), Vector2(2, 1)], [Vector2(8, 5), Vector2(1, 1)], [Vector2(9, 6), Vector2(1, 1)]],
		3 : [[Vector2(12, 4), Vector2(1, 4)], [Vector2(13, 5), Vector2(1, 2)], [Vector2(9, 6), Vector2(1, 1)], [Vector2(11, 6), Vector2(1, 2)], [Vector2(10, 7), Vector2(1, 1)]],
		4 : [[Vector2(10, 3), Vector2(2, 1)], [Vector2(11, 4), Vector2(2, 1)], [Vector2(12, 5), Vector2(1, 2)]],
		5 : [[Vector2(10, 3), Vector2(2, 1)], [Vector2(9, 4), Vector2(1, 1)]],
		6 : [[Vector2(7, 1), Vector2(2, 4)], [Vector2(16, 1), Vector2(2, 5)], [Vector2(6, 2), Vector2(1, 2)], [Vector2(9, 2), Vector2(1, 15)], [Vector2(15, 2), Vector2(1, 8)], [Vector2(18, 2), Vector2(1, 3)], [Vector2(11, 3), Vector2(3, 3)], [Vector2(10, 4), Vector2(1, 11)], [Vector2(14, 4), Vector2(1, 5)], [Vector2(19, 5), Vector2(2, 4)], [Vector2(2, 6), Vector2(2, 4)], [Vector2(8, 6), Vector2(1, 12)], [Vector2(12, 6), Vector2(2, 3)], [Vector2(18, 6), Vector2(1, 2)], [Vector2(21, 6), Vector2(1, 2)], [Vector2(1, 7), Vector2(1, 2)], [Vector2(4, 7), Vector2(1, 3)], [Vector2(7, 7), Vector2(1, 11)], [Vector2(11, 7), Vector2(1, 17)], [Vector2(16, 7), Vector2(2, 4)], [Vector2(6, 9), Vector2(1, 8)], [Vector2(12, 9), Vector2(1, 15)], [Vector2(13, 10), Vector2(2, 13)], [Vector2(5, 11), Vector2(1, 12)], [Vector2(15, 11), Vector2(2, 11)], [Vector2(18, 11), Vector2(1, 4)], [Vector2(4, 12), Vector2(1, 8)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(3, 13), Vector2(1, 3)], [Vector2(19, 14), Vector2(4, 2)], [Vector2(18, 16), Vector2(1, 6)], [Vector2(20, 16), Vector2(3, 1)], [Vector2(2, 17), Vector2(2, 4)], [Vector2(10, 17), Vector2(1, 7)], [Vector2(19, 17), Vector2(3, 1)], [Vector2(1, 18), Vector2(1, 2)], [Vector2(9, 18), Vector2(1, 6)], [Vector2(19, 18), Vector2(1, 2)], [Vector2(6, 19), Vector2(1, 4)], [Vector2(8, 19), Vector2(1, 4)], [Vector2(7, 20), Vector2(1, 3)], [Vector2(4, 21), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 1)]],
		7 : [[Vector2(7, 0), Vector2(2, 2)], [Vector2(17, 0), Vector2(2, 2)], [Vector2(6, 1), Vector2(1, 1)], [Vector2(11, 1), Vector2(1, 3)], [Vector2(16, 1), Vector2(1, 3)], [Vector2(7, 2), Vector2(1, 1)], [Vector2(10, 2), Vector2(1, 4)], [Vector2(12, 2), Vector2(1, 3)], [Vector2(17, 2), Vector2(1, 1)], [Vector2(13, 3), Vector2(1, 5)], [Vector2(9, 4), Vector2(1, 5)], [Vector2(20, 4), Vector2(2, 2)], [Vector2(2, 5), Vector2(1, 3)], [Vector2(16, 5), Vector2(2, 2)], [Vector2(3, 6), Vector2(1, 3)], [Vector2(12, 6), Vector2(1, 3)], [Vector2(10, 7), Vector2(2, 3)], [Vector2(17, 7), Vector2(1, 1)], [Vector2(14, 8), Vector2(3, 5)], [Vector2(7, 9), Vector2(2, 5)], [Vector2(13, 9), Vector2(1, 4)], [Vector2(17, 9), Vector2(1, 3)], [Vector2(6, 10), Vector2(1, 3)], [Vector2(9, 10), Vector2(1, 3)], [Vector2(11, 10), Vector2(1, 1)], [Vector2(4, 12), Vector2(2, 2)], [Vector2(20, 12), Vector2(1, 5)], [Vector2(19, 13), Vector2(1, 3)], [Vector2(21, 13), Vector2(1, 3)], [Vector2(14, 14), Vector2(2, 2)], [Vector2(11, 15), Vector2(2, 5)], [Vector2(10, 16), Vector2(1, 3)], [Vector2(13, 16), Vector2(1, 3)], [Vector2(2, 17), Vector2(2, 2)], [Vector2(6, 17), Vector2(2, 2)], [Vector2(18, 17), Vector2(1, 3)], [Vector2(8, 18), Vector2(1, 2)], [Vector2(17, 18), Vector2(1, 3)], [Vector2(3, 19), Vector2(1, 1)], [Vector2(7, 19), Vector2(1, 1)], [Vector2(10, 21), Vector2(1, 1)]],
		8 : [[Vector2(7, 0), Vector2(2, 2)], [Vector2(11, 1), Vector2(1, 1)], [Vector2(17, 1), Vector2(1, 1)], [Vector2(7, 2), Vector2(1, 1)], [Vector2(10, 2), Vector2(1, 5)], [Vector2(12, 2), Vector2(1, 1)], [Vector2(13, 3), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 3)], [Vector2(20, 4), Vector2(1, 2)], [Vector2(2, 5), Vector2(1, 2)], [Vector2(11, 5), Vector2(1, 4)], [Vector2(16, 5), Vector2(2, 1)], [Vector2(3, 6), Vector2(1, 2)], [Vector2(14, 6), Vector2(1, 6)], [Vector2(16, 6), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 5)], [Vector2(15, 7), Vector2(1, 3)], [Vector2(17, 7), Vector2(2, 3)], [Vector2(8, 8), Vector2(1, 4)], [Vector2(6, 9), Vector2(1, 3)], [Vector2(17, 10), Vector2(1, 1)], [Vector2(20, 10), Vector2(1, 5)], [Vector2(19, 11), Vector2(1, 3)], [Vector2(21, 11), Vector2(1, 3)], [Vector2(4, 12), Vector2(2, 1)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(14, 13), Vector2(2, 2)], [Vector2(11, 14), Vector2(2, 4)], [Vector2(2, 15), Vector2(1, 2)], [Vector2(10, 15), Vector2(1, 2)], [Vector2(13, 15), Vector2(1, 1)], [Vector2(18, 15), Vector2(1, 3)], [Vector2(3, 16), Vector2(1, 2)], [Vector2(6, 16), Vector2(2, 2)], [Vector2(17, 16), Vector2(1, 3)], [Vector2(8, 17), Vector2(1, 2)], [Vector2(7, 18), Vector2(1, 1)], [Vector2(11, 18), Vector2(1, 1)], [Vector2(10, 20), Vector2(1, 1)]],
		9 : [[Vector2(7, 0), Vector2(1, 2)], [Vector2(11, 0), Vector2(1, 1)], [Vector2(17, 0), Vector2(1, 2)], [Vector2(10, 1), Vector2(1, 4)], [Vector2(12, 1), Vector2(1, 1)], [Vector2(16, 1), Vector2(1, 2)], [Vector2(13, 2), Vector2(1, 7)], [Vector2(11, 3), Vector2(2, 2)], [Vector2(17, 3), Vector2(2, 3)], [Vector2(20, 3), Vector2(1, 2)], [Vector2(2, 4), Vector2(1, 2)], [Vector2(14, 4), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 2)], [Vector2(15, 5), Vector2(1, 3)], [Vector2(7, 6), Vector2(1, 3)], [Vector2(17, 6), Vector2(1, 1)], [Vector2(20, 7), Vector2(1, 5)], [Vector2(6, 8), Vector2(1, 2)], [Vector2(19, 8), Vector2(1, 1)], [Vector2(21, 8), Vector2(1, 3)], [Vector2(8, 10), Vector2(1, 2)], [Vector2(4, 11), Vector2(2, 1)], [Vector2(15, 11), Vector2(1, 2)], [Vector2(5, 12), Vector2(1, 1)], [Vector2(11, 12), Vector2(2, 4)], [Vector2(10, 13), Vector2(1, 2)], [Vector2(13, 13), Vector2(1, 1)], [Vector2(18, 13), Vector2(1, 1)], [Vector2(2, 14), Vector2(1, 2)], [Vector2(17, 14), Vector2(1, 1)], [Vector2(3, 15), Vector2(1, 2)], [Vector2(6, 15), Vector2(1, 2)], [Vector2(18, 15), Vector2(1, 1)], [Vector2(7, 16), Vector2(1, 2)], [Vector2(11, 16), Vector2(1, 1)], [Vector2(10, 18), Vector2(1, 1)]],
		10 : [[Vector2(7, 0), Vector2(1, 1)], [Vector2(11, 0), Vector2(1, 1)], [Vector2(17, 0), Vector2(1, 2)], [Vector2(10, 1), Vector2(1, 2)], [Vector2(12, 1), Vector2(1, 1)], [Vector2(16, 1), Vector2(1, 5)], [Vector2(11, 2), Vector2(1, 3)], [Vector2(13, 2), Vector2(1, 6)], [Vector2(3, 3), Vector2(1, 1)], [Vector2(12, 3), Vector2(1, 2)], [Vector2(17, 3), Vector2(1, 1)], [Vector2(19, 3), Vector2(1, 1)], [Vector2(14, 4), Vector2(1, 5)], [Vector2(8, 5), Vector2(1, 2)], [Vector2(15, 5), Vector2(1, 2)], [Vector2(7, 6), Vector2(1, 2)], [Vector2(19, 6), Vector2(1, 3)], [Vector2(18, 7), Vector2(1, 1)], [Vector2(20, 7), Vector2(1, 1)], [Vector2(9, 8), Vector2(1, 2)], [Vector2(5, 9), Vector2(2, 1)], [Vector2(6, 10), Vector2(1, 1)], [Vector2(12, 10), Vector2(1, 5)], [Vector2(15, 10), Vector2(1, 2)], [Vector2(11, 11), Vector2(1, 3)], [Vector2(13, 11), Vector2(1, 2)], [Vector2(3, 12), Vector2(1, 1)], [Vector2(17, 12), Vector2(1, 1)], [Vector2(4, 13), Vector2(1, 1)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(16, 13), Vector2(1, 1)], [Vector2(17, 14), Vector2(1, 1)], [Vector2(10, 17), Vector2(1, 1)]],
		11 : [[Vector2(8, 0), Vector2(1, 1)], [Vector2(11, 0), Vector2(1, 1)], [Vector2(15, 0), Vector2(1, 4)], [Vector2(12, 1), Vector2(1, 4)], [Vector2(14, 1), Vector2(1, 5)], [Vector2(11, 2), Vector2(1, 2)], [Vector2(13, 2), Vector2(1, 4)], [Vector2(5, 3), Vector2(1, 1)], [Vector2(17, 3), Vector2(1, 2)], [Vector2(9, 5), Vector2(1, 2)], [Vector2(10, 6), Vector2(1, 2)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 2)], [Vector2(5, 8), Vector2(1, 1)], [Vector2(6, 9), Vector2(1, 1)], [Vector2(11, 9), Vector2(1, 2)], [Vector2(15, 9), Vector2(1, 1)], [Vector2(8, 10), Vector2(1, 1)], [Vector2(12, 10), Vector2(1, 2)], [Vector2(14, 10), Vector2(1, 1)], [Vector2(15, 11), Vector2(1, 1)]],
		12 : [[Vector2(12, 0), Vector2(1, 4)], [Vector2(11, 1), Vector2(1, 4)], [Vector2(8, 2), Vector2(1, 1)], [Vector2(10, 2), Vector2(1, 1)], [Vector2(14, 3), Vector2(1, 2)], [Vector2(9, 4), Vector2(1, 1)], [Vector2(10, 5), Vector2(1, 1)], [Vector2(12, 5), Vector2(1, 1)], [Vector2(11, 6), Vector2(1, 1)], [Vector2(12, 7), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 1)]],
		13 : [[Vector2(10, 1), Vector2(3, 2)], [Vector2(9, 2), Vector2(1, 3)], [Vector2(13, 2), Vector2(1, 3)], [Vector2(10, 3), Vector2(1, 1)], [Vector2(12, 3), Vector2(1, 1)], [Vector2(14, 3), Vector2(1, 1)], [Vector2(14, 5), Vector2(1, 1)], [Vector2(13, 6), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/ghost/ghost_disappear"
	},
	"ghost_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(5, 2)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(7, 2), Vector2(4, 3)], [Vector2(4, 3), Vector2(1, 2)], [Vector2(11, 3), Vector2(1, 11)], [Vector2(12, 4), Vector2(1, 9)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(7, 5), Vector2(2, 3)], [Vector2(10, 5), Vector2(1, 19)], [Vector2(13, 5), Vector2(1, 8)], [Vector2(14, 6), Vector2(1, 8)], [Vector2(4, 7), Vector2(1, 5)], [Vector2(9, 7), Vector2(1, 16)], [Vector2(15, 7), Vector2(2, 5)], [Vector2(8, 8), Vector2(1, 15)], [Vector2(17, 8), Vector2(1, 16)], [Vector2(18, 9), Vector2(1, 15)], [Vector2(19, 10), Vector2(1, 14)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(7, 11), Vector2(1, 3)], [Vector2(20, 11), Vector2(1, 9)], [Vector2(6, 12), Vector2(1, 2)], [Vector2(15, 12), Vector2(1, 1)], [Vector2(16, 13), Vector2(1, 11)], [Vector2(21, 13), Vector2(1, 5)], [Vector2(0, 14), Vector2(2, 3)], [Vector2(5, 14), Vector2(1, 8)], [Vector2(12, 14), Vector2(2, 3)], [Vector2(2, 15), Vector2(3, 7)], [Vector2(6, 15), Vector2(2, 7)], [Vector2(14, 15), Vector2(2, 1)], [Vector2(14, 16), Vector2(1, 2)], [Vector2(1, 17), Vector2(1, 3)], [Vector2(11, 17), Vector2(1, 7)], [Vector2(13, 17), Vector2(1, 1)], [Vector2(12, 19), Vector2(1, 5)], [Vector2(13, 20), Vector2(1, 4)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(23, 20), Vector2(1, 2)], [Vector2(14, 21), Vector2(1, 3)], [Vector2(20, 21), Vector2(3, 2)], [Vector2(3, 22), Vector2(2, 1)], [Vector2(7, 22), Vector2(1, 1)], [Vector2(20, 23), Vector2(1, 1)]],
		1 : [[Vector2(7, 1), Vector2(4, 5)], [Vector2(6, 2), Vector2(1, 6)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(5, 3), Vector2(1, 6)], [Vector2(12, 3), Vector2(1, 11)], [Vector2(4, 4), Vector2(1, 2)], [Vector2(3, 6), Vector2(1, 1)], [Vector2(7, 6), Vector2(2, 3)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(13, 6), Vector2(1, 8)], [Vector2(14, 7), Vector2(2, 7)], [Vector2(3, 8), Vector2(2, 4)], [Vector2(9, 8), Vector2(2, 14)], [Vector2(16, 8), Vector2(1, 5)], [Vector2(8, 9), Vector2(1, 13)], [Vector2(17, 9), Vector2(2, 15)], [Vector2(19, 10), Vector2(1, 14)], [Vector2(5, 11), Vector2(1, 13)], [Vector2(4, 12), Vector2(1, 1)], [Vector2(7, 12), Vector2(1, 11)], [Vector2(20, 12), Vector2(1, 8)], [Vector2(6, 13), Vector2(1, 10)], [Vector2(14, 14), Vector2(1, 1)], [Vector2(16, 14), Vector2(1, 10)], [Vector2(21, 14), Vector2(1, 4)], [Vector2(1, 15), Vector2(2, 3)], [Vector2(12, 15), Vector2(2, 3)], [Vector2(3, 16), Vector2(2, 7)], [Vector2(14, 16), Vector2(2, 1)], [Vector2(14, 17), Vector2(1, 2)], [Vector2(2, 18), Vector2(1, 3)], [Vector2(11, 18), Vector2(1, 6)], [Vector2(13, 18), Vector2(1, 1)], [Vector2(12, 19), Vector2(1, 5)], [Vector2(13, 20), Vector2(1, 4)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(14, 21), Vector2(1, 3)], [Vector2(23, 21), Vector2(1, 2)], [Vector2(10, 22), Vector2(1, 1)], [Vector2(20, 22), Vector2(3, 2)], [Vector2(4, 23), Vector2(1, 1)]],
		2 : [[Vector2(8, 1), Vector2(4, 5)], [Vector2(7, 2), Vector2(1, 6)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(6, 3), Vector2(1, 6)], [Vector2(13, 3), Vector2(1, 11)], [Vector2(5, 4), Vector2(1, 2)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(2, 3)], [Vector2(11, 6), Vector2(1, 1)], [Vector2(14, 7), Vector2(2, 6)], [Vector2(5, 8), Vector2(1, 6)], [Vector2(10, 8), Vector2(1, 15)], [Vector2(16, 8), Vector2(2, 4)], [Vector2(4, 9), Vector2(1, 4)], [Vector2(9, 9), Vector2(1, 13)], [Vector2(11, 9), Vector2(1, 15)], [Vector2(18, 9), Vector2(1, 15)], [Vector2(19, 11), Vector2(1, 13)], [Vector2(6, 12), Vector2(1, 12)], [Vector2(17, 12), Vector2(1, 12)], [Vector2(20, 12), Vector2(1, 12)], [Vector2(8, 13), Vector2(1, 9)], [Vector2(15, 13), Vector2(1, 1)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(7, 14), Vector2(1, 9)], [Vector2(14, 14), Vector2(1, 5)], [Vector2(21, 14), Vector2(1, 6)], [Vector2(1, 15), Vector2(1, 2)], [Vector2(3, 15), Vector2(1, 7)], [Vector2(5, 15), Vector2(1, 9)], [Vector2(13, 15), Vector2(1, 3)], [Vector2(15, 15), Vector2(1, 4)], [Vector2(4, 16), Vector2(1, 7)], [Vector2(16, 16), Vector2(1, 1)], [Vector2(12, 18), Vector2(1, 6)], [Vector2(13, 19), Vector2(1, 5)], [Vector2(14, 20), Vector2(1, 4)], [Vector2(16, 20), Vector2(1, 4)], [Vector2(15, 21), Vector2(1, 3)], [Vector2(21, 22), Vector2(3, 1)], [Vector2(21, 23), Vector2(2, 1)]],
		3 : [[Vector2(7, 1), Vector2(4, 5)], [Vector2(6, 2), Vector2(1, 6)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(5, 3), Vector2(1, 6)], [Vector2(12, 3), Vector2(1, 11)], [Vector2(4, 4), Vector2(1, 2)], [Vector2(3, 6), Vector2(1, 1)], [Vector2(7, 6), Vector2(2, 3)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(13, 6), Vector2(1, 8)], [Vector2(14, 7), Vector2(2, 7)], [Vector2(3, 8), Vector2(2, 4)], [Vector2(9, 8), Vector2(2, 14)], [Vector2(16, 8), Vector2(1, 5)], [Vector2(8, 9), Vector2(1, 13)], [Vector2(17, 9), Vector2(2, 15)], [Vector2(19, 10), Vector2(1, 14)], [Vector2(5, 11), Vector2(1, 13)], [Vector2(4, 12), Vector2(1, 1)], [Vector2(7, 12), Vector2(1, 11)], [Vector2(20, 12), Vector2(1, 8)], [Vector2(6, 13), Vector2(1, 10)], [Vector2(14, 14), Vector2(1, 1)], [Vector2(16, 14), Vector2(1, 10)], [Vector2(21, 14), Vector2(1, 4)], [Vector2(1, 15), Vector2(2, 3)], [Vector2(12, 15), Vector2(2, 3)], [Vector2(3, 16), Vector2(2, 7)], [Vector2(14, 16), Vector2(2, 1)], [Vector2(14, 17), Vector2(1, 2)], [Vector2(2, 18), Vector2(1, 3)], [Vector2(11, 18), Vector2(1, 6)], [Vector2(13, 18), Vector2(1, 1)], [Vector2(12, 19), Vector2(1, 5)], [Vector2(13, 20), Vector2(1, 4)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(14, 21), Vector2(1, 3)], [Vector2(23, 21), Vector2(1, 2)], [Vector2(10, 22), Vector2(1, 1)], [Vector2(20, 22), Vector2(3, 2)], [Vector2(4, 23), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/ghost/ghost_left"
	},
	"ghost_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : {
				0 : [[Vector2(12, 0), Vector2(5, 2)], [Vector2(11, 1), Vector2(1, 1)], [Vector2(17, 1), Vector2(1, 6)], [Vector2(13, 2), Vector2(4, 3)], [Vector2(18, 2), Vector2(1, 6)], [Vector2(12, 3), Vector2(1, 11)], [Vector2(19, 3), Vector2(1, 2)], [Vector2(11, 4), Vector2(1, 9)], [Vector2(10, 5), Vector2(1, 8)], [Vector2(13, 5), Vector2(1, 19)], [Vector2(15, 5), Vector2(2, 3)], [Vector2(20, 5), Vector2(1, 6)], [Vector2(9, 6), Vector2(1, 8)], [Vector2(7, 7), Vector2(2, 5)], [Vector2(14, 7), Vector2(1, 16)], [Vector2(19, 7), Vector2(1, 5)], [Vector2(6, 8), Vector2(1, 16)], [Vector2(15, 8), Vector2(1, 15)], [Vector2(5, 9), Vector2(1, 15)], [Vector2(4, 10), Vector2(1, 14)], [Vector2(3, 11), Vector2(1, 9)], [Vector2(16, 11), Vector2(1, 3)], [Vector2(18, 11), Vector2(1, 2)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(17, 12), Vector2(1, 2)], [Vector2(2, 13), Vector2(1, 5)], [Vector2(7, 13), Vector2(1, 11)], [Vector2(10, 14), Vector2(2, 3)], [Vector2(18, 14), Vector2(1, 8)], [Vector2(22, 14), Vector2(2, 3)], [Vector2(8, 15), Vector2(2, 1)], [Vector2(16, 15), Vector2(2, 7)], [Vector2(19, 15), Vector2(3, 7)], [Vector2(9, 16), Vector2(1, 2)], [Vector2(10, 17), Vector2(1, 1)], [Vector2(12, 17), Vector2(1, 7)], [Vector2(22, 17), Vector2(1, 3)], [Vector2(11, 19), Vector2(1, 5)], [Vector2(0, 20), Vector2(1, 2)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(10, 20), Vector2(1, 4)], [Vector2(1, 21), Vector2(3, 2)], [Vector2(9, 21), Vector2(1, 3)], [Vector2(16, 22), Vector2(1, 1)], [Vector2(19, 22), Vector2(2, 1)], [Vector2(3, 23), Vector2(1, 1)]],
		1 : [[Vector2(13, 1), Vector2(4, 5)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(17, 2), Vector2(1, 6)], [Vector2(11, 3), Vector2(1, 11)], [Vector2(18, 3), Vector2(1, 6)], [Vector2(19, 4), Vector2(1, 2)], [Vector2(10, 6), Vector2(1, 8)], [Vector2(13, 6), Vector2(1, 1)], [Vector2(15, 6), Vector2(2, 3)], [Vector2(20, 6), Vector2(1, 1)], [Vector2(8, 7), Vector2(2, 7)], [Vector2(7, 8), Vector2(1, 5)], [Vector2(13, 8), Vector2(2, 14)], [Vector2(19, 8), Vector2(2, 4)], [Vector2(5, 9), Vector2(2, 15)], [Vector2(15, 9), Vector2(1, 13)], [Vector2(4, 10), Vector2(1, 14)], [Vector2(18, 11), Vector2(1, 13)], [Vector2(3, 12), Vector2(1, 8)], [Vector2(16, 12), Vector2(1, 11)], [Vector2(19, 12), Vector2(1, 1)], [Vector2(17, 13), Vector2(1, 10)], [Vector2(2, 14), Vector2(1, 4)], [Vector2(7, 14), Vector2(1, 10)], [Vector2(9, 14), Vector2(1, 1)], [Vector2(10, 15), Vector2(2, 3)], [Vector2(21, 15), Vector2(2, 3)], [Vector2(8, 16), Vector2(2, 1)], [Vector2(19, 16), Vector2(2, 7)], [Vector2(9, 17), Vector2(1, 2)], [Vector2(10, 18), Vector2(1, 1)], [Vector2(12, 18), Vector2(1, 6)], [Vector2(21, 18), Vector2(1, 3)], [Vector2(11, 19), Vector2(1, 5)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(10, 20), Vector2(1, 4)], [Vector2(0, 21), Vector2(1, 2)], [Vector2(9, 21), Vector2(1, 3)], [Vector2(1, 22), Vector2(3, 2)], [Vector2(13, 22), Vector2(1, 1)], [Vector2(19, 23), Vector2(1, 1)]],
		2 : [[Vector2(12, 1), Vector2(4, 5)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(16, 2), Vector2(1, 6)], [Vector2(10, 3), Vector2(1, 11)], [Vector2(17, 3), Vector2(1, 6)], [Vector2(18, 4), Vector2(1, 2)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(2, 3)], [Vector2(19, 6), Vector2(1, 1)], [Vector2(8, 7), Vector2(2, 6)], [Vector2(6, 8), Vector2(2, 4)], [Vector2(13, 8), Vector2(1, 15)], [Vector2(18, 8), Vector2(1, 6)], [Vector2(5, 9), Vector2(1, 15)], [Vector2(12, 9), Vector2(1, 15)], [Vector2(14, 9), Vector2(1, 13)], [Vector2(19, 9), Vector2(1, 4)], [Vector2(4, 11), Vector2(1, 13)], [Vector2(3, 12), Vector2(1, 12)], [Vector2(6, 12), Vector2(1, 12)], [Vector2(17, 12), Vector2(1, 12)], [Vector2(8, 13), Vector2(1, 1)], [Vector2(15, 13), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(9, 14), Vector2(1, 5)], [Vector2(16, 14), Vector2(1, 9)], [Vector2(21, 14), Vector2(1, 6)], [Vector2(8, 15), Vector2(1, 4)], [Vector2(10, 15), Vector2(1, 3)], [Vector2(18, 15), Vector2(1, 9)], [Vector2(20, 15), Vector2(1, 7)], [Vector2(22, 15), Vector2(1, 2)], [Vector2(7, 16), Vector2(1, 1)], [Vector2(19, 16), Vector2(1, 7)], [Vector2(11, 18), Vector2(1, 6)], [Vector2(10, 19), Vector2(1, 5)], [Vector2(7, 20), Vector2(1, 4)], [Vector2(9, 20), Vector2(1, 4)], [Vector2(8, 21), Vector2(1, 3)], [Vector2(0, 22), Vector2(3, 1)], [Vector2(1, 23), Vector2(2, 1)]],
		3 : [[Vector2(13, 1), Vector2(4, 5)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(17, 2), Vector2(1, 6)], [Vector2(11, 3), Vector2(1, 11)], [Vector2(18, 3), Vector2(1, 6)], [Vector2(19, 4), Vector2(1, 2)], [Vector2(10, 6), Vector2(1, 8)], [Vector2(13, 6), Vector2(1, 1)], [Vector2(15, 6), Vector2(2, 3)], [Vector2(20, 6), Vector2(1, 1)], [Vector2(8, 7), Vector2(2, 7)], [Vector2(7, 8), Vector2(1, 5)], [Vector2(13, 8), Vector2(2, 14)], [Vector2(19, 8), Vector2(2, 4)], [Vector2(5, 9), Vector2(2, 15)], [Vector2(15, 9), Vector2(1, 13)], [Vector2(4, 10), Vector2(1, 14)], [Vector2(18, 11), Vector2(1, 13)], [Vector2(3, 12), Vector2(1, 8)], [Vector2(16, 12), Vector2(1, 11)], [Vector2(19, 12), Vector2(1, 1)], [Vector2(17, 13), Vector2(1, 10)], [Vector2(2, 14), Vector2(1, 4)], [Vector2(7, 14), Vector2(1, 10)], [Vector2(9, 14), Vector2(1, 1)], [Vector2(10, 15), Vector2(2, 3)], [Vector2(21, 15), Vector2(2, 3)], [Vector2(8, 16), Vector2(2, 1)], [Vector2(19, 16), Vector2(2, 7)], [Vector2(9, 17), Vector2(1, 2)], [Vector2(10, 18), Vector2(1, 1)], [Vector2(12, 18), Vector2(1, 6)], [Vector2(21, 18), Vector2(1, 3)], [Vector2(11, 19), Vector2(1, 5)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(10, 20), Vector2(1, 4)], [Vector2(0, 21), Vector2(1, 2)], [Vector2(9, 21), Vector2(1, 3)], [Vector2(1, 22), Vector2(3, 2)], [Vector2(13, 22), Vector2(1, 1)], [Vector2(19, 23), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/ghost/ghost_right"
	},
	"ghost_turn_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : {
				0 : [[Vector2(12, 0), Vector2(5, 2)], [Vector2(11, 1), Vector2(1, 1)], [Vector2(17, 1), Vector2(1, 6)], [Vector2(13, 2), Vector2(4, 3)], [Vector2(18, 2), Vector2(1, 6)], [Vector2(12, 3), Vector2(1, 11)], [Vector2(19, 3), Vector2(1, 2)], [Vector2(11, 4), Vector2(1, 9)], [Vector2(10, 5), Vector2(1, 8)], [Vector2(13, 5), Vector2(1, 19)], [Vector2(15, 5), Vector2(2, 3)], [Vector2(20, 5), Vector2(1, 6)], [Vector2(9, 6), Vector2(1, 8)], [Vector2(7, 7), Vector2(2, 5)], [Vector2(14, 7), Vector2(1, 16)], [Vector2(19, 7), Vector2(1, 5)], [Vector2(6, 8), Vector2(1, 16)], [Vector2(15, 8), Vector2(1, 15)], [Vector2(5, 9), Vector2(1, 15)], [Vector2(4, 10), Vector2(1, 14)], [Vector2(3, 11), Vector2(1, 9)], [Vector2(16, 11), Vector2(1, 3)], [Vector2(18, 11), Vector2(1, 2)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(17, 12), Vector2(1, 2)], [Vector2(2, 13), Vector2(1, 5)], [Vector2(7, 13), Vector2(1, 11)], [Vector2(10, 14), Vector2(2, 3)], [Vector2(18, 14), Vector2(1, 8)], [Vector2(22, 14), Vector2(2, 3)], [Vector2(8, 15), Vector2(2, 1)], [Vector2(16, 15), Vector2(2, 7)], [Vector2(19, 15), Vector2(3, 7)], [Vector2(9, 16), Vector2(1, 2)], [Vector2(10, 17), Vector2(1, 1)], [Vector2(12, 17), Vector2(1, 7)], [Vector2(22, 17), Vector2(1, 3)], [Vector2(11, 19), Vector2(1, 5)], [Vector2(0, 20), Vector2(1, 2)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(10, 20), Vector2(1, 4)], [Vector2(1, 21), Vector2(3, 2)], [Vector2(9, 21), Vector2(1, 3)], [Vector2(16, 22), Vector2(1, 1)], [Vector2(19, 22), Vector2(2, 1)], [Vector2(3, 23), Vector2(1, 1)]],
		1 : [[Vector2(11, 0), Vector2(5, 5)], [Vector2(10, 1), Vector2(1, 2)], [Vector2(16, 1), Vector2(1, 7)], [Vector2(17, 2), Vector2(1, 3)], [Vector2(10, 5), Vector2(2, 9)], [Vector2(13, 5), Vector2(3, 2)], [Vector2(18, 5), Vector2(1, 6)], [Vector2(9, 6), Vector2(1, 7)], [Vector2(7, 7), Vector2(2, 6)], [Vector2(12, 7), Vector2(3, 1)], [Vector2(17, 7), Vector2(1, 5)], [Vector2(6, 8), Vector2(1, 6)], [Vector2(12, 8), Vector2(2, 16)], [Vector2(4, 9), Vector2(2, 15)], [Vector2(3, 10), Vector2(1, 13)], [Vector2(2, 11), Vector2(1, 9)], [Vector2(14, 11), Vector2(1, 12)], [Vector2(16, 11), Vector2(1, 2)], [Vector2(15, 12), Vector2(1, 10)], [Vector2(1, 13), Vector2(1, 6)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(17, 13), Vector2(1, 10)], [Vector2(8, 14), Vector2(2, 3)], [Vector2(11, 14), Vector2(1, 10)], [Vector2(16, 14), Vector2(1, 8)], [Vector2(18, 14), Vector2(1, 9)], [Vector2(20, 14), Vector2(2, 3)], [Vector2(6, 15), Vector2(2, 1)], [Vector2(7, 16), Vector2(1, 2)], [Vector2(19, 16), Vector2(1, 6)], [Vector2(8, 17), Vector2(1, 1)], [Vector2(10, 17), Vector2(1, 7)], [Vector2(20, 17), Vector2(1, 3)], [Vector2(9, 19), Vector2(1, 5)], [Vector2(1, 20), Vector2(1, 2)], [Vector2(6, 20), Vector2(1, 4)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(2, 21), Vector2(1, 2)], [Vector2(7, 21), Vector2(1, 3)]],
		2 : [[Vector2(10, 0), Vector2(5, 5)], [Vector2(9, 1), Vector2(1, 13)], [Vector2(15, 1), Vector2(1, 4)], [Vector2(8, 3), Vector2(1, 10)], [Vector2(16, 3), Vector2(1, 8)], [Vector2(11, 5), Vector2(4, 2)], [Vector2(7, 6), Vector2(1, 7)], [Vector2(6, 7), Vector2(1, 7)], [Vector2(10, 7), Vector2(3, 1)], [Vector2(14, 7), Vector2(2, 1)], [Vector2(5, 8), Vector2(1, 6)], [Vector2(10, 8), Vector2(2, 16)], [Vector2(15, 8), Vector2(1, 4)], [Vector2(4, 9), Vector2(1, 15)], [Vector2(3, 11), Vector2(1, 12)], [Vector2(12, 11), Vector2(1, 13)], [Vector2(14, 11), Vector2(1, 2)], [Vector2(17, 11), Vector2(1, 3)], [Vector2(13, 12), Vector2(1, 11)], [Vector2(16, 12), Vector2(1, 11)], [Vector2(2, 13), Vector2(1, 9)], [Vector2(15, 13), Vector2(1, 9)], [Vector2(7, 14), Vector2(2, 3)], [Vector2(14, 14), Vector2(1, 8)], [Vector2(18, 14), Vector2(2, 3)], [Vector2(5, 15), Vector2(2, 1)], [Vector2(6, 16), Vector2(1, 2)], [Vector2(17, 16), Vector2(1, 6)], [Vector2(7, 17), Vector2(1, 1)], [Vector2(9, 17), Vector2(1, 7)], [Vector2(18, 17), Vector2(1, 3)], [Vector2(8, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 4)], [Vector2(7, 20), Vector2(1, 4)], [Vector2(6, 21), Vector2(1, 3)]],
		3 : [[Vector2(10, 0), Vector2(5, 7)], [Vector2(9, 1), Vector2(1, 4)], [Vector2(15, 1), Vector2(1, 4)], [Vector2(8, 3), Vector2(1, 21)], [Vector2(16, 3), Vector2(1, 21)], [Vector2(7, 7), Vector2(1, 6)], [Vector2(9, 7), Vector2(3, 1)], [Vector2(13, 7), Vector2(3, 1)], [Vector2(17, 7), Vector2(1, 6)], [Vector2(6, 8), Vector2(1, 5)], [Vector2(9, 8), Vector2(2, 16)], [Vector2(14, 8), Vector2(2, 16)], [Vector2(18, 8), Vector2(1, 5)], [Vector2(5, 9), Vector2(1, 5)], [Vector2(19, 9), Vector2(1, 5)], [Vector2(4, 10), Vector2(1, 4)], [Vector2(20, 10), Vector2(1, 4)], [Vector2(11, 11), Vector2(1, 13)], [Vector2(13, 11), Vector2(1, 13)], [Vector2(3, 12), Vector2(1, 10)], [Vector2(12, 12), Vector2(1, 12)], [Vector2(21, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 7)], [Vector2(6, 14), Vector2(2, 3)], [Vector2(17, 14), Vector2(2, 3)], [Vector2(22, 14), Vector2(1, 6)], [Vector2(4, 15), Vector2(2, 1)], [Vector2(19, 15), Vector2(2, 1)], [Vector2(5, 16), Vector2(1, 2)], [Vector2(19, 16), Vector2(1, 2)], [Vector2(6, 17), Vector2(1, 1)], [Vector2(18, 17), Vector2(1, 1)], [Vector2(7, 19), Vector2(1, 5)], [Vector2(17, 19), Vector2(1, 5)], [Vector2(4, 20), Vector2(1, 3)], [Vector2(6, 20), Vector2(1, 4)], [Vector2(18, 20), Vector2(1, 4)], [Vector2(20, 20), Vector2(1, 2)], [Vector2(5, 21), Vector2(1, 3)], [Vector2(19, 21), Vector2(1, 2)]],
		4 : [[Vector2(9, 0), Vector2(5, 5)], [Vector2(8, 1), Vector2(1, 4)], [Vector2(14, 1), Vector2(1, 13)], [Vector2(7, 3), Vector2(1, 8)], [Vector2(15, 3), Vector2(1, 10)], [Vector2(9, 5), Vector2(4, 2)], [Vector2(16, 6), Vector2(1, 7)], [Vector2(8, 7), Vector2(2, 1)], [Vector2(11, 7), Vector2(3, 1)], [Vector2(17, 7), Vector2(1, 7)], [Vector2(8, 8), Vector2(1, 4)], [Vector2(12, 8), Vector2(2, 16)], [Vector2(18, 8), Vector2(1, 6)], [Vector2(19, 9), Vector2(1, 15)], [Vector2(6, 11), Vector2(1, 3)], [Vector2(9, 11), Vector2(1, 2)], [Vector2(11, 11), Vector2(1, 13)], [Vector2(20, 11), Vector2(1, 12)], [Vector2(7, 12), Vector2(1, 11)], [Vector2(10, 12), Vector2(1, 11)], [Vector2(8, 13), Vector2(1, 9)], [Vector2(21, 13), Vector2(1, 9)], [Vector2(4, 14), Vector2(2, 3)], [Vector2(9, 14), Vector2(1, 8)], [Vector2(15, 14), Vector2(2, 3)], [Vector2(17, 15), Vector2(2, 1)], [Vector2(6, 16), Vector2(1, 6)], [Vector2(17, 16), Vector2(1, 2)], [Vector2(5, 17), Vector2(1, 3)], [Vector2(14, 17), Vector2(1, 7)], [Vector2(16, 17), Vector2(1, 1)], [Vector2(15, 19), Vector2(1, 5)], [Vector2(16, 20), Vector2(1, 4)], [Vector2(18, 20), Vector2(1, 4)], [Vector2(17, 21), Vector2(1, 3)]],
		5 : [[Vector2(8, 0), Vector2(5, 5)], [Vector2(7, 1), Vector2(1, 7)], [Vector2(13, 1), Vector2(1, 2)], [Vector2(6, 2), Vector2(1, 3)], [Vector2(5, 5), Vector2(1, 6)], [Vector2(8, 5), Vector2(3, 2)], [Vector2(12, 5), Vector2(2, 9)], [Vector2(14, 6), Vector2(1, 7)], [Vector2(6, 7), Vector2(1, 5)], [Vector2(9, 7), Vector2(3, 1)], [Vector2(15, 7), Vector2(2, 6)], [Vector2(10, 8), Vector2(2, 16)], [Vector2(17, 8), Vector2(1, 6)], [Vector2(18, 9), Vector2(2, 15)], [Vector2(20, 10), Vector2(1, 13)], [Vector2(7, 11), Vector2(1, 2)], [Vector2(9, 11), Vector2(1, 12)], [Vector2(21, 11), Vector2(1, 9)], [Vector2(8, 12), Vector2(1, 10)], [Vector2(6, 13), Vector2(1, 10)], [Vector2(16, 13), Vector2(1, 1)], [Vector2(22, 13), Vector2(1, 6)], [Vector2(2, 14), Vector2(2, 3)], [Vector2(5, 14), Vector2(1, 9)], [Vector2(7, 14), Vector2(1, 8)], [Vector2(12, 14), Vector2(1, 10)], [Vector2(14, 14), Vector2(2, 3)], [Vector2(16, 15), Vector2(2, 1)], [Vector2(4, 16), Vector2(1, 6)], [Vector2(16, 16), Vector2(1, 2)], [Vector2(3, 17), Vector2(1, 3)], [Vector2(13, 17), Vector2(1, 7)], [Vector2(15, 17), Vector2(1, 1)], [Vector2(14, 19), Vector2(1, 5)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(17, 20), Vector2(1, 4)], [Vector2(22, 20), Vector2(1, 2)], [Vector2(16, 21), Vector2(1, 3)], [Vector2(21, 21), Vector2(1, 2)]],
		6 : [[Vector2(7, 0), Vector2(5, 2)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(7, 2), Vector2(4, 3)], [Vector2(4, 3), Vector2(1, 2)], [Vector2(11, 3), Vector2(1, 11)], [Vector2(12, 4), Vector2(1, 9)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(7, 5), Vector2(2, 3)], [Vector2(10, 5), Vector2(1, 19)], [Vector2(13, 5), Vector2(1, 8)], [Vector2(14, 6), Vector2(1, 8)], [Vector2(4, 7), Vector2(1, 5)], [Vector2(9, 7), Vector2(1, 16)], [Vector2(15, 7), Vector2(2, 5)], [Vector2(8, 8), Vector2(1, 15)], [Vector2(17, 8), Vector2(1, 16)], [Vector2(18, 9), Vector2(1, 15)], [Vector2(19, 10), Vector2(1, 14)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(7, 11), Vector2(1, 3)], [Vector2(20, 11), Vector2(1, 9)], [Vector2(6, 12), Vector2(1, 2)], [Vector2(15, 12), Vector2(1, 1)], [Vector2(16, 13), Vector2(1, 11)], [Vector2(21, 13), Vector2(1, 5)], [Vector2(0, 14), Vector2(2, 3)], [Vector2(5, 14), Vector2(1, 8)], [Vector2(12, 14), Vector2(2, 3)], [Vector2(2, 15), Vector2(3, 7)], [Vector2(6, 15), Vector2(2, 7)], [Vector2(14, 15), Vector2(2, 1)], [Vector2(14, 16), Vector2(1, 2)], [Vector2(1, 17), Vector2(1, 3)], [Vector2(11, 17), Vector2(1, 7)], [Vector2(13, 17), Vector2(1, 1)], [Vector2(12, 19), Vector2(1, 5)], [Vector2(13, 20), Vector2(1, 4)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(23, 20), Vector2(1, 2)], [Vector2(14, 21), Vector2(1, 3)], [Vector2(20, 21), Vector2(3, 2)], [Vector2(3, 22), Vector2(2, 1)], [Vector2(7, 22), Vector2(1, 1)], [Vector2(20, 23), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/ghost/ghost_turn_left"
	},
	"ghost_turn_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 24)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(5, 2)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(7, 2), Vector2(4, 3)], [Vector2(4, 3), Vector2(1, 2)], [Vector2(11, 3), Vector2(1, 11)], [Vector2(12, 4), Vector2(1, 9)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(7, 5), Vector2(2, 3)], [Vector2(10, 5), Vector2(1, 19)], [Vector2(13, 5), Vector2(1, 8)], [Vector2(14, 6), Vector2(1, 8)], [Vector2(4, 7), Vector2(1, 5)], [Vector2(9, 7), Vector2(1, 16)], [Vector2(15, 7), Vector2(2, 5)], [Vector2(8, 8), Vector2(1, 15)], [Vector2(17, 8), Vector2(1, 16)], [Vector2(18, 9), Vector2(1, 15)], [Vector2(19, 10), Vector2(1, 14)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(7, 11), Vector2(1, 3)], [Vector2(20, 11), Vector2(1, 9)], [Vector2(6, 12), Vector2(1, 2)], [Vector2(15, 12), Vector2(1, 1)], [Vector2(16, 13), Vector2(1, 11)], [Vector2(21, 13), Vector2(1, 5)], [Vector2(0, 14), Vector2(2, 3)], [Vector2(5, 14), Vector2(1, 8)], [Vector2(12, 14), Vector2(2, 3)], [Vector2(2, 15), Vector2(3, 7)], [Vector2(6, 15), Vector2(2, 7)], [Vector2(14, 15), Vector2(2, 1)], [Vector2(14, 16), Vector2(1, 2)], [Vector2(1, 17), Vector2(1, 3)], [Vector2(11, 17), Vector2(1, 7)], [Vector2(13, 17), Vector2(1, 1)], [Vector2(12, 19), Vector2(1, 5)], [Vector2(13, 20), Vector2(1, 4)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(23, 20), Vector2(1, 2)], [Vector2(14, 21), Vector2(1, 3)], [Vector2(20, 21), Vector2(3, 2)], [Vector2(3, 22), Vector2(2, 1)], [Vector2(7, 22), Vector2(1, 1)], [Vector2(20, 23), Vector2(1, 1)]],
		1 : [[Vector2(8, 0), Vector2(5, 5)], [Vector2(7, 1), Vector2(1, 7)], [Vector2(13, 1), Vector2(1, 2)], [Vector2(6, 2), Vector2(1, 3)], [Vector2(5, 5), Vector2(1, 6)], [Vector2(8, 5), Vector2(3, 2)], [Vector2(12, 5), Vector2(2, 9)], [Vector2(14, 6), Vector2(1, 7)], [Vector2(6, 7), Vector2(1, 5)], [Vector2(9, 7), Vector2(3, 1)], [Vector2(15, 7), Vector2(2, 6)], [Vector2(10, 8), Vector2(2, 16)], [Vector2(17, 8), Vector2(1, 6)], [Vector2(18, 9), Vector2(2, 15)], [Vector2(20, 10), Vector2(1, 13)], [Vector2(7, 11), Vector2(1, 2)], [Vector2(9, 11), Vector2(1, 12)], [Vector2(21, 11), Vector2(1, 9)], [Vector2(8, 12), Vector2(1, 10)], [Vector2(6, 13), Vector2(1, 10)], [Vector2(16, 13), Vector2(1, 1)], [Vector2(22, 13), Vector2(1, 6)], [Vector2(2, 14), Vector2(2, 3)], [Vector2(5, 14), Vector2(1, 9)], [Vector2(7, 14), Vector2(1, 8)], [Vector2(12, 14), Vector2(1, 10)], [Vector2(14, 14), Vector2(2, 3)], [Vector2(16, 15), Vector2(2, 1)], [Vector2(4, 16), Vector2(1, 6)], [Vector2(16, 16), Vector2(1, 2)], [Vector2(3, 17), Vector2(1, 3)], [Vector2(13, 17), Vector2(1, 7)], [Vector2(15, 17), Vector2(1, 1)], [Vector2(14, 19), Vector2(1, 5)], [Vector2(15, 20), Vector2(1, 4)], [Vector2(17, 20), Vector2(1, 4)], [Vector2(22, 20), Vector2(1, 2)], [Vector2(16, 21), Vector2(1, 3)], [Vector2(21, 21), Vector2(1, 2)]],
		2 : [[Vector2(9, 0), Vector2(5, 5)], [Vector2(8, 1), Vector2(1, 4)], [Vector2(14, 1), Vector2(1, 13)], [Vector2(7, 3), Vector2(1, 8)], [Vector2(15, 3), Vector2(1, 10)], [Vector2(9, 5), Vector2(4, 2)], [Vector2(16, 6), Vector2(1, 7)], [Vector2(8, 7), Vector2(2, 1)], [Vector2(11, 7), Vector2(3, 1)], [Vector2(17, 7), Vector2(1, 7)], [Vector2(8, 8), Vector2(1, 4)], [Vector2(12, 8), Vector2(2, 16)], [Vector2(18, 8), Vector2(1, 6)], [Vector2(19, 9), Vector2(1, 15)], [Vector2(6, 11), Vector2(1, 3)], [Vector2(9, 11), Vector2(1, 2)], [Vector2(11, 11), Vector2(1, 13)], [Vector2(20, 11), Vector2(1, 12)], [Vector2(7, 12), Vector2(1, 11)], [Vector2(10, 12), Vector2(1, 11)], [Vector2(8, 13), Vector2(1, 9)], [Vector2(21, 13), Vector2(1, 9)], [Vector2(4, 14), Vector2(2, 3)], [Vector2(9, 14), Vector2(1, 8)], [Vector2(15, 14), Vector2(2, 3)], [Vector2(17, 15), Vector2(2, 1)], [Vector2(6, 16), Vector2(1, 6)], [Vector2(17, 16), Vector2(1, 2)], [Vector2(5, 17), Vector2(1, 3)], [Vector2(14, 17), Vector2(1, 7)], [Vector2(16, 17), Vector2(1, 1)], [Vector2(15, 19), Vector2(1, 5)], [Vector2(16, 20), Vector2(1, 4)], [Vector2(18, 20), Vector2(1, 4)], [Vector2(17, 21), Vector2(1, 3)]],
		3 : [[Vector2(9, 0), Vector2(5, 7)], [Vector2(8, 1), Vector2(1, 4)], [Vector2(14, 1), Vector2(1, 4)], [Vector2(7, 3), Vector2(1, 21)], [Vector2(15, 3), Vector2(1, 21)], [Vector2(6, 7), Vector2(1, 6)], [Vector2(8, 7), Vector2(3, 1)], [Vector2(12, 7), Vector2(3, 1)], [Vector2(16, 7), Vector2(1, 6)], [Vector2(5, 8), Vector2(1, 5)], [Vector2(8, 8), Vector2(2, 16)], [Vector2(13, 8), Vector2(2, 16)], [Vector2(17, 8), Vector2(1, 5)], [Vector2(4, 9), Vector2(1, 5)], [Vector2(18, 9), Vector2(1, 5)], [Vector2(3, 10), Vector2(1, 4)], [Vector2(19, 10), Vector2(1, 4)], [Vector2(10, 11), Vector2(1, 13)], [Vector2(12, 11), Vector2(1, 13)], [Vector2(2, 12), Vector2(1, 9)], [Vector2(11, 12), Vector2(1, 12)], [Vector2(20, 12), Vector2(1, 10)], [Vector2(1, 14), Vector2(1, 6)], [Vector2(5, 14), Vector2(2, 3)], [Vector2(16, 14), Vector2(2, 3)], [Vector2(21, 14), Vector2(1, 7)], [Vector2(3, 15), Vector2(2, 1)], [Vector2(18, 15), Vector2(2, 1)], [Vector2(4, 16), Vector2(1, 2)], [Vector2(18, 16), Vector2(1, 2)], [Vector2(5, 17), Vector2(1, 1)], [Vector2(17, 17), Vector2(1, 1)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(16, 19), Vector2(1, 5)], [Vector2(3, 20), Vector2(1, 2)], [Vector2(5, 20), Vector2(1, 4)], [Vector2(17, 20), Vector2(1, 4)], [Vector2(19, 20), Vector2(1, 3)], [Vector2(4, 21), Vector2(1, 2)], [Vector2(18, 21), Vector2(1, 3)]],
		4 : [[Vector2(10, 0), Vector2(5, 5)], [Vector2(9, 1), Vector2(1, 13)], [Vector2(15, 1), Vector2(1, 4)], [Vector2(8, 3), Vector2(1, 10)], [Vector2(16, 3), Vector2(1, 8)], [Vector2(11, 5), Vector2(4, 2)], [Vector2(7, 6), Vector2(1, 7)], [Vector2(6, 7), Vector2(1, 7)], [Vector2(10, 7), Vector2(3, 1)], [Vector2(14, 7), Vector2(2, 1)], [Vector2(5, 8), Vector2(1, 6)], [Vector2(10, 8), Vector2(2, 16)], [Vector2(15, 8), Vector2(1, 4)], [Vector2(4, 9), Vector2(1, 15)], [Vector2(3, 11), Vector2(1, 12)], [Vector2(12, 11), Vector2(1, 13)], [Vector2(14, 11), Vector2(1, 2)], [Vector2(17, 11), Vector2(1, 3)], [Vector2(13, 12), Vector2(1, 11)], [Vector2(16, 12), Vector2(1, 11)], [Vector2(2, 13), Vector2(1, 9)], [Vector2(15, 13), Vector2(1, 9)], [Vector2(7, 14), Vector2(2, 3)], [Vector2(14, 14), Vector2(1, 8)], [Vector2(18, 14), Vector2(2, 3)], [Vector2(5, 15), Vector2(2, 1)], [Vector2(6, 16), Vector2(1, 2)], [Vector2(17, 16), Vector2(1, 6)], [Vector2(7, 17), Vector2(1, 1)], [Vector2(9, 17), Vector2(1, 7)], [Vector2(18, 17), Vector2(1, 3)], [Vector2(8, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 4)], [Vector2(7, 20), Vector2(1, 4)], [Vector2(6, 21), Vector2(1, 3)]],
		5 : [[Vector2(11, 0), Vector2(5, 5)], [Vector2(10, 1), Vector2(1, 2)], [Vector2(16, 1), Vector2(1, 7)], [Vector2(17, 2), Vector2(1, 3)], [Vector2(10, 5), Vector2(2, 9)], [Vector2(13, 5), Vector2(3, 2)], [Vector2(18, 5), Vector2(1, 6)], [Vector2(9, 6), Vector2(1, 7)], [Vector2(7, 7), Vector2(2, 6)], [Vector2(12, 7), Vector2(3, 1)], [Vector2(17, 7), Vector2(1, 5)], [Vector2(6, 8), Vector2(1, 6)], [Vector2(12, 8), Vector2(2, 16)], [Vector2(4, 9), Vector2(2, 15)], [Vector2(3, 10), Vector2(1, 13)], [Vector2(2, 11), Vector2(1, 9)], [Vector2(14, 11), Vector2(1, 12)], [Vector2(16, 11), Vector2(1, 2)], [Vector2(15, 12), Vector2(1, 10)], [Vector2(1, 13), Vector2(1, 6)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(17, 13), Vector2(1, 10)], [Vector2(8, 14), Vector2(2, 3)], [Vector2(11, 14), Vector2(1, 10)], [Vector2(16, 14), Vector2(1, 8)], [Vector2(18, 14), Vector2(1, 9)], [Vector2(20, 14), Vector2(2, 3)], [Vector2(6, 15), Vector2(2, 1)], [Vector2(7, 16), Vector2(1, 2)], [Vector2(19, 16), Vector2(1, 6)], [Vector2(8, 17), Vector2(1, 1)], [Vector2(10, 17), Vector2(1, 7)], [Vector2(20, 17), Vector2(1, 3)], [Vector2(9, 19), Vector2(1, 5)], [Vector2(1, 20), Vector2(1, 2)], [Vector2(6, 20), Vector2(1, 4)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(2, 21), Vector2(1, 2)], [Vector2(7, 21), Vector2(1, 3)]],
		6 : [[Vector2(12, 0), Vector2(5, 2)], [Vector2(11, 1), Vector2(1, 1)], [Vector2(17, 1), Vector2(1, 6)], [Vector2(13, 2), Vector2(4, 3)], [Vector2(18, 2), Vector2(1, 6)], [Vector2(12, 3), Vector2(1, 11)], [Vector2(19, 3), Vector2(1, 2)], [Vector2(11, 4), Vector2(1, 9)], [Vector2(10, 5), Vector2(1, 8)], [Vector2(13, 5), Vector2(1, 19)], [Vector2(15, 5), Vector2(2, 3)], [Vector2(20, 5), Vector2(1, 6)], [Vector2(9, 6), Vector2(1, 8)], [Vector2(7, 7), Vector2(2, 5)], [Vector2(14, 7), Vector2(1, 16)], [Vector2(19, 7), Vector2(1, 5)], [Vector2(6, 8), Vector2(1, 16)], [Vector2(15, 8), Vector2(1, 15)], [Vector2(5, 9), Vector2(1, 15)], [Vector2(4, 10), Vector2(1, 14)], [Vector2(3, 11), Vector2(1, 9)], [Vector2(16, 11), Vector2(1, 3)], [Vector2(18, 11), Vector2(1, 2)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(17, 12), Vector2(1, 2)], [Vector2(2, 13), Vector2(1, 5)], [Vector2(7, 13), Vector2(1, 11)], [Vector2(10, 14), Vector2(2, 3)], [Vector2(18, 14), Vector2(1, 8)], [Vector2(22, 14), Vector2(2, 3)], [Vector2(8, 15), Vector2(2, 1)], [Vector2(16, 15), Vector2(2, 7)], [Vector2(19, 15), Vector2(3, 7)], [Vector2(9, 16), Vector2(1, 2)], [Vector2(10, 17), Vector2(1, 1)], [Vector2(12, 17), Vector2(1, 7)], [Vector2(22, 17), Vector2(1, 3)], [Vector2(11, 19), Vector2(1, 5)], [Vector2(0, 20), Vector2(1, 2)], [Vector2(8, 20), Vector2(1, 4)], [Vector2(10, 20), Vector2(1, 4)], [Vector2(1, 21), Vector2(3, 2)], [Vector2(9, 21), Vector2(1, 3)], [Vector2(16, 22), Vector2(1, 1)], [Vector2(19, 22), Vector2(2, 1)], [Vector2(3, 23), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/ghost/ghost_turn_right"
	},
	"giant_spider" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 17), Vector2(30, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider"
	},
	"giant_spider_crawl" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 16), Vector2(32, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider_crawl"
	},
	"giant_spider_disp" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(10, 8), Vector2(12, 10)], [Vector2(7, 9), Vector2(3, 10)], [Vector2(22, 9), Vector2(3, 10)], [Vector2(3, 10), Vector2(4, 12)], [Vector2(25, 10), Vector2(4, 12)], [Vector2(2, 11), Vector2(1, 9)], [Vector2(29, 11), Vector2(1, 9)], [Vector2(1, 12), Vector2(1, 6)], [Vector2(30, 12), Vector2(1, 6)], [Vector2(12, 18), Vector2(8, 1)], [Vector2(7, 19), Vector2(2, 4)], [Vector2(13, 19), Vector2(6, 1)], [Vector2(23, 19), Vector2(2, 4)], [Vector2(9, 20), Vector2(1, 3)], [Vector2(14, 20), Vector2(4, 1)], [Vector2(22, 20), Vector2(1, 3)], [Vector2(4, 22), Vector2(3, 1)], [Vector2(25, 22), Vector2(3, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider_disp"
	},
	"giant_spider_flip" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(30, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider_flip"
	},
	"giant_spider_hang" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(30, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider_hang"
	},
	"giant_spider_jump" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(3, 12), Vector2(26, 20)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider_jump"
	},
	"giant_spider_squirt" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 8), Vector2(30, 24)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/giant_spider_squirt"
	},
	"web" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 1)], [Vector2(7, 0), Vector2(1, 2)], [Vector2(12, 0), Vector2(2, 1)], [Vector2(2, 1), Vector2(5, 1)], [Vector2(8, 1), Vector2(5, 2)], [Vector2(3, 2), Vector2(4, 2)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(7, 3), Vector2(4, 2)], [Vector2(12, 3), Vector2(2, 5)], [Vector2(1, 4), Vector2(1, 6)], [Vector2(4, 4), Vector2(1, 3)], [Vector2(6, 4), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 4)], [Vector2(7, 5), Vector2(1, 3)], [Vector2(9, 5), Vector2(3, 1)], [Vector2(14, 5), Vector2(2, 2)], [Vector2(2, 6), Vector2(1, 2)], [Vector2(5, 6), Vector2(1, 2)], [Vector2(8, 6), Vector2(2, 1)], [Vector2(11, 6), Vector2(1, 9)], [Vector2(0, 7), Vector2(1, 1)], [Vector2(6, 7), Vector2(1, 9)], [Vector2(8, 7), Vector2(1, 4)], [Vector2(14, 7), Vector2(1, 1)], [Vector2(4, 8), Vector2(1, 7)], [Vector2(9, 8), Vector2(2, 2)], [Vector2(13, 8), Vector2(1, 3)], [Vector2(2, 9), Vector2(1, 4)], [Vector2(7, 9), Vector2(1, 2)], [Vector2(9, 10), Vector2(1, 6)], [Vector2(14, 10), Vector2(1, 5)], [Vector2(5, 11), Vector2(1, 4)], [Vector2(12, 11), Vector2(1, 4)], [Vector2(3, 12), Vector2(1, 3)], [Vector2(7, 12), Vector2(1, 4)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(13, 12), Vector2(1, 3)], [Vector2(8, 13), Vector2(1, 3)], [Vector2(2, 14), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 2)], [Vector2(1, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/web"
	},
	"web_ball" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 3), Vector2(5, 9)], [Vector2(4, 4), Vector2(1, 7)], [Vector2(10, 4), Vector2(1, 7)], [Vector2(3, 5), Vector2(1, 5)], [Vector2(11, 5), Vector2(1, 5)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/giant_spider/web_ball"
	},
	"web_create" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 3), Vector2(5, 9)], [Vector2(4, 4), Vector2(1, 7)], [Vector2(10, 4), Vector2(1, 7)], [Vector2(3, 5), Vector2(1, 5)], [Vector2(11, 5), Vector2(1, 5)]],
		1 : [[Vector2(2, 2), Vector2(1, 2)], [Vector2(7, 2), Vector2(1, 11)], [Vector2(3, 3), Vector2(4, 9)], [Vector2(8, 3), Vector2(3, 9)], [Vector2(11, 5), Vector2(3, 2)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(11, 7), Vector2(1, 6)], [Vector2(1, 8), Vector2(1, 2)], [Vector2(2, 11), Vector2(1, 2)], [Vector2(6, 12), Vector2(1, 2)]],
		2 : [[Vector2(11, 1), Vector2(1, 2)], [Vector2(1, 2), Vector2(1, 3)], [Vector2(6, 2), Vector2(1, 14)], [Vector2(10, 2), Vector2(1, 11)], [Vector2(2, 3), Vector2(2, 11)], [Vector2(7, 3), Vector2(1, 11)], [Vector2(9, 3), Vector2(1, 10)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(8, 4), Vector2(1, 9)], [Vector2(11, 5), Vector2(1, 8)], [Vector2(12, 6), Vector2(4, 2)], [Vector2(1, 7), Vector2(1, 3)], [Vector2(12, 8), Vector2(2, 1)], [Vector2(12, 9), Vector2(1, 1)], [Vector2(12, 11), Vector2(1, 3)], [Vector2(1, 12), Vector2(1, 3)], [Vector2(13, 13), Vector2(1, 2)]],
		3 : [[Vector2(0, 0), Vector2(2, 2)], [Vector2(6, 0), Vector2(1, 16)], [Vector2(12, 0), Vector2(2, 1)], [Vector2(2, 1), Vector2(1, 14)], [Vector2(11, 1), Vector2(2, 1)], [Vector2(1, 2), Vector2(1, 3)], [Vector2(3, 2), Vector2(1, 12)], [Vector2(5, 2), Vector2(1, 14)], [Vector2(7, 2), Vector2(1, 13)], [Vector2(9, 2), Vector2(3, 1)], [Vector2(4, 3), Vector2(1, 10)], [Vector2(8, 3), Vector2(3, 10)], [Vector2(11, 5), Vector2(5, 3)], [Vector2(0, 7), Vector2(2, 2)], [Vector2(11, 8), Vector2(3, 1)], [Vector2(1, 9), Vector2(1, 1)], [Vector2(11, 9), Vector2(2, 1)], [Vector2(11, 10), Vector2(1, 3)], [Vector2(12, 11), Vector2(1, 3)], [Vector2(9, 13), Vector2(1, 3)], [Vector2(13, 13), Vector2(1, 2)], [Vector2(1, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(1, 2)], [Vector2(14, 14), Vector2(1, 2)]],
		4 : [[Vector2(1, 0), Vector2(2, 1)], [Vector2(7, 0), Vector2(1, 2)], [Vector2(12, 0), Vector2(2, 1)], [Vector2(2, 1), Vector2(5, 1)], [Vector2(8, 1), Vector2(5, 2)], [Vector2(3, 2), Vector2(4, 2)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(7, 3), Vector2(4, 2)], [Vector2(12, 3), Vector2(2, 5)], [Vector2(1, 4), Vector2(1, 6)], [Vector2(4, 4), Vector2(1, 3)], [Vector2(6, 4), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 4)], [Vector2(7, 5), Vector2(1, 3)], [Vector2(9, 5), Vector2(3, 1)], [Vector2(14, 5), Vector2(2, 2)], [Vector2(2, 6), Vector2(1, 2)], [Vector2(5, 6), Vector2(1, 2)], [Vector2(8, 6), Vector2(2, 1)], [Vector2(11, 6), Vector2(1, 9)], [Vector2(0, 7), Vector2(1, 1)], [Vector2(6, 7), Vector2(1, 9)], [Vector2(8, 7), Vector2(1, 4)], [Vector2(14, 7), Vector2(1, 1)], [Vector2(4, 8), Vector2(1, 7)], [Vector2(9, 8), Vector2(2, 2)], [Vector2(13, 8), Vector2(1, 3)], [Vector2(2, 9), Vector2(1, 4)], [Vector2(7, 9), Vector2(1, 2)], [Vector2(9, 10), Vector2(1, 6)], [Vector2(14, 10), Vector2(1, 5)], [Vector2(5, 11), Vector2(1, 4)], [Vector2(12, 11), Vector2(1, 4)], [Vector2(3, 12), Vector2(1, 3)], [Vector2(7, 12), Vector2(1, 4)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(13, 12), Vector2(1, 3)], [Vector2(8, 13), Vector2(1, 3)], [Vector2(2, 14), Vector2(1, 2)], [Vector2(15, 14), Vector2(1, 2)], [Vector2(1, 15), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/giant_spider/web_create"
	},
	"hawk_bounce_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 14)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_bounce_l"
	},
	"hawk_dead_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(2, 7), Vector2(20, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_dead_l"
	},
	"hawk_d_held_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(4, 3), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_d_held_l"
	},
	"hawk_die_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_die_ll"
	},
	"hawk_die_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_die_lr"
	},
	"hawk_fall_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_fall_l"
	},
	"hawk_held_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(4, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_held_l"
	},
	"hawk_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_left"
	},
	"hawk_run_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_run_left"
	},
	"hawk_stun_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(20, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_stun_l"
	},
	"hawk_throw_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(4, 0), Vector2(20, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/hawkman/hawk_throw_l"
	},
	"jaws_body1_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 1), Vector2(12, 26)], [Vector2(6, 2), Vector2(3, 29)], [Vector2(21, 2), Vector2(1, 27)], [Vector2(3, 3), Vector2(3, 27)], [Vector2(0, 4), Vector2(3, 25)], [Vector2(22, 6), Vector2(1, 23)], [Vector2(23, 7), Vector2(2, 21)], [Vector2(25, 8), Vector2(2, 18)], [Vector2(27, 9), Vector2(1, 16)], [Vector2(40, 9), Vector2(2, 4)], [Vector2(28, 10), Vector2(1, 14)], [Vector2(39, 10), Vector2(1, 15)], [Vector2(29, 11), Vector2(1, 12)], [Vector2(38, 11), Vector2(1, 13)], [Vector2(30, 12), Vector2(1, 11)], [Vector2(37, 12), Vector2(1, 11)], [Vector2(31, 13), Vector2(1, 9)], [Vector2(35, 13), Vector2(2, 9)], [Vector2(40, 13), Vector2(1, 13)], [Vector2(32, 14), Vector2(3, 7)], [Vector2(32, 21), Vector2(1, 1)], [Vector2(34, 21), Vector2(1, 1)], [Vector2(36, 22), Vector2(1, 1)], [Vector2(41, 23), Vector2(1, 3)], [Vector2(9, 27), Vector2(8, 1)], [Vector2(18, 27), Vector2(3, 1)], [Vector2(9, 28), Vector2(2, 2)], [Vector2(19, 28), Vector2(2, 1)], [Vector2(23, 28), Vector2(1, 1)], [Vector2(5, 30), Vector2(1, 1)], [Vector2(9, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/jaws_body1_l"
	},
	"jaws_body1_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(27, 1), Vector2(12, 26)], [Vector2(26, 2), Vector2(1, 27)], [Vector2(39, 2), Vector2(3, 29)], [Vector2(42, 3), Vector2(3, 27)], [Vector2(45, 4), Vector2(3, 25)], [Vector2(25, 6), Vector2(1, 23)], [Vector2(23, 7), Vector2(2, 21)], [Vector2(21, 8), Vector2(2, 18)], [Vector2(6, 9), Vector2(2, 4)], [Vector2(20, 9), Vector2(1, 16)], [Vector2(8, 10), Vector2(1, 15)], [Vector2(19, 10), Vector2(1, 14)], [Vector2(9, 11), Vector2(1, 13)], [Vector2(18, 11), Vector2(1, 12)], [Vector2(10, 12), Vector2(1, 11)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(7, 13), Vector2(1, 13)], [Vector2(11, 13), Vector2(2, 9)], [Vector2(16, 13), Vector2(1, 9)], [Vector2(13, 14), Vector2(3, 7)], [Vector2(13, 21), Vector2(1, 1)], [Vector2(15, 21), Vector2(1, 1)], [Vector2(11, 22), Vector2(1, 1)], [Vector2(6, 23), Vector2(1, 3)], [Vector2(27, 27), Vector2(3, 1)], [Vector2(31, 27), Vector2(8, 1)], [Vector2(24, 28), Vector2(1, 1)], [Vector2(27, 28), Vector2(2, 1)], [Vector2(37, 28), Vector2(2, 2)], [Vector2(38, 30), Vector2(1, 1)], [Vector2(42, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/jaws_body1_r"
	},
	"jaws_body2_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 1), Vector2(12, 26)], [Vector2(6, 2), Vector2(3, 29)], [Vector2(21, 2), Vector2(1, 5)], [Vector2(3, 3), Vector2(3, 27)], [Vector2(0, 4), Vector2(3, 25)], [Vector2(24, 6), Vector2(2, 2)], [Vector2(23, 7), Vector2(1, 22)], [Vector2(22, 8), Vector2(1, 21)], [Vector2(24, 8), Vector2(1, 2)], [Vector2(27, 8), Vector2(1, 17)], [Vector2(21, 9), Vector2(1, 20)], [Vector2(26, 9), Vector2(1, 17)], [Vector2(28, 9), Vector2(1, 15)], [Vector2(40, 9), Vector2(2, 4)], [Vector2(25, 10), Vector2(1, 16)], [Vector2(29, 10), Vector2(1, 13)], [Vector2(31, 10), Vector2(1, 12)], [Vector2(39, 10), Vector2(1, 15)], [Vector2(24, 11), Vector2(1, 17)], [Vector2(30, 11), Vector2(1, 12)], [Vector2(38, 11), Vector2(1, 13)], [Vector2(32, 12), Vector2(1, 10)], [Vector2(37, 12), Vector2(1, 11)], [Vector2(35, 13), Vector2(2, 9)], [Vector2(40, 13), Vector2(1, 13)], [Vector2(33, 14), Vector2(2, 7)], [Vector2(34, 21), Vector2(1, 1)], [Vector2(36, 22), Vector2(1, 1)], [Vector2(41, 23), Vector2(1, 3)], [Vector2(9, 27), Vector2(8, 1)], [Vector2(18, 27), Vector2(3, 1)], [Vector2(9, 28), Vector2(2, 2)], [Vector2(19, 28), Vector2(2, 1)], [Vector2(5, 30), Vector2(1, 1)], [Vector2(9, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/jaws_body2_l"
	},
	"jaws_body2_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(27, 1), Vector2(12, 26)], [Vector2(26, 2), Vector2(1, 5)], [Vector2(39, 2), Vector2(3, 29)], [Vector2(42, 3), Vector2(3, 27)], [Vector2(45, 4), Vector2(3, 25)], [Vector2(22, 6), Vector2(2, 2)], [Vector2(24, 7), Vector2(1, 22)], [Vector2(20, 8), Vector2(1, 17)], [Vector2(23, 8), Vector2(1, 2)], [Vector2(25, 8), Vector2(1, 21)], [Vector2(6, 9), Vector2(2, 4)], [Vector2(19, 9), Vector2(1, 15)], [Vector2(21, 9), Vector2(1, 17)], [Vector2(26, 9), Vector2(1, 20)], [Vector2(8, 10), Vector2(1, 15)], [Vector2(16, 10), Vector2(1, 12)], [Vector2(18, 10), Vector2(1, 13)], [Vector2(22, 10), Vector2(1, 16)], [Vector2(9, 11), Vector2(1, 13)], [Vector2(17, 11), Vector2(1, 12)], [Vector2(23, 11), Vector2(1, 17)], [Vector2(10, 12), Vector2(1, 11)], [Vector2(15, 12), Vector2(1, 10)], [Vector2(7, 13), Vector2(1, 13)], [Vector2(11, 13), Vector2(2, 9)], [Vector2(13, 14), Vector2(2, 7)], [Vector2(13, 21), Vector2(1, 1)], [Vector2(11, 22), Vector2(1, 1)], [Vector2(6, 23), Vector2(1, 3)], [Vector2(27, 27), Vector2(3, 1)], [Vector2(31, 27), Vector2(8, 1)], [Vector2(27, 28), Vector2(2, 1)], [Vector2(37, 28), Vector2(2, 2)], [Vector2(38, 30), Vector2(1, 1)], [Vector2(42, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/jaws_body2_r"
	},
	"jaws_body3_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 1), Vector2(12, 26)], [Vector2(6, 2), Vector2(3, 29)], [Vector2(21, 2), Vector2(1, 5)], [Vector2(3, 3), Vector2(3, 27)], [Vector2(0, 4), Vector2(3, 25)], [Vector2(24, 6), Vector2(2, 2)], [Vector2(23, 7), Vector2(1, 22)], [Vector2(22, 8), Vector2(1, 21)], [Vector2(24, 8), Vector2(1, 2)], [Vector2(27, 8), Vector2(1, 17)], [Vector2(21, 9), Vector2(1, 20)], [Vector2(26, 9), Vector2(1, 17)], [Vector2(28, 9), Vector2(1, 15)], [Vector2(40, 9), Vector2(2, 4)], [Vector2(25, 10), Vector2(1, 16)], [Vector2(29, 10), Vector2(1, 13)], [Vector2(31, 10), Vector2(1, 12)], [Vector2(39, 10), Vector2(1, 14)], [Vector2(24, 11), Vector2(1, 17)], [Vector2(30, 11), Vector2(1, 12)], [Vector2(38, 11), Vector2(1, 12)], [Vector2(32, 12), Vector2(1, 9)], [Vector2(37, 12), Vector2(1, 11)], [Vector2(35, 13), Vector2(2, 8)], [Vector2(40, 13), Vector2(1, 11)], [Vector2(33, 14), Vector2(2, 7)], [Vector2(41, 19), Vector2(1, 1)], [Vector2(33, 21), Vector2(1, 1)], [Vector2(36, 21), Vector2(1, 1)], [Vector2(41, 21), Vector2(1, 3)], [Vector2(42, 22), Vector2(1, 1)], [Vector2(9, 27), Vector2(8, 1)], [Vector2(18, 27), Vector2(3, 1)], [Vector2(9, 28), Vector2(2, 2)], [Vector2(19, 28), Vector2(2, 1)], [Vector2(5, 30), Vector2(1, 1)], [Vector2(9, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/jaws_body3_l"
	},
	"jaws_body3_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(27, 1), Vector2(12, 26)], [Vector2(26, 2), Vector2(1, 5)], [Vector2(39, 2), Vector2(3, 29)], [Vector2(42, 3), Vector2(3, 27)], [Vector2(45, 4), Vector2(3, 25)], [Vector2(22, 6), Vector2(2, 2)], [Vector2(24, 7), Vector2(1, 22)], [Vector2(20, 8), Vector2(1, 17)], [Vector2(23, 8), Vector2(1, 2)], [Vector2(25, 8), Vector2(1, 21)], [Vector2(6, 9), Vector2(2, 4)], [Vector2(19, 9), Vector2(1, 15)], [Vector2(21, 9), Vector2(1, 17)], [Vector2(26, 9), Vector2(1, 20)], [Vector2(8, 10), Vector2(1, 14)], [Vector2(16, 10), Vector2(1, 12)], [Vector2(18, 10), Vector2(1, 13)], [Vector2(22, 10), Vector2(1, 16)], [Vector2(9, 11), Vector2(1, 12)], [Vector2(17, 11), Vector2(1, 12)], [Vector2(23, 11), Vector2(1, 17)], [Vector2(10, 12), Vector2(1, 11)], [Vector2(15, 12), Vector2(1, 9)], [Vector2(7, 13), Vector2(1, 11)], [Vector2(11, 13), Vector2(2, 8)], [Vector2(13, 14), Vector2(2, 7)], [Vector2(6, 19), Vector2(1, 1)], [Vector2(6, 21), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 21), Vector2(1, 1)], [Vector2(5, 22), Vector2(1, 1)], [Vector2(27, 27), Vector2(3, 1)], [Vector2(31, 27), Vector2(8, 1)], [Vector2(27, 28), Vector2(2, 1)], [Vector2(37, 28), Vector2(2, 2)], [Vector2(38, 30), Vector2(1, 1)], [Vector2(42, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/jaws_body3_r"
	},
	"jaws_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(14, 4), Vector2(2, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)]],
		1 : [[Vector2(14, 4), Vector2(2, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)]],
		2 : [[Vector2(14, 4), Vector2(2, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)]],
		3 : [[Vector2(14, 4), Vector2(2, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)]],
		4 : [[Vector2(14, 4), Vector2(2, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)]],
		5 : [[Vector2(12, 4), Vector2(4, 25)], [Vector2(10, 5), Vector2(2, 25)], [Vector2(8, 6), Vector2(2, 24)], [Vector2(7, 7), Vector2(1, 23)], [Vector2(6, 8), Vector2(1, 21)], [Vector2(5, 9), Vector2(1, 20)], [Vector2(4, 11), Vector2(1, 17)], [Vector2(3, 13), Vector2(1, 14)], [Vector2(2, 15), Vector2(1, 6)], [Vector2(2, 22), Vector2(1, 4)], [Vector2(12, 29), Vector2(2, 1)]],
		6 : [[Vector2(12, 4), Vector2(4, 25)], [Vector2(10, 5), Vector2(2, 24)], [Vector2(9, 6), Vector2(1, 23)], [Vector2(8, 7), Vector2(1, 22)], [Vector2(7, 8), Vector2(1, 21)], [Vector2(6, 9), Vector2(1, 19)], [Vector2(5, 10), Vector2(1, 18)], [Vector2(4, 12), Vector2(1, 15)], [Vector2(3, 14), Vector2(1, 12)], [Vector2(2, 16), Vector2(1, 9)]],
		7 : [[Vector2(14, 4), Vector2(2, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)]],
		8 : [[Vector2(12, 4), Vector2(4, 25)], [Vector2(10, 5), Vector2(2, 25)], [Vector2(8, 6), Vector2(2, 24)], [Vector2(7, 7), Vector2(1, 23)], [Vector2(6, 8), Vector2(1, 21)], [Vector2(5, 9), Vector2(1, 20)], [Vector2(4, 11), Vector2(1, 17)], [Vector2(3, 13), Vector2(1, 14)], [Vector2(2, 15), Vector2(1, 6)], [Vector2(2, 22), Vector2(1, 4)], [Vector2(12, 29), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/jaws/jaws_left"
	},
	"jaws_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 4), Vector2(2, 25)], [Vector2(2, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(9, 7), Vector2(1, 15)], [Vector2(10, 8), Vector2(1, 14)], [Vector2(11, 10), Vector2(1, 11)], [Vector2(12, 12), Vector2(1, 9)], [Vector2(13, 14), Vector2(1, 6)], [Vector2(9, 23), Vector2(2, 7)], [Vector2(12, 23), Vector2(1, 6)], [Vector2(11, 24), Vector2(1, 6)], [Vector2(13, 24), Vector2(1, 4)]],
		1 : [[Vector2(0, 4), Vector2(2, 25)], [Vector2(2, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(9, 7), Vector2(1, 15)], [Vector2(10, 8), Vector2(1, 14)], [Vector2(11, 10), Vector2(1, 11)], [Vector2(12, 12), Vector2(1, 9)], [Vector2(13, 14), Vector2(1, 6)], [Vector2(9, 23), Vector2(2, 7)], [Vector2(12, 23), Vector2(1, 6)], [Vector2(11, 24), Vector2(1, 6)], [Vector2(13, 24), Vector2(1, 4)]],
		2 : [[Vector2(0, 4), Vector2(2, 25)], [Vector2(2, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(9, 7), Vector2(1, 15)], [Vector2(10, 8), Vector2(1, 14)], [Vector2(11, 10), Vector2(1, 11)], [Vector2(12, 12), Vector2(1, 9)], [Vector2(13, 14), Vector2(1, 6)], [Vector2(9, 23), Vector2(2, 7)], [Vector2(12, 23), Vector2(1, 6)], [Vector2(11, 24), Vector2(1, 6)], [Vector2(13, 24), Vector2(1, 4)]],
		3 : [[Vector2(0, 4), Vector2(2, 25)], [Vector2(2, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(9, 7), Vector2(1, 15)], [Vector2(10, 8), Vector2(1, 14)], [Vector2(11, 10), Vector2(1, 11)], [Vector2(12, 12), Vector2(1, 9)], [Vector2(13, 14), Vector2(1, 6)], [Vector2(9, 23), Vector2(2, 7)], [Vector2(12, 23), Vector2(1, 6)], [Vector2(11, 24), Vector2(1, 6)], [Vector2(13, 24), Vector2(1, 4)]],
		4 : [[Vector2(0, 4), Vector2(2, 25)], [Vector2(2, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(9, 7), Vector2(1, 15)], [Vector2(10, 8), Vector2(1, 14)], [Vector2(11, 10), Vector2(1, 11)], [Vector2(12, 12), Vector2(1, 9)], [Vector2(13, 14), Vector2(1, 6)], [Vector2(9, 23), Vector2(2, 7)], [Vector2(12, 23), Vector2(1, 6)], [Vector2(11, 24), Vector2(1, 6)], [Vector2(13, 24), Vector2(1, 4)]],
		5 : [[Vector2(0, 4), Vector2(4, 25)], [Vector2(4, 5), Vector2(2, 25)], [Vector2(6, 6), Vector2(2, 24)], [Vector2(8, 7), Vector2(1, 23)], [Vector2(9, 8), Vector2(1, 21)], [Vector2(10, 9), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 17)], [Vector2(12, 13), Vector2(1, 14)], [Vector2(13, 15), Vector2(1, 6)], [Vector2(13, 22), Vector2(1, 4)], [Vector2(2, 29), Vector2(2, 1)]],
		6 : [[Vector2(0, 4), Vector2(4, 25)], [Vector2(4, 5), Vector2(2, 24)], [Vector2(6, 6), Vector2(1, 23)], [Vector2(7, 7), Vector2(1, 22)], [Vector2(8, 8), Vector2(1, 21)], [Vector2(9, 9), Vector2(1, 19)], [Vector2(10, 10), Vector2(1, 18)], [Vector2(11, 12), Vector2(1, 15)], [Vector2(12, 14), Vector2(1, 12)], [Vector2(13, 16), Vector2(1, 9)]],
		7 : [[Vector2(0, 4), Vector2(2, 25)], [Vector2(2, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(9, 7), Vector2(1, 15)], [Vector2(10, 8), Vector2(1, 14)], [Vector2(11, 10), Vector2(1, 11)], [Vector2(12, 12), Vector2(1, 9)], [Vector2(13, 14), Vector2(1, 6)], [Vector2(9, 23), Vector2(2, 7)], [Vector2(12, 23), Vector2(1, 6)], [Vector2(11, 24), Vector2(1, 6)], [Vector2(13, 24), Vector2(1, 4)]],
		8 : [[Vector2(0, 4), Vector2(4, 25)], [Vector2(4, 5), Vector2(2, 25)], [Vector2(6, 6), Vector2(2, 24)], [Vector2(8, 7), Vector2(1, 23)], [Vector2(9, 8), Vector2(1, 21)], [Vector2(10, 9), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 17)], [Vector2(12, 13), Vector2(1, 14)], [Vector2(13, 15), Vector2(1, 6)], [Vector2(13, 22), Vector2(1, 4)], [Vector2(2, 29), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/jaws/jaws_right"
	},
	"jaws_turn_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(26, 1), Vector2(8, 26)], [Vector2(25, 2), Vector2(1, 27)], [Vector2(34, 2), Vector2(3, 29)], [Vector2(37, 3), Vector2(3, 28)], [Vector2(40, 4), Vector2(10, 25)], [Vector2(50, 5), Vector2(2, 24)], [Vector2(24, 6), Vector2(1, 23)], [Vector2(52, 6), Vector2(1, 23)], [Vector2(23, 7), Vector2(1, 22)], [Vector2(53, 7), Vector2(1, 22)], [Vector2(22, 8), Vector2(1, 20)], [Vector2(8, 9), Vector2(2, 4)], [Vector2(21, 9), Vector2(1, 16)], [Vector2(54, 9), Vector2(1, 20)], [Vector2(10, 10), Vector2(1, 15)], [Vector2(20, 10), Vector2(1, 14)], [Vector2(11, 11), Vector2(1, 13)], [Vector2(19, 11), Vector2(1, 12)], [Vector2(55, 11), Vector2(1, 17)], [Vector2(12, 12), Vector2(1, 11)], [Vector2(18, 12), Vector2(1, 11)], [Vector2(9, 13), Vector2(1, 13)], [Vector2(13, 13), Vector2(1, 9)], [Vector2(17, 13), Vector2(1, 9)], [Vector2(56, 13), Vector2(1, 5)], [Vector2(14, 14), Vector2(3, 7)], [Vector2(14, 21), Vector2(1, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(56, 21), Vector2(1, 6)], [Vector2(8, 23), Vector2(1, 3)], [Vector2(26, 27), Vector2(3, 1)], [Vector2(30, 27), Vector2(4, 1)], [Vector2(26, 28), Vector2(2, 1)], [Vector2(32, 28), Vector2(2, 2)], [Vector2(40, 29), Vector2(5, 1)], [Vector2(33, 30), Vector2(1, 1)], [Vector2(40, 30), Vector2(2, 1)]],
		1 : [[Vector2(23, 1), Vector2(6, 26)], [Vector2(22, 2), Vector2(1, 27)], [Vector2(29, 2), Vector2(3, 29)], [Vector2(32, 3), Vector2(3, 27)], [Vector2(35, 4), Vector2(8, 25)], [Vector2(43, 5), Vector2(2, 24)], [Vector2(21, 6), Vector2(1, 23)], [Vector2(45, 6), Vector2(1, 23)], [Vector2(20, 7), Vector2(1, 21)], [Vector2(46, 7), Vector2(1, 22)], [Vector2(19, 8), Vector2(1, 16)], [Vector2(12, 9), Vector2(2, 4)], [Vector2(47, 9), Vector2(1, 20)], [Vector2(14, 10), Vector2(1, 15)], [Vector2(18, 10), Vector2(1, 13)], [Vector2(15, 11), Vector2(1, 13)], [Vector2(48, 11), Vector2(1, 17)], [Vector2(16, 12), Vector2(2, 10)], [Vector2(13, 13), Vector2(1, 13)], [Vector2(49, 13), Vector2(1, 5)], [Vector2(49, 21), Vector2(1, 6)], [Vector2(16, 22), Vector2(1, 1)], [Vector2(12, 23), Vector2(1, 3)], [Vector2(23, 27), Vector2(3, 1)], [Vector2(28, 27), Vector2(1, 3)], [Vector2(23, 28), Vector2(2, 1)], [Vector2(39, 29), Vector2(4, 1)], [Vector2(32, 30), Vector2(1, 1)], [Vector2(39, 30), Vector2(3, 1)]],
		2 : [[Vector2(23, 1), Vector2(6, 26)], [Vector2(22, 2), Vector2(1, 3)], [Vector2(29, 2), Vector2(3, 25)], [Vector2(32, 3), Vector2(2, 26)], [Vector2(34, 4), Vector2(2, 24)], [Vector2(36, 5), Vector2(1, 23)], [Vector2(22, 6), Vector2(1, 23)], [Vector2(37, 6), Vector2(1, 22)], [Vector2(21, 7), Vector2(1, 17)], [Vector2(38, 8), Vector2(1, 20)], [Vector2(16, 9), Vector2(2, 4)], [Vector2(20, 9), Vector2(1, 15)], [Vector2(18, 10), Vector2(1, 13)], [Vector2(39, 10), Vector2(1, 17)], [Vector2(19, 11), Vector2(1, 12)], [Vector2(40, 12), Vector2(1, 14)], [Vector2(17, 13), Vector2(1, 11)], [Vector2(16, 21), Vector2(1, 3)], [Vector2(21, 25), Vector2(1, 4)], [Vector2(20, 26), Vector2(1, 2)], [Vector2(23, 27), Vector2(4, 1)], [Vector2(30, 27), Vector2(2, 1)], [Vector2(23, 28), Vector2(2, 1)], [Vector2(31, 28), Vector2(1, 1)], [Vector2(34, 28), Vector2(1, 1)]],
		3 : [[Vector2(35, 1), Vector2(6, 26)], [Vector2(32, 2), Vector2(3, 25)], [Vector2(41, 2), Vector2(1, 3)], [Vector2(30, 3), Vector2(2, 26)], [Vector2(28, 4), Vector2(2, 24)], [Vector2(27, 5), Vector2(1, 23)], [Vector2(26, 6), Vector2(1, 22)], [Vector2(41, 6), Vector2(1, 23)], [Vector2(42, 7), Vector2(1, 17)], [Vector2(25, 8), Vector2(1, 20)], [Vector2(43, 9), Vector2(1, 15)], [Vector2(46, 9), Vector2(2, 4)], [Vector2(24, 10), Vector2(1, 17)], [Vector2(45, 10), Vector2(1, 13)], [Vector2(44, 11), Vector2(1, 12)], [Vector2(23, 12), Vector2(1, 14)], [Vector2(46, 13), Vector2(1, 11)], [Vector2(47, 21), Vector2(1, 3)], [Vector2(42, 25), Vector2(1, 4)], [Vector2(43, 26), Vector2(1, 2)], [Vector2(32, 27), Vector2(2, 1)], [Vector2(37, 27), Vector2(4, 1)], [Vector2(29, 28), Vector2(1, 1)], [Vector2(32, 28), Vector2(1, 1)], [Vector2(39, 28), Vector2(2, 1)]],
		4 : [[Vector2(35, 1), Vector2(6, 26)], [Vector2(32, 2), Vector2(3, 29)], [Vector2(41, 2), Vector2(1, 27)], [Vector2(29, 3), Vector2(3, 27)], [Vector2(21, 4), Vector2(8, 25)], [Vector2(19, 5), Vector2(2, 24)], [Vector2(18, 6), Vector2(1, 23)], [Vector2(42, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(1, 22)], [Vector2(43, 7), Vector2(1, 21)], [Vector2(44, 8), Vector2(1, 16)], [Vector2(16, 9), Vector2(1, 20)], [Vector2(50, 9), Vector2(2, 4)], [Vector2(45, 10), Vector2(1, 13)], [Vector2(49, 10), Vector2(1, 15)], [Vector2(15, 11), Vector2(1, 17)], [Vector2(48, 11), Vector2(1, 13)], [Vector2(46, 12), Vector2(2, 10)], [Vector2(14, 13), Vector2(1, 5)], [Vector2(50, 13), Vector2(1, 13)], [Vector2(14, 21), Vector2(1, 6)], [Vector2(47, 22), Vector2(1, 1)], [Vector2(51, 23), Vector2(1, 3)], [Vector2(35, 27), Vector2(1, 3)], [Vector2(38, 27), Vector2(3, 1)], [Vector2(39, 28), Vector2(2, 1)], [Vector2(21, 29), Vector2(4, 1)], [Vector2(22, 30), Vector2(3, 1)], [Vector2(31, 30), Vector2(1, 1)]],
		5 : [[Vector2(30, 1), Vector2(8, 26)], [Vector2(27, 2), Vector2(3, 29)], [Vector2(38, 2), Vector2(1, 27)], [Vector2(24, 3), Vector2(3, 28)], [Vector2(14, 4), Vector2(10, 25)], [Vector2(12, 5), Vector2(2, 24)], [Vector2(11, 6), Vector2(1, 23)], [Vector2(39, 6), Vector2(1, 23)], [Vector2(10, 7), Vector2(1, 22)], [Vector2(40, 7), Vector2(1, 22)], [Vector2(41, 8), Vector2(1, 20)], [Vector2(9, 9), Vector2(1, 20)], [Vector2(42, 9), Vector2(1, 16)], [Vector2(54, 9), Vector2(2, 4)], [Vector2(43, 10), Vector2(1, 14)], [Vector2(53, 10), Vector2(1, 15)], [Vector2(8, 11), Vector2(1, 17)], [Vector2(44, 11), Vector2(1, 12)], [Vector2(52, 11), Vector2(1, 13)], [Vector2(45, 12), Vector2(1, 11)], [Vector2(51, 12), Vector2(1, 11)], [Vector2(7, 13), Vector2(1, 5)], [Vector2(46, 13), Vector2(1, 9)], [Vector2(50, 13), Vector2(1, 9)], [Vector2(54, 13), Vector2(1, 13)], [Vector2(47, 14), Vector2(3, 7)], [Vector2(7, 21), Vector2(1, 6)], [Vector2(47, 21), Vector2(1, 1)], [Vector2(49, 21), Vector2(1, 1)], [Vector2(55, 23), Vector2(1, 3)], [Vector2(30, 27), Vector2(4, 1)], [Vector2(35, 27), Vector2(3, 1)], [Vector2(30, 28), Vector2(2, 2)], [Vector2(36, 28), Vector2(2, 1)], [Vector2(19, 29), Vector2(5, 1)], [Vector2(22, 30), Vector2(2, 1)], [Vector2(30, 30), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/jaws/jaws_turn_l"
	},
	"jaws_turn_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(30, 1), Vector2(8, 26)], [Vector2(27, 2), Vector2(3, 29)], [Vector2(38, 2), Vector2(1, 27)], [Vector2(24, 3), Vector2(3, 28)], [Vector2(14, 4), Vector2(10, 25)], [Vector2(12, 5), Vector2(2, 24)], [Vector2(11, 6), Vector2(1, 23)], [Vector2(39, 6), Vector2(1, 23)], [Vector2(10, 7), Vector2(1, 22)], [Vector2(40, 7), Vector2(1, 22)], [Vector2(41, 8), Vector2(1, 20)], [Vector2(9, 9), Vector2(1, 20)], [Vector2(42, 9), Vector2(1, 16)], [Vector2(54, 9), Vector2(2, 4)], [Vector2(43, 10), Vector2(1, 14)], [Vector2(53, 10), Vector2(1, 15)], [Vector2(8, 11), Vector2(1, 17)], [Vector2(44, 11), Vector2(1, 12)], [Vector2(52, 11), Vector2(1, 13)], [Vector2(45, 12), Vector2(1, 11)], [Vector2(51, 12), Vector2(1, 11)], [Vector2(7, 13), Vector2(1, 5)], [Vector2(46, 13), Vector2(1, 9)], [Vector2(50, 13), Vector2(1, 9)], [Vector2(54, 13), Vector2(1, 13)], [Vector2(47, 14), Vector2(3, 7)], [Vector2(7, 21), Vector2(1, 6)], [Vector2(47, 21), Vector2(1, 1)], [Vector2(49, 21), Vector2(1, 1)], [Vector2(55, 23), Vector2(1, 3)], [Vector2(30, 27), Vector2(4, 1)], [Vector2(35, 27), Vector2(3, 1)], [Vector2(30, 28), Vector2(2, 2)], [Vector2(36, 28), Vector2(2, 1)], [Vector2(19, 29), Vector2(5, 1)], [Vector2(22, 30), Vector2(2, 1)], [Vector2(30, 30), Vector2(1, 1)]],
		1 : [[Vector2(35, 1), Vector2(6, 26)], [Vector2(32, 2), Vector2(3, 29)], [Vector2(41, 2), Vector2(1, 27)], [Vector2(29, 3), Vector2(3, 27)], [Vector2(21, 4), Vector2(8, 25)], [Vector2(19, 5), Vector2(2, 24)], [Vector2(18, 6), Vector2(1, 23)], [Vector2(42, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(1, 22)], [Vector2(43, 7), Vector2(1, 21)], [Vector2(44, 8), Vector2(1, 16)], [Vector2(16, 9), Vector2(1, 20)], [Vector2(50, 9), Vector2(2, 4)], [Vector2(45, 10), Vector2(1, 13)], [Vector2(49, 10), Vector2(1, 15)], [Vector2(15, 11), Vector2(1, 17)], [Vector2(48, 11), Vector2(1, 13)], [Vector2(46, 12), Vector2(2, 10)], [Vector2(14, 13), Vector2(1, 5)], [Vector2(50, 13), Vector2(1, 13)], [Vector2(14, 21), Vector2(1, 6)], [Vector2(47, 22), Vector2(1, 1)], [Vector2(51, 23), Vector2(1, 3)], [Vector2(35, 27), Vector2(1, 3)], [Vector2(38, 27), Vector2(3, 1)], [Vector2(39, 28), Vector2(2, 1)], [Vector2(21, 29), Vector2(4, 1)], [Vector2(22, 30), Vector2(3, 1)], [Vector2(31, 30), Vector2(1, 1)]],
		2 : [[Vector2(35, 1), Vector2(6, 26)], [Vector2(32, 2), Vector2(3, 25)], [Vector2(41, 2), Vector2(1, 3)], [Vector2(30, 3), Vector2(2, 26)], [Vector2(28, 4), Vector2(2, 24)], [Vector2(27, 5), Vector2(1, 23)], [Vector2(26, 6), Vector2(1, 22)], [Vector2(41, 6), Vector2(1, 23)], [Vector2(42, 7), Vector2(1, 17)], [Vector2(25, 8), Vector2(1, 20)], [Vector2(43, 9), Vector2(1, 15)], [Vector2(46, 9), Vector2(2, 4)], [Vector2(24, 10), Vector2(1, 17)], [Vector2(45, 10), Vector2(1, 13)], [Vector2(44, 11), Vector2(1, 12)], [Vector2(23, 12), Vector2(1, 14)], [Vector2(46, 13), Vector2(1, 11)], [Vector2(47, 21), Vector2(1, 3)], [Vector2(42, 25), Vector2(1, 4)], [Vector2(43, 26), Vector2(1, 2)], [Vector2(32, 27), Vector2(2, 1)], [Vector2(37, 27), Vector2(4, 1)], [Vector2(29, 28), Vector2(1, 1)], [Vector2(32, 28), Vector2(1, 1)], [Vector2(39, 28), Vector2(2, 1)]],
		3 : [[Vector2(23, 1), Vector2(6, 26)], [Vector2(22, 2), Vector2(1, 3)], [Vector2(29, 2), Vector2(3, 25)], [Vector2(32, 3), Vector2(2, 26)], [Vector2(34, 4), Vector2(2, 24)], [Vector2(36, 5), Vector2(1, 23)], [Vector2(22, 6), Vector2(1, 23)], [Vector2(37, 6), Vector2(1, 22)], [Vector2(21, 7), Vector2(1, 17)], [Vector2(38, 8), Vector2(1, 20)], [Vector2(16, 9), Vector2(2, 4)], [Vector2(20, 9), Vector2(1, 15)], [Vector2(18, 10), Vector2(1, 13)], [Vector2(39, 10), Vector2(1, 17)], [Vector2(19, 11), Vector2(1, 12)], [Vector2(40, 12), Vector2(1, 14)], [Vector2(17, 13), Vector2(1, 11)], [Vector2(16, 21), Vector2(1, 3)], [Vector2(21, 25), Vector2(1, 4)], [Vector2(20, 26), Vector2(1, 2)], [Vector2(23, 27), Vector2(4, 1)], [Vector2(30, 27), Vector2(2, 1)], [Vector2(23, 28), Vector2(2, 1)], [Vector2(31, 28), Vector2(1, 1)], [Vector2(34, 28), Vector2(1, 1)]],
		4 : [[Vector2(23, 1), Vector2(6, 26)], [Vector2(22, 2), Vector2(1, 27)], [Vector2(29, 2), Vector2(3, 29)], [Vector2(32, 3), Vector2(3, 27)], [Vector2(35, 4), Vector2(8, 25)], [Vector2(43, 5), Vector2(2, 24)], [Vector2(21, 6), Vector2(1, 23)], [Vector2(45, 6), Vector2(1, 23)], [Vector2(20, 7), Vector2(1, 21)], [Vector2(46, 7), Vector2(1, 22)], [Vector2(19, 8), Vector2(1, 16)], [Vector2(12, 9), Vector2(2, 4)], [Vector2(47, 9), Vector2(1, 20)], [Vector2(14, 10), Vector2(1, 15)], [Vector2(18, 10), Vector2(1, 13)], [Vector2(15, 11), Vector2(1, 13)], [Vector2(48, 11), Vector2(1, 17)], [Vector2(16, 12), Vector2(2, 10)], [Vector2(13, 13), Vector2(1, 13)], [Vector2(49, 13), Vector2(1, 5)], [Vector2(49, 21), Vector2(1, 6)], [Vector2(16, 22), Vector2(1, 1)], [Vector2(12, 23), Vector2(1, 3)], [Vector2(23, 27), Vector2(3, 1)], [Vector2(28, 27), Vector2(1, 3)], [Vector2(23, 28), Vector2(2, 1)], [Vector2(39, 29), Vector2(4, 1)], [Vector2(32, 30), Vector2(1, 1)], [Vector2(39, 30), Vector2(3, 1)]],
		5 : [[Vector2(26, 1), Vector2(8, 26)], [Vector2(25, 2), Vector2(1, 27)], [Vector2(34, 2), Vector2(3, 29)], [Vector2(37, 3), Vector2(3, 28)], [Vector2(40, 4), Vector2(10, 25)], [Vector2(50, 5), Vector2(2, 24)], [Vector2(24, 6), Vector2(1, 23)], [Vector2(52, 6), Vector2(1, 23)], [Vector2(23, 7), Vector2(1, 22)], [Vector2(53, 7), Vector2(1, 22)], [Vector2(22, 8), Vector2(1, 20)], [Vector2(8, 9), Vector2(2, 4)], [Vector2(21, 9), Vector2(1, 16)], [Vector2(54, 9), Vector2(1, 20)], [Vector2(10, 10), Vector2(1, 15)], [Vector2(20, 10), Vector2(1, 14)], [Vector2(11, 11), Vector2(1, 13)], [Vector2(19, 11), Vector2(1, 12)], [Vector2(55, 11), Vector2(1, 17)], [Vector2(12, 12), Vector2(1, 11)], [Vector2(18, 12), Vector2(1, 11)], [Vector2(9, 13), Vector2(1, 13)], [Vector2(13, 13), Vector2(1, 9)], [Vector2(17, 13), Vector2(1, 9)], [Vector2(56, 13), Vector2(1, 5)], [Vector2(14, 14), Vector2(3, 7)], [Vector2(14, 21), Vector2(1, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(56, 21), Vector2(1, 6)], [Vector2(8, 23), Vector2(1, 3)], [Vector2(26, 27), Vector2(3, 1)], [Vector2(30, 27), Vector2(4, 1)], [Vector2(26, 28), Vector2(2, 1)], [Vector2(32, 28), Vector2(2, 2)], [Vector2(40, 29), Vector2(5, 1)], [Vector2(33, 30), Vector2(1, 1)], [Vector2(40, 30), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/jaws/jaws_turn_r"
	},
	"mega_mouth" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(25, 1), Vector2(12, 26)], [Vector2(22, 2), Vector2(3, 29)], [Vector2(37, 2), Vector2(1, 27)], [Vector2(19, 3), Vector2(3, 27)], [Vector2(14, 4), Vector2(5, 25)], [Vector2(9, 5), Vector2(5, 25)], [Vector2(7, 6), Vector2(2, 24)], [Vector2(38, 6), Vector2(1, 23)], [Vector2(6, 7), Vector2(1, 15)], [Vector2(39, 7), Vector2(2, 21)], [Vector2(5, 8), Vector2(1, 14)], [Vector2(41, 8), Vector2(2, 18)], [Vector2(43, 9), Vector2(1, 16)], [Vector2(56, 9), Vector2(2, 4)], [Vector2(4, 10), Vector2(1, 11)], [Vector2(44, 10), Vector2(1, 14)], [Vector2(55, 10), Vector2(1, 15)], [Vector2(45, 11), Vector2(1, 12)], [Vector2(54, 11), Vector2(1, 13)], [Vector2(3, 12), Vector2(1, 9)], [Vector2(46, 12), Vector2(1, 11)], [Vector2(53, 12), Vector2(1, 11)], [Vector2(47, 13), Vector2(1, 9)], [Vector2(51, 13), Vector2(2, 9)], [Vector2(56, 13), Vector2(1, 13)], [Vector2(2, 14), Vector2(1, 6)], [Vector2(48, 14), Vector2(3, 7)], [Vector2(48, 21), Vector2(1, 1)], [Vector2(50, 21), Vector2(1, 1)], [Vector2(52, 22), Vector2(1, 1)], [Vector2(3, 23), Vector2(1, 6)], [Vector2(5, 23), Vector2(2, 7)], [Vector2(57, 23), Vector2(1, 3)], [Vector2(2, 24), Vector2(1, 4)], [Vector2(4, 24), Vector2(1, 6)], [Vector2(25, 27), Vector2(8, 1)], [Vector2(34, 27), Vector2(3, 1)], [Vector2(25, 28), Vector2(2, 2)], [Vector2(35, 28), Vector2(2, 1)], [Vector2(39, 28), Vector2(1, 1)], [Vector2(21, 30), Vector2(1, 1)], [Vector2(25, 30), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/jaws/mega_mouth"
	},
	"magma" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 3), Vector2(1, 11)], [Vector2(4, 4), Vector2(1, 9)], [Vector2(6, 4), Vector2(1, 9)], [Vector2(8, 4), Vector2(1, 10)], [Vector2(5, 5), Vector2(1, 8)], [Vector2(9, 5), Vector2(2, 8)], [Vector2(3, 6), Vector2(1, 6)], [Vector2(11, 6), Vector2(1, 6)], [Vector2(2, 7), Vector2(1, 4)], [Vector2(12, 8), Vector2(1, 2)], [Vector2(9, 13), Vector2(1, 1)]],
		1 : [[Vector2(6, 3), Vector2(3, 10)], [Vector2(5, 4), Vector2(1, 9)], [Vector2(9, 4), Vector2(2, 9)], [Vector2(4, 5), Vector2(1, 7)], [Vector2(11, 5), Vector2(1, 7)], [Vector2(3, 6), Vector2(1, 5)], [Vector2(12, 7), Vector2(1, 4)], [Vector2(2, 9), Vector2(1, 1)]],
		2 : [[Vector2(4, 4), Vector2(7, 8)], [Vector2(2, 5), Vector2(2, 3)], [Vector2(11, 5), Vector2(1, 7)], [Vector2(12, 7), Vector2(1, 4)], [Vector2(3, 8), Vector2(1, 3)], [Vector2(5, 12), Vector2(6, 1)], [Vector2(10, 13), Vector2(1, 1)]],
		3 : [[Vector2(5, 3), Vector2(1, 10)], [Vector2(4, 4), Vector2(1, 9)], [Vector2(6, 4), Vector2(5, 8)], [Vector2(3, 5), Vector2(1, 7)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(12, 7), Vector2(1, 3)], [Vector2(2, 8), Vector2(1, 2)], [Vector2(6, 12), Vector2(4, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/magma_man/magma"
	},
	"magma_man_create" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 2), Vector2(4, 13)], [Vector2(5, 3), Vector2(1, 12)], [Vector2(10, 3), Vector2(1, 12)], [Vector2(4, 4), Vector2(1, 10)], [Vector2(11, 5), Vector2(1, 9)], [Vector2(3, 6), Vector2(1, 7)], [Vector2(2, 7), Vector2(1, 5)], [Vector2(12, 7), Vector2(1, 6)], [Vector2(13, 8), Vector2(1, 4)]],
		1 : [[Vector2(7, 4), Vector2(2, 12)], [Vector2(6, 5), Vector2(1, 11)], [Vector2(9, 5), Vector2(1, 11)], [Vector2(5, 6), Vector2(1, 10)], [Vector2(10, 6), Vector2(1, 10)], [Vector2(4, 7), Vector2(1, 9)], [Vector2(11, 8), Vector2(1, 8)], [Vector2(1, 9), Vector2(1, 6)], [Vector2(3, 9), Vector2(1, 7)], [Vector2(2, 10), Vector2(1, 6)], [Vector2(12, 10), Vector2(1, 6)], [Vector2(13, 11), Vector2(1, 5)], [Vector2(0, 12), Vector2(1, 2)], [Vector2(14, 12), Vector2(1, 3)], [Vector2(15, 13), Vector2(1, 2)]],
		2 : [[Vector2(2, 7), Vector2(1, 9)], [Vector2(7, 8), Vector2(2, 8)], [Vector2(14, 8), Vector2(1, 8)], [Vector2(1, 9), Vector2(1, 7)], [Vector2(6, 9), Vector2(1, 7)], [Vector2(9, 9), Vector2(1, 7)], [Vector2(3, 10), Vector2(1, 6)], [Vector2(5, 10), Vector2(1, 6)], [Vector2(10, 10), Vector2(1, 6)], [Vector2(13, 10), Vector2(1, 6)], [Vector2(4, 11), Vector2(1, 5)], [Vector2(12, 11), Vector2(1, 5)], [Vector2(0, 12), Vector2(1, 3)], [Vector2(11, 12), Vector2(1, 4)], [Vector2(15, 13), Vector2(1, 2)]],
		3 : [[Vector2(5, 4), Vector2(2, 1)], [Vector2(4, 5), Vector2(2, 1)], [Vector2(10, 5), Vector2(1, 4)], [Vector2(3, 6), Vector2(2, 10)], [Vector2(11, 6), Vector2(1, 10)], [Vector2(2, 7), Vector2(1, 9)], [Vector2(12, 7), Vector2(1, 9)], [Vector2(14, 8), Vector2(1, 8)], [Vector2(1, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)], [Vector2(7, 10), Vector2(2, 6)], [Vector2(5, 11), Vector2(2, 5)], [Vector2(9, 11), Vector2(1, 5)], [Vector2(0, 12), Vector2(1, 3)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(15, 13), Vector2(1, 2)]],
		4 : [[Vector2(5, 1), Vector2(3, 15)], [Vector2(4, 2), Vector2(1, 3)], [Vector2(8, 2), Vector2(1, 14)], [Vector2(9, 4), Vector2(1, 12)], [Vector2(10, 6), Vector2(1, 10)], [Vector2(4, 7), Vector2(1, 9)], [Vector2(11, 7), Vector2(1, 9)], [Vector2(13, 8), Vector2(1, 8)], [Vector2(3, 9), Vector2(1, 7)], [Vector2(12, 9), Vector2(1, 7)], [Vector2(2, 12), Vector2(1, 3)], [Vector2(14, 13), Vector2(1, 2)]],
		5 : [[Vector2(5, 0), Vector2(2, 16)], [Vector2(4, 1), Vector2(1, 4)], [Vector2(7, 1), Vector2(1, 15)], [Vector2(8, 2), Vector2(1, 14)], [Vector2(9, 4), Vector2(1, 12)], [Vector2(10, 6), Vector2(1, 10)], [Vector2(11, 7), Vector2(1, 9)], [Vector2(4, 9), Vector2(1, 4)], [Vector2(12, 11), Vector2(1, 4)]],
		6 : [[Vector2(5, 0), Vector2(2, 16)], [Vector2(4, 1), Vector2(1, 12)], [Vector2(7, 1), Vector2(2, 15)], [Vector2(9, 3), Vector2(1, 13)], [Vector2(11, 4), Vector2(1, 12)], [Vector2(10, 5), Vector2(1, 11)], [Vector2(3, 7), Vector2(1, 6)], [Vector2(12, 7), Vector2(1, 8)], [Vector2(2, 9), Vector2(1, 3)], [Vector2(13, 9), Vector2(1, 3)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/magma_man/magma_man_create"
	},
	"magma_man_die" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/magma_man/magma_man_die"
	},
	"magma_man_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/magma_man/magma_man_left"
	},
	"magma_man_walk_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/magma_man/magma_man_walk_l"
	},
	"magma_trail" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 4), Vector2(4, 7)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(10, 5), Vector2(1, 6)], [Vector2(11, 6), Vector2(1, 3)], [Vector2(4, 7), Vector2(1, 2)], [Vector2(7, 11), Vector2(3, 1)]],
		1 : [[Vector2(6, 5), Vector2(3, 6)], [Vector2(5, 6), Vector2(1, 3)], [Vector2(9, 6), Vector2(2, 3)], [Vector2(9, 9), Vector2(1, 1)]],
		2 : [[Vector2(6, 6), Vector2(4, 3)], [Vector2(5, 7), Vector2(1, 2)], [Vector2(6, 9), Vector2(3, 1)]],
		3 : [[Vector2(7, 6), Vector2(2, 4)], [Vector2(6, 7), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 2)]],
		4 : [[Vector2(7, 7), Vector2(2, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/magma_man/magma_trail"
	},
	"man_trap_eat_caveman_l" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(25, 30)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/man_trap/man_trap_eat_caveman_l"
	},
	"man_trap_eat_damsel_l" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(25, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/man_trap/man_trap_eat_damsel_l"
	},
	"man_trap_eat_l" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(25, 30)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/man_trap/man_trap_eat_l"
	},
	"man_trap_eat_shopkeeper_l" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(16, 16), Vector2(5, 7)], [Vector2(14, 17), Vector2(2, 7)], [Vector2(21, 17), Vector2(1, 8)], [Vector2(12, 18), Vector2(2, 6)], [Vector2(9, 19), Vector2(3, 5)], [Vector2(22, 19), Vector2(1, 3)], [Vector2(8, 20), Vector2(1, 3)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(5, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(21, 26), Vector2(3, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(21, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(21, 29), Vector2(1, 2)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		1 : [[Vector2(12, 18), Vector2(5, 7)], [Vector2(10, 19), Vector2(2, 10)], [Vector2(17, 19), Vector2(1, 13)], [Vector2(8, 20), Vector2(2, 7)], [Vector2(5, 21), Vector2(3, 5)], [Vector2(18, 21), Vector2(1, 11)], [Vector2(4, 22), Vector2(1, 3)], [Vector2(19, 22), Vector2(1, 10)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 1)], [Vector2(15, 25), Vector2(2, 7)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(14, 26), Vector2(1, 6)], [Vector2(21, 26), Vector2(3, 2)], [Vector2(9, 27), Vector2(1, 1)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(21, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(21, 29), Vector2(1, 2)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		2 : [[Vector2(9, 14), Vector2(3, 5)], [Vector2(14, 14), Vector2(2, 8)], [Vector2(12, 15), Vector2(2, 6)], [Vector2(16, 15), Vector2(2, 8)], [Vector2(18, 16), Vector2(3, 15)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(22, 18), Vector2(1, 11)], [Vector2(10, 19), Vector2(2, 1)], [Vector2(23, 19), Vector2(1, 6)], [Vector2(24, 20), Vector2(1, 4)], [Vector2(13, 21), Vector2(1, 1)], [Vector2(15, 22), Vector2(1, 1)], [Vector2(17, 23), Vector2(1, 1)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(4, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(18, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		3 : [[Vector2(10, 16), Vector2(11, 4)], [Vector2(9, 17), Vector2(1, 2)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(22, 18), Vector2(1, 11)], [Vector2(23, 19), Vector2(1, 6)], [Vector2(12, 20), Vector2(9, 1)], [Vector2(24, 20), Vector2(1, 4)], [Vector2(13, 21), Vector2(8, 1)], [Vector2(15, 22), Vector2(6, 1)], [Vector2(17, 23), Vector2(4, 1)], [Vector2(18, 24), Vector2(3, 7)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(4, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(18, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		4 : [[Vector2(16, 16), Vector2(5, 7)], [Vector2(14, 17), Vector2(2, 5)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(12, 18), Vector2(2, 3)], [Vector2(11, 19), Vector2(1, 1)], [Vector2(22, 19), Vector2(1, 6)], [Vector2(17, 23), Vector2(4, 8)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(3, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(22, 26), Vector2(2, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(22, 28), Vector2(1, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(17, 31), Vector2(3, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		5 : [[Vector2(16, 17), Vector2(5, 7)], [Vector2(14, 18), Vector2(2, 5)], [Vector2(21, 18), Vector2(1, 13)], [Vector2(12, 19), Vector2(2, 3)], [Vector2(11, 20), Vector2(1, 1)], [Vector2(22, 20), Vector2(1, 5)], [Vector2(17, 24), Vector2(4, 7)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(3, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(22, 26), Vector2(2, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(22, 28), Vector2(1, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(17, 31), Vector2(3, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		6 : [[Vector2(5, 10), Vector2(5, 19)], [Vector2(4, 11), Vector2(1, 17)], [Vector2(10, 11), Vector2(1, 18)], [Vector2(3, 12), Vector2(1, 14)], [Vector2(11, 12), Vector2(1, 20)], [Vector2(2, 15), Vector2(1, 3)], [Vector2(12, 18), Vector2(1, 10)], [Vector2(0, 19), Vector2(3, 2)], [Vector2(13, 19), Vector2(1, 9)], [Vector2(1, 21), Vector2(2, 1)], [Vector2(14, 21), Vector2(3, 7)], [Vector2(17, 22), Vector2(3, 10)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(2, 24), Vector2(1, 2)], [Vector2(21, 24), Vector2(1, 7)], [Vector2(22, 25), Vector2(1, 4)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(15, 28), Vector2(2, 4)], [Vector2(12, 29), Vector2(3, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		7 : [[Vector2(5, 2), Vector2(5, 15)], [Vector2(4, 3), Vector2(1, 15)], [Vector2(10, 3), Vector2(1, 13)], [Vector2(3, 4), Vector2(1, 14)], [Vector2(11, 4), Vector2(1, 11)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(12, 10), Vector2(1, 3)], [Vector2(0, 11), Vector2(3, 2)], [Vector2(13, 11), Vector2(1, 2)], [Vector2(1, 13), Vector2(2, 1)], [Vector2(2, 16), Vector2(1, 2)], [Vector2(17, 16), Vector2(5, 7)], [Vector2(15, 17), Vector2(2, 6)], [Vector2(22, 17), Vector2(1, 7)], [Vector2(10, 18), Vector2(5, 5)], [Vector2(9, 19), Vector2(1, 3)], [Vector2(23, 19), Vector2(1, 3)], [Vector2(20, 23), Vector2(2, 5)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(20, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		8 : [[Vector2(15, 2), Vector2(5, 10)], [Vector2(14, 3), Vector2(1, 19)], [Vector2(20, 3), Vector2(1, 12)], [Vector2(13, 4), Vector2(1, 17)], [Vector2(21, 4), Vector2(1, 10)], [Vector2(9, 5), Vector2(4, 8)], [Vector2(8, 6), Vector2(1, 8)], [Vector2(7, 7), Vector2(1, 7)], [Vector2(6, 9), Vector2(1, 4)], [Vector2(15, 12), Vector2(1, 2)], [Vector2(18, 12), Vector2(2, 2)], [Vector2(12, 13), Vector2(1, 1)], [Vector2(19, 14), Vector2(1, 1)], [Vector2(11, 15), Vector2(2, 5)], [Vector2(15, 15), Vector2(2, 8)], [Vector2(10, 16), Vector2(1, 3)], [Vector2(17, 16), Vector2(3, 7)], [Vector2(20, 17), Vector2(3, 7)], [Vector2(23, 18), Vector2(1, 5)], [Vector2(9, 20), Vector2(1, 5)], [Vector2(24, 20), Vector2(1, 3)], [Vector2(8, 21), Vector2(1, 2)], [Vector2(10, 21), Vector2(1, 5)], [Vector2(11, 23), Vector2(1, 4)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(3, 4)], [Vector2(12, 25), Vector2(3, 3)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(13, 28), Vector2(2, 1)], [Vector2(19, 28), Vector2(2, 3)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(19, 31), Vector2(1, 1)], [Vector2(22, 31), Vector2(1, 1)]],
		9 : [[Vector2(7, 4), Vector2(1, 10)], [Vector2(6, 5), Vector2(1, 8)], [Vector2(8, 5), Vector2(1, 9)], [Vector2(13, 5), Vector2(5, 15)], [Vector2(5, 6), Vector2(1, 6)], [Vector2(9, 6), Vector2(1, 8)], [Vector2(12, 6), Vector2(1, 13)], [Vector2(18, 6), Vector2(1, 17)], [Vector2(4, 7), Vector2(1, 4)], [Vector2(10, 7), Vector2(2, 7)], [Vector2(19, 7), Vector2(1, 16)], [Vector2(11, 14), Vector2(1, 5)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 8)], [Vector2(10, 17), Vector2(1, 1)], [Vector2(23, 17), Vector2(1, 6)], [Vector2(24, 19), Vector2(1, 3)], [Vector2(14, 20), Vector2(4, 1)], [Vector2(15, 21), Vector2(3, 1)], [Vector2(17, 22), Vector2(1, 1)], [Vector2(10, 24), Vector2(3, 3)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 4)], [Vector2(9, 25), Vector2(1, 3)], [Vector2(13, 25), Vector2(2, 4)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(8, 26), Vector2(1, 2)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(12, 27), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		10 : [[Vector2(10, 10), Vector2(3, 7)], [Vector2(9, 11), Vector2(1, 5)], [Vector2(13, 11), Vector2(8, 10)], [Vector2(21, 12), Vector2(1, 16)], [Vector2(22, 13), Vector2(1, 11)], [Vector2(11, 17), Vector2(2, 4)], [Vector2(23, 17), Vector2(1, 6)], [Vector2(10, 19), Vector2(1, 1)], [Vector2(24, 19), Vector2(1, 3)], [Vector2(15, 21), Vector2(6, 1)], [Vector2(17, 22), Vector2(4, 1)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(10, 24), Vector2(3, 3)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(9, 25), Vector2(1, 3)], [Vector2(13, 25), Vector2(2, 4)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(8, 26), Vector2(1, 2)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(12, 27), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		11 : [[Vector2(13, 11), Vector2(4, 9)], [Vector2(12, 12), Vector2(1, 7)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(10, 13), Vector2(2, 5)], [Vector2(18, 13), Vector2(1, 10)], [Vector2(9, 14), Vector2(1, 4)], [Vector2(19, 14), Vector2(1, 9)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(24, 19), Vector2(1, 4)], [Vector2(15, 20), Vector2(2, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		12 : [[Vector2(11, 11), Vector2(6, 7)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(9, 13), Vector2(1, 2)], [Vector2(18, 13), Vector2(1, 10)], [Vector2(19, 14), Vector2(1, 9)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(12, 18), Vector2(5, 1)], [Vector2(13, 19), Vector2(4, 1)], [Vector2(24, 19), Vector2(1, 4)], [Vector2(15, 20), Vector2(2, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		13 : [[Vector2(14, 10), Vector2(3, 10)], [Vector2(13, 11), Vector2(1, 9)], [Vector2(12, 12), Vector2(1, 8)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(11, 13), Vector2(1, 7)], [Vector2(18, 13), Vector2(1, 10)], [Vector2(10, 14), Vector2(1, 5)], [Vector2(19, 14), Vector2(1, 9)], [Vector2(9, 15), Vector2(1, 3)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(24, 19), Vector2(1, 4)], [Vector2(15, 20), Vector2(2, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/man_trap/man_trap_eat_shopkeeper_l"
	},
	"man_trap_eat_tunnel_l" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(16, 16), Vector2(5, 7)], [Vector2(14, 17), Vector2(2, 7)], [Vector2(21, 17), Vector2(1, 8)], [Vector2(12, 18), Vector2(2, 6)], [Vector2(9, 19), Vector2(3, 5)], [Vector2(22, 19), Vector2(1, 3)], [Vector2(8, 20), Vector2(1, 3)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(5, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(21, 26), Vector2(3, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(21, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(21, 29), Vector2(1, 2)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		1 : [[Vector2(12, 18), Vector2(5, 7)], [Vector2(10, 19), Vector2(2, 10)], [Vector2(17, 19), Vector2(1, 13)], [Vector2(8, 20), Vector2(2, 7)], [Vector2(5, 21), Vector2(3, 5)], [Vector2(18, 21), Vector2(1, 11)], [Vector2(4, 22), Vector2(1, 3)], [Vector2(19, 22), Vector2(1, 10)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 1)], [Vector2(15, 25), Vector2(2, 7)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(14, 26), Vector2(1, 6)], [Vector2(21, 26), Vector2(3, 2)], [Vector2(9, 27), Vector2(1, 1)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(21, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(21, 29), Vector2(1, 2)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		2 : [[Vector2(9, 14), Vector2(3, 5)], [Vector2(14, 14), Vector2(2, 8)], [Vector2(12, 15), Vector2(2, 6)], [Vector2(16, 15), Vector2(2, 8)], [Vector2(18, 16), Vector2(3, 15)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(22, 18), Vector2(1, 11)], [Vector2(10, 19), Vector2(2, 1)], [Vector2(23, 19), Vector2(1, 6)], [Vector2(24, 20), Vector2(1, 4)], [Vector2(13, 21), Vector2(1, 1)], [Vector2(15, 22), Vector2(1, 1)], [Vector2(17, 23), Vector2(1, 1)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(4, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(18, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		3 : [[Vector2(10, 16), Vector2(11, 4)], [Vector2(9, 17), Vector2(1, 2)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(22, 18), Vector2(1, 11)], [Vector2(23, 19), Vector2(1, 6)], [Vector2(12, 20), Vector2(9, 1)], [Vector2(24, 20), Vector2(1, 4)], [Vector2(13, 21), Vector2(8, 1)], [Vector2(15, 22), Vector2(6, 1)], [Vector2(17, 23), Vector2(4, 1)], [Vector2(18, 24), Vector2(3, 7)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(4, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(18, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		4 : [[Vector2(16, 16), Vector2(5, 7)], [Vector2(14, 17), Vector2(2, 5)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(12, 18), Vector2(2, 3)], [Vector2(11, 19), Vector2(1, 1)], [Vector2(22, 19), Vector2(1, 6)], [Vector2(17, 23), Vector2(4, 8)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(3, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(22, 26), Vector2(2, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(22, 28), Vector2(1, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(17, 31), Vector2(3, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		5 : [[Vector2(16, 17), Vector2(5, 7)], [Vector2(14, 18), Vector2(2, 5)], [Vector2(21, 18), Vector2(1, 13)], [Vector2(12, 19), Vector2(2, 3)], [Vector2(11, 20), Vector2(1, 1)], [Vector2(22, 20), Vector2(1, 5)], [Vector2(17, 24), Vector2(4, 7)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(3, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(22, 26), Vector2(2, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(22, 28), Vector2(1, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(17, 31), Vector2(3, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		6 : [[Vector2(3, 11), Vector2(8, 9)], [Vector2(2, 12), Vector2(1, 15)], [Vector2(11, 12), Vector2(1, 6)], [Vector2(1, 13), Vector2(1, 9)], [Vector2(0, 19), Vector2(1, 2)], [Vector2(3, 20), Vector2(7, 2)], [Vector2(12, 21), Vector2(5, 7)], [Vector2(3, 22), Vector2(6, 5)], [Vector2(10, 22), Vector2(2, 7)], [Vector2(17, 22), Vector2(3, 10)], [Vector2(0, 23), Vector2(2, 2)], [Vector2(9, 23), Vector2(1, 6)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 7)], [Vector2(1, 25), Vector2(1, 1)], [Vector2(22, 25), Vector2(1, 4)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(4, 27), Vector2(5, 1)], [Vector2(5, 28), Vector2(4, 1)], [Vector2(15, 28), Vector2(2, 4)], [Vector2(11, 29), Vector2(4, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		7 : [[Vector2(4, 4), Vector2(8, 9)], [Vector2(3, 5), Vector2(1, 15)], [Vector2(12, 5), Vector2(1, 6)], [Vector2(2, 6), Vector2(1, 9)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(4, 13), Vector2(7, 2)], [Vector2(4, 15), Vector2(6, 2)], [Vector2(1, 16), Vector2(2, 2)], [Vector2(17, 16), Vector2(5, 7)], [Vector2(4, 17), Vector2(5, 1)], [Vector2(15, 17), Vector2(2, 6)], [Vector2(22, 17), Vector2(1, 7)], [Vector2(2, 18), Vector2(1, 1)], [Vector2(4, 18), Vector2(4, 2)], [Vector2(10, 18), Vector2(5, 5)], [Vector2(9, 19), Vector2(1, 3)], [Vector2(23, 19), Vector2(1, 3)], [Vector2(20, 23), Vector2(2, 5)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(20, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		8 : [[Vector2(13, 2), Vector2(8, 10)], [Vector2(12, 3), Vector2(1, 11)], [Vector2(21, 3), Vector2(1, 6)], [Vector2(11, 4), Vector2(1, 10)], [Vector2(10, 7), Vector2(1, 8)], [Vector2(9, 8), Vector2(1, 7)], [Vector2(8, 9), Vector2(1, 5)], [Vector2(7, 10), Vector2(1, 3)], [Vector2(13, 12), Vector2(3, 2)], [Vector2(17, 12), Vector2(5, 1)], [Vector2(18, 13), Vector2(4, 1)], [Vector2(13, 14), Vector2(2, 7)], [Vector2(19, 14), Vector2(2, 1)], [Vector2(11, 15), Vector2(2, 5)], [Vector2(15, 15), Vector2(2, 8)], [Vector2(10, 16), Vector2(1, 3)], [Vector2(17, 16), Vector2(3, 7)], [Vector2(20, 17), Vector2(3, 7)], [Vector2(23, 18), Vector2(1, 5)], [Vector2(9, 20), Vector2(1, 5)], [Vector2(24, 20), Vector2(1, 3)], [Vector2(8, 21), Vector2(1, 2)], [Vector2(10, 21), Vector2(1, 5)], [Vector2(14, 21), Vector2(1, 1)], [Vector2(11, 23), Vector2(1, 4)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(3, 4)], [Vector2(12, 25), Vector2(3, 3)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(13, 28), Vector2(2, 1)], [Vector2(19, 28), Vector2(2, 3)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(19, 31), Vector2(1, 1)], [Vector2(22, 31), Vector2(1, 1)]],
		9 : [[Vector2(11, 6), Vector2(8, 13)], [Vector2(8, 7), Vector2(3, 8)], [Vector2(19, 7), Vector2(1, 6)], [Vector2(6, 8), Vector2(2, 5)], [Vector2(5, 9), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 2)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(10, 15), Vector2(1, 1)], [Vector2(19, 15), Vector2(2, 8)], [Vector2(21, 16), Vector2(2, 8)], [Vector2(10, 17), Vector2(1, 1)], [Vector2(23, 17), Vector2(1, 6)], [Vector2(13, 19), Vector2(6, 1)], [Vector2(24, 19), Vector2(1, 3)], [Vector2(14, 20), Vector2(5, 1)], [Vector2(15, 21), Vector2(4, 1)], [Vector2(17, 22), Vector2(2, 1)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(10, 24), Vector2(3, 3)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 4)], [Vector2(9, 25), Vector2(1, 3)], [Vector2(13, 25), Vector2(2, 4)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(8, 26), Vector2(1, 2)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(12, 27), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		10 : [[Vector2(10, 10), Vector2(3, 7)], [Vector2(9, 11), Vector2(1, 5)], [Vector2(13, 11), Vector2(8, 10)], [Vector2(21, 12), Vector2(1, 16)], [Vector2(22, 13), Vector2(1, 11)], [Vector2(11, 17), Vector2(2, 4)], [Vector2(23, 17), Vector2(1, 6)], [Vector2(10, 19), Vector2(1, 1)], [Vector2(24, 19), Vector2(1, 3)], [Vector2(15, 21), Vector2(6, 1)], [Vector2(17, 22), Vector2(4, 1)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(10, 24), Vector2(3, 3)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(9, 25), Vector2(1, 3)], [Vector2(13, 25), Vector2(2, 4)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(8, 26), Vector2(1, 2)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(12, 27), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		11 : [[Vector2(13, 11), Vector2(4, 9)], [Vector2(12, 12), Vector2(1, 7)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(10, 13), Vector2(2, 5)], [Vector2(18, 13), Vector2(1, 10)], [Vector2(9, 14), Vector2(1, 4)], [Vector2(19, 14), Vector2(1, 9)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(24, 19), Vector2(1, 4)], [Vector2(15, 20), Vector2(2, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		12 : [[Vector2(11, 11), Vector2(6, 9)], [Vector2(10, 12), Vector2(1, 8)], [Vector2(17, 12), Vector2(1, 12)], [Vector2(9, 13), Vector2(1, 2)], [Vector2(18, 13), Vector2(1, 11)], [Vector2(19, 14), Vector2(1, 18)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(9, 17), Vector2(1, 2)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(12, 20), Vector2(5, 1)], [Vector2(24, 20), Vector2(1, 3)], [Vector2(13, 21), Vector2(4, 1)], [Vector2(15, 22), Vector2(2, 1)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		13 : [[Vector2(14, 10), Vector2(3, 10)], [Vector2(13, 11), Vector2(1, 9)], [Vector2(12, 12), Vector2(1, 8)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(11, 13), Vector2(1, 7)], [Vector2(18, 13), Vector2(1, 10)], [Vector2(10, 14), Vector2(1, 5)], [Vector2(19, 14), Vector2(1, 9)], [Vector2(9, 15), Vector2(1, 3)], [Vector2(20, 15), Vector2(1, 16)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(24, 19), Vector2(1, 4)], [Vector2(15, 20), Vector2(2, 1)], [Vector2(16, 21), Vector2(1, 1)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/man_trap/man_trap_eat_tunnel_l"
	},
	"man_trap_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/man_trap/man_trap_left"
	},
	"man_trap_sleep_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/man_trap/man_trap_sleep_l"
	},
	"man_trap_stun_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/man_trap/man_trap_stun_l"
	},
	"man_trap_temp" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(16, 16), Vector2(5, 7)], [Vector2(14, 17), Vector2(2, 7)], [Vector2(21, 17), Vector2(1, 8)], [Vector2(12, 18), Vector2(2, 6)], [Vector2(9, 19), Vector2(3, 5)], [Vector2(22, 19), Vector2(1, 3)], [Vector2(8, 20), Vector2(1, 3)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(5, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(21, 26), Vector2(3, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(21, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(21, 29), Vector2(1, 2)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		1 : [[Vector2(12, 18), Vector2(5, 7)], [Vector2(10, 19), Vector2(2, 10)], [Vector2(17, 19), Vector2(1, 13)], [Vector2(8, 20), Vector2(2, 7)], [Vector2(5, 21), Vector2(3, 5)], [Vector2(18, 21), Vector2(1, 11)], [Vector2(4, 22), Vector2(1, 3)], [Vector2(19, 22), Vector2(1, 10)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 1)], [Vector2(15, 25), Vector2(2, 7)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(14, 26), Vector2(1, 6)], [Vector2(21, 26), Vector2(3, 2)], [Vector2(9, 27), Vector2(1, 1)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(21, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(21, 29), Vector2(1, 2)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		2 : [[Vector2(16, 17), Vector2(5, 7)], [Vector2(14, 18), Vector2(2, 5)], [Vector2(21, 18), Vector2(1, 13)], [Vector2(12, 19), Vector2(2, 3)], [Vector2(11, 20), Vector2(1, 1)], [Vector2(22, 20), Vector2(1, 5)], [Vector2(17, 24), Vector2(4, 7)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(3, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(22, 26), Vector2(2, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(22, 28), Vector2(1, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(17, 31), Vector2(3, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		3 : [[Vector2(12, 21), Vector2(5, 7)], [Vector2(10, 22), Vector2(2, 7)], [Vector2(17, 22), Vector2(3, 10)], [Vector2(8, 23), Vector2(2, 6)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(6, 24), Vector2(2, 5)], [Vector2(21, 24), Vector2(1, 7)], [Vector2(5, 25), Vector2(1, 4)], [Vector2(22, 25), Vector2(1, 4)], [Vector2(4, 26), Vector2(1, 2)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(15, 28), Vector2(2, 4)], [Vector2(11, 29), Vector2(4, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		4 : [[Vector2(17, 16), Vector2(5, 7)], [Vector2(15, 17), Vector2(2, 6)], [Vector2(22, 17), Vector2(1, 7)], [Vector2(10, 18), Vector2(5, 5)], [Vector2(9, 19), Vector2(1, 3)], [Vector2(23, 19), Vector2(1, 3)], [Vector2(20, 23), Vector2(2, 5)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(20, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		5 : [[Vector2(11, 15), Vector2(6, 5)], [Vector2(10, 16), Vector2(1, 3)], [Vector2(17, 16), Vector2(3, 7)], [Vector2(20, 17), Vector2(3, 7)], [Vector2(23, 18), Vector2(1, 5)], [Vector2(9, 20), Vector2(1, 5)], [Vector2(13, 20), Vector2(4, 1)], [Vector2(24, 20), Vector2(1, 3)], [Vector2(8, 21), Vector2(1, 2)], [Vector2(10, 21), Vector2(1, 5)], [Vector2(14, 21), Vector2(3, 1)], [Vector2(15, 22), Vector2(2, 1)], [Vector2(11, 23), Vector2(1, 4)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(3, 4)], [Vector2(12, 25), Vector2(3, 3)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(13, 28), Vector2(2, 1)], [Vector2(19, 28), Vector2(2, 3)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(19, 31), Vector2(1, 1)], [Vector2(22, 31), Vector2(1, 1)]],
		6 : [[Vector2(11, 11), Vector2(6, 8)], [Vector2(10, 12), Vector2(1, 2)], [Vector2(17, 12), Vector2(1, 11)], [Vector2(18, 13), Vector2(1, 10)], [Vector2(19, 15), Vector2(2, 8)], [Vector2(21, 16), Vector2(2, 8)], [Vector2(10, 17), Vector2(1, 1)], [Vector2(23, 17), Vector2(1, 6)], [Vector2(13, 19), Vector2(4, 1)], [Vector2(24, 19), Vector2(1, 3)], [Vector2(14, 20), Vector2(3, 1)], [Vector2(15, 21), Vector2(2, 1)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(10, 24), Vector2(3, 3)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(21, 24), Vector2(1, 4)], [Vector2(9, 25), Vector2(1, 3)], [Vector2(13, 25), Vector2(2, 4)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(8, 26), Vector2(1, 2)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(12, 27), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		7 : [[Vector2(15, 11), Vector2(6, 11)], [Vector2(14, 12), Vector2(1, 9)], [Vector2(21, 12), Vector2(1, 16)], [Vector2(22, 13), Vector2(1, 11)], [Vector2(13, 15), Vector2(1, 6)], [Vector2(12, 17), Vector2(1, 4)], [Vector2(23, 17), Vector2(1, 6)], [Vector2(11, 18), Vector2(1, 3)], [Vector2(10, 19), Vector2(1, 1)], [Vector2(24, 19), Vector2(1, 3)], [Vector2(17, 22), Vector2(4, 1)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(10, 24), Vector2(3, 3)], [Vector2(15, 24), Vector2(2, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(9, 25), Vector2(1, 3)], [Vector2(13, 25), Vector2(2, 4)], [Vector2(17, 25), Vector2(2, 7)], [Vector2(22, 25), Vector2(2, 1)], [Vector2(8, 26), Vector2(1, 2)], [Vector2(22, 26), Vector2(1, 1)], [Vector2(12, 27), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		8 : [[Vector2(12, 13), Vector2(6, 6)], [Vector2(11, 14), Vector2(1, 2)], [Vector2(18, 14), Vector2(1, 9)], [Vector2(19, 15), Vector2(2, 8)], [Vector2(21, 16), Vector2(2, 11)], [Vector2(11, 17), Vector2(1, 1)], [Vector2(23, 17), Vector2(1, 7)], [Vector2(13, 19), Vector2(5, 1)], [Vector2(24, 19), Vector2(1, 4)], [Vector2(15, 20), Vector2(3, 1)], [Vector2(16, 21), Vector2(2, 1)], [Vector2(17, 22), Vector2(1, 1)], [Vector2(20, 23), Vector2(1, 8)], [Vector2(15, 24), Vector2(1, 8)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(10, 25), Vector2(3, 4)], [Vector2(16, 25), Vector2(3, 7)], [Vector2(23, 25), Vector2(1, 1)], [Vector2(9, 26), Vector2(1, 4)], [Vector2(13, 26), Vector2(2, 3)], [Vector2(21, 27), Vector2(1, 1)], [Vector2(8, 28), Vector2(1, 3)], [Vector2(10, 29), Vector2(1, 1)], [Vector2(14, 29), Vector2(1, 3)], [Vector2(13, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 2)], [Vector2(22, 31), Vector2(1, 1)]],
		9 : [[Vector2(10, 16), Vector2(11, 4)], [Vector2(9, 17), Vector2(1, 2)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(22, 18), Vector2(1, 11)], [Vector2(23, 19), Vector2(1, 6)], [Vector2(12, 20), Vector2(9, 1)], [Vector2(24, 20), Vector2(1, 4)], [Vector2(13, 21), Vector2(8, 1)], [Vector2(15, 22), Vector2(6, 1)], [Vector2(17, 23), Vector2(4, 1)], [Vector2(18, 24), Vector2(3, 7)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(4, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(23, 26), Vector2(1, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(18, 31), Vector2(2, 1)], [Vector2(23, 31), Vector2(1, 1)]],
		10 : [[Vector2(16, 16), Vector2(5, 7)], [Vector2(14, 17), Vector2(2, 5)], [Vector2(21, 17), Vector2(1, 14)], [Vector2(12, 18), Vector2(2, 3)], [Vector2(11, 19), Vector2(1, 1)], [Vector2(22, 19), Vector2(1, 6)], [Vector2(17, 23), Vector2(4, 8)], [Vector2(9, 25), Vector2(3, 3)], [Vector2(14, 25), Vector2(3, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(22, 26), Vector2(2, 2)], [Vector2(13, 27), Vector2(1, 5)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(22, 28), Vector2(1, 1)], [Vector2(11, 29), Vector2(1, 3)], [Vector2(8, 30), Vector2(3, 1)], [Vector2(22, 30), Vector2(1, 2)], [Vector2(9, 31), Vector2(2, 1)], [Vector2(17, 31), Vector2(3, 1)], [Vector2(23, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/man_trap/man_trap_temp"
	},
	"monkey_climb_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(5, 13)], [Vector2(5, 2), Vector2(1, 12)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(12, 5), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 3)], [Vector2(12, 9), Vector2(1, 3)], [Vector2(14, 10), Vector2(1, 1)], [Vector2(15, 11), Vector2(1, 3)], [Vector2(12, 13), Vector2(3, 2)], [Vector2(8, 14), Vector2(3, 1)]],
		1 : [[Vector2(7, 1), Vector2(5, 11)], [Vector2(6, 2), Vector2(1, 13)], [Vector2(12, 2), Vector2(1, 5)], [Vector2(13, 5), Vector2(1, 1)], [Vector2(5, 6), Vector2(1, 3)], [Vector2(5, 11), Vector2(1, 4)], [Vector2(13, 11), Vector2(1, 4)], [Vector2(7, 12), Vector2(4, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(11, 13), Vector2(2, 2)], [Vector2(7, 14), Vector2(1, 1)], [Vector2(9, 14), Vector2(2, 1)]],
		2 : [[Vector2(8, 1), Vector2(5, 11)], [Vector2(7, 2), Vector2(1, 11)], [Vector2(13, 2), Vector2(1, 6)], [Vector2(14, 5), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 7)], [Vector2(5, 9), Vector2(1, 2)], [Vector2(8, 12), Vector2(4, 2)], [Vector2(14, 13), Vector2(1, 2)], [Vector2(9, 14), Vector2(5, 1)], [Vector2(11, 15), Vector2(3, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/monkey/monkey_climb_l"
	},
	"monkey_hang_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(5, 13)], [Vector2(5, 2), Vector2(1, 12)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(12, 5), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 3)], [Vector2(12, 9), Vector2(1, 3)], [Vector2(14, 10), Vector2(1, 1)], [Vector2(15, 11), Vector2(1, 3)], [Vector2(12, 13), Vector2(3, 2)], [Vector2(8, 14), Vector2(3, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/monkey/monkey_hang_l"
	},
	"monkey_jump_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 1), Vector2(5, 10)], [Vector2(4, 2), Vector2(1, 10)], [Vector2(10, 2), Vector2(1, 13)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(3, 6), Vector2(1, 2)], [Vector2(11, 8), Vector2(1, 7)], [Vector2(3, 10), Vector2(1, 2)], [Vector2(13, 10), Vector2(1, 4)], [Vector2(6, 11), Vector2(4, 2)], [Vector2(14, 11), Vector2(1, 2)], [Vector2(5, 12), Vector2(1, 2)], [Vector2(12, 12), Vector2(1, 3)], [Vector2(6, 13), Vector2(1, 1)], [Vector2(8, 13), Vector2(2, 1)], [Vector2(9, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/monkey/monkey_jump_l"
	},
	"monkey_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 4), Vector2(5, 8)], [Vector2(3, 5), Vector2(1, 7)], [Vector2(9, 5), Vector2(1, 11)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(2, 9), Vector2(1, 2)], [Vector2(10, 10), Vector2(1, 6)], [Vector2(11, 11), Vector2(1, 5)], [Vector2(5, 12), Vector2(4, 2)], [Vector2(13, 12), Vector2(1, 4)], [Vector2(14, 13), Vector2(1, 2)], [Vector2(5, 14), Vector2(1, 2)], [Vector2(7, 14), Vector2(2, 1)], [Vector2(12, 14), Vector2(1, 2)], [Vector2(7, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/monkey/monkey_left"
	},
	"monkey_walk_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 4), Vector2(5, 8)], [Vector2(3, 5), Vector2(1, 7)], [Vector2(9, 5), Vector2(1, 11)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(2, 9), Vector2(1, 2)], [Vector2(10, 10), Vector2(1, 6)], [Vector2(11, 11), Vector2(1, 5)], [Vector2(5, 12), Vector2(4, 2)], [Vector2(13, 12), Vector2(1, 4)], [Vector2(14, 13), Vector2(1, 2)], [Vector2(5, 14), Vector2(1, 2)], [Vector2(7, 14), Vector2(2, 1)], [Vector2(12, 14), Vector2(1, 2)], [Vector2(7, 15), Vector2(1, 1)]],
		1 : [[Vector2(5, 2), Vector2(5, 10)], [Vector2(4, 3), Vector2(1, 10)], [Vector2(10, 3), Vector2(1, 13)], [Vector2(11, 6), Vector2(1, 1)], [Vector2(3, 7), Vector2(1, 2)], [Vector2(11, 9), Vector2(1, 7)], [Vector2(3, 11), Vector2(1, 2)], [Vector2(13, 11), Vector2(1, 4)], [Vector2(6, 12), Vector2(4, 2)], [Vector2(14, 12), Vector2(1, 2)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(12, 13), Vector2(1, 3)], [Vector2(6, 14), Vector2(1, 1)], [Vector2(8, 14), Vector2(2, 1)], [Vector2(9, 15), Vector2(1, 1)]],
		2 : [[Vector2(4, 2), Vector2(5, 11)], [Vector2(3, 3), Vector2(1, 11)], [Vector2(9, 3), Vector2(1, 11)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(2, 7), Vector2(1, 2)], [Vector2(10, 8), Vector2(1, 6)], [Vector2(11, 9), Vector2(1, 5)], [Vector2(13, 9), Vector2(1, 4)], [Vector2(14, 10), Vector2(1, 2)], [Vector2(12, 11), Vector2(1, 3)], [Vector2(4, 13), Vector2(3, 1)], [Vector2(5, 14), Vector2(2, 1)]],
		3 : [[Vector2(4, 3), Vector2(5, 9)], [Vector2(3, 4), Vector2(1, 7)], [Vector2(9, 4), Vector2(1, 10)], [Vector2(12, 6), Vector2(1, 5)], [Vector2(10, 7), Vector2(2, 5)], [Vector2(13, 7), Vector2(1, 2)], [Vector2(2, 8), Vector2(1, 2)], [Vector2(5, 12), Vector2(4, 3)], [Vector2(10, 12), Vector2(1, 1)], [Vector2(7, 15), Vector2(2, 1)]],
		4 : [[Vector2(4, 3), Vector2(5, 9)], [Vector2(3, 4), Vector2(1, 7)], [Vector2(9, 4), Vector2(1, 12)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(10, 7), Vector2(2, 5)], [Vector2(13, 7), Vector2(1, 2)], [Vector2(2, 8), Vector2(1, 2)], [Vector2(5, 12), Vector2(4, 1)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(6, 13), Vector2(3, 1)], [Vector2(7, 14), Vector2(2, 1)], [Vector2(8, 15), Vector2(1, 1)]],
		5 : [[Vector2(4, 4), Vector2(5, 10)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(9, 5), Vector2(1, 11)], [Vector2(10, 8), Vector2(1, 8)], [Vector2(12, 8), Vector2(1, 4)], [Vector2(2, 9), Vector2(1, 2)], [Vector2(11, 9), Vector2(1, 3)], [Vector2(13, 9), Vector2(1, 2)], [Vector2(11, 13), Vector2(1, 2)], [Vector2(5, 14), Vector2(4, 1)], [Vector2(6, 15), Vector2(3, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/monkey/monkey_walk_l"
	},
	"olmec" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 0), Vector2(38, 64)], [Vector2(11, 1), Vector2(2, 63)], [Vector2(51, 1), Vector2(2, 63)], [Vector2(9, 2), Vector2(2, 62)], [Vector2(53, 2), Vector2(2, 62)], [Vector2(8, 3), Vector2(1, 61)], [Vector2(55, 3), Vector2(1, 61)], [Vector2(7, 4), Vector2(1, 60)], [Vector2(56, 4), Vector2(1, 60)], [Vector2(6, 5), Vector2(1, 59)], [Vector2(57, 5), Vector2(1, 59)], [Vector2(5, 6), Vector2(1, 58)], [Vector2(58, 6), Vector2(1, 58)], [Vector2(4, 7), Vector2(1, 57)], [Vector2(59, 7), Vector2(1, 57)], [Vector2(3, 9), Vector2(1, 55)], [Vector2(60, 9), Vector2(1, 55)], [Vector2(2, 12), Vector2(1, 52)], [Vector2(61, 12), Vector2(1, 52)], [Vector2(1, 15), Vector2(1, 49)], [Vector2(62, 15), Vector2(1, 49)], [Vector2(0, 17), Vector2(1, 46)], [Vector2(63, 17), Vector2(1, 46)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/olmec/olmec"
	},
	"olmec_debris" : {
		"origin" : Vector2(6, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(12, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 2), Vector2(4, 7)], [Vector2(3, 3), Vector2(1, 6)], [Vector2(8, 3), Vector2(1, 4)], [Vector2(2, 4), Vector2(1, 4)], [Vector2(9, 4), Vector2(1, 2)], [Vector2(4, 9), Vector2(3, 1)]],
		1 : [[Vector2(4, 2), Vector2(4, 6)], [Vector2(3, 3), Vector2(1, 5)], [Vector2(8, 3), Vector2(1, 6)], [Vector2(2, 4), Vector2(1, 3)], [Vector2(9, 4), Vector2(1, 4)], [Vector2(5, 8), Vector2(3, 1)], [Vector2(6, 9), Vector2(2, 1)]],
		2 : [[Vector2(5, 2), Vector2(3, 8)], [Vector2(4, 3), Vector2(1, 7)], [Vector2(8, 3), Vector2(1, 6)], [Vector2(9, 4), Vector2(1, 4)], [Vector2(3, 5), Vector2(1, 4)], [Vector2(2, 6), Vector2(1, 2)]],
		3 : [[Vector2(4, 2), Vector2(2, 8)], [Vector2(3, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 7)], [Vector2(2, 4), Vector2(1, 4)], [Vector2(7, 4), Vector2(2, 5)], [Vector2(9, 5), Vector2(1, 3)], [Vector2(7, 9), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/olmec/olmec_debris"
	},
	"olmec_debris2" : {
		"origin" : Vector2(6, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(12, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(3, 5)], [Vector2(2, 3), Vector2(1, 3)], [Vector2(6, 3), Vector2(1, 7)], [Vector2(7, 4), Vector2(1, 5)], [Vector2(8, 5), Vector2(1, 2)], [Vector2(4, 7), Vector2(2, 2)], [Vector2(5, 9), Vector2(1, 1)]],
		1 : [[Vector2(6, 2), Vector2(3, 5)], [Vector2(5, 3), Vector2(1, 6)], [Vector2(9, 3), Vector2(1, 3)], [Vector2(3, 4), Vector2(2, 4)], [Vector2(2, 5), Vector2(1, 2)], [Vector2(6, 7), Vector2(2, 1)], [Vector2(6, 8), Vector2(1, 1)]],
		2 : [[Vector2(5, 2), Vector2(2, 7)], [Vector2(4, 3), Vector2(1, 5)], [Vector2(7, 3), Vector2(1, 7)], [Vector2(3, 5), Vector2(1, 2)], [Vector2(8, 5), Vector2(1, 5)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(6, 9), Vector2(1, 1)]],
		3 : [[Vector2(5, 3), Vector2(2, 6)], [Vector2(4, 4), Vector2(1, 6)], [Vector2(7, 4), Vector2(2, 4)], [Vector2(3, 5), Vector2(1, 5)], [Vector2(9, 5), Vector2(1, 2)], [Vector2(2, 6), Vector2(1, 3)], [Vector2(5, 9), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/olmec/olmec_debris2"
	},
	"olmec_debris3" : {
		"origin" : Vector2(6, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(12, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(4, 5)], [Vector2(2, 4), Vector2(1, 3)], [Vector2(7, 4), Vector2(1, 4)], [Vector2(8, 5), Vector2(1, 2)], [Vector2(4, 8), Vector2(3, 1)]],
		1 : [[Vector2(5, 2), Vector2(3, 6)], [Vector2(4, 3), Vector2(1, 5)], [Vector2(8, 3), Vector2(1, 4)], [Vector2(3, 4), Vector2(1, 3)], [Vector2(5, 8), Vector2(2, 1)]],
		2 : [[Vector2(5, 3), Vector2(3, 6)], [Vector2(4, 4), Vector2(1, 4)], [Vector2(8, 4), Vector2(1, 5)], [Vector2(3, 5), Vector2(1, 2)], [Vector2(9, 5), Vector2(1, 3)]],
		3 : [[Vector2(5, 3), Vector2(2, 7)], [Vector2(4, 4), Vector2(1, 6)], [Vector2(7, 4), Vector2(1, 5)], [Vector2(3, 5), Vector2(1, 4)], [Vector2(8, 5), Vector2(1, 3)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/olmec/olmec_debris3"
	},
	"olmec_start1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 0), Vector2(38, 64)], [Vector2(11, 1), Vector2(2, 63)], [Vector2(51, 1), Vector2(2, 63)], [Vector2(9, 2), Vector2(2, 62)], [Vector2(53, 2), Vector2(2, 62)], [Vector2(8, 3), Vector2(1, 61)], [Vector2(55, 3), Vector2(1, 61)], [Vector2(7, 4), Vector2(1, 60)], [Vector2(56, 4), Vector2(1, 60)], [Vector2(6, 5), Vector2(1, 59)], [Vector2(57, 5), Vector2(1, 59)], [Vector2(5, 6), Vector2(1, 58)], [Vector2(58, 6), Vector2(1, 58)], [Vector2(4, 7), Vector2(1, 56)], [Vector2(59, 7), Vector2(1, 56)], [Vector2(3, 9), Vector2(1, 54)], [Vector2(60, 9), Vector2(1, 54)], [Vector2(2, 12), Vector2(1, 50)], [Vector2(61, 12), Vector2(1, 50)], [Vector2(1, 15), Vector2(1, 27)], [Vector2(62, 15), Vector2(1, 27)], [Vector2(0, 17), Vector2(1, 23)], [Vector2(63, 17), Vector2(1, 23)], [Vector2(1, 45), Vector2(1, 1)], [Vector2(1, 50), Vector2(1, 11)], [Vector2(62, 50), Vector2(1, 11)], [Vector2(0, 53), Vector2(1, 6)], [Vector2(63, 53), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/olmec/olmec_start1"
	},
	"olmec_start2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 0), Vector2(38, 64)], [Vector2(11, 1), Vector2(2, 63)], [Vector2(51, 1), Vector2(2, 63)], [Vector2(9, 2), Vector2(2, 62)], [Vector2(53, 2), Vector2(2, 62)], [Vector2(8, 3), Vector2(1, 61)], [Vector2(55, 3), Vector2(1, 61)], [Vector2(7, 4), Vector2(1, 60)], [Vector2(56, 4), Vector2(1, 60)], [Vector2(6, 5), Vector2(1, 59)], [Vector2(57, 5), Vector2(1, 59)], [Vector2(5, 6), Vector2(1, 58)], [Vector2(58, 6), Vector2(1, 58)], [Vector2(4, 7), Vector2(1, 56)], [Vector2(59, 7), Vector2(1, 56)], [Vector2(3, 9), Vector2(1, 54)], [Vector2(60, 9), Vector2(1, 54)], [Vector2(2, 12), Vector2(1, 50)], [Vector2(61, 12), Vector2(1, 50)], [Vector2(1, 15), Vector2(1, 27)], [Vector2(62, 15), Vector2(1, 27)], [Vector2(0, 17), Vector2(1, 23)], [Vector2(63, 17), Vector2(1, 23)], [Vector2(1, 45), Vector2(1, 1)], [Vector2(1, 50), Vector2(1, 11)], [Vector2(62, 50), Vector2(1, 11)], [Vector2(0, 53), Vector2(1, 6)], [Vector2(63, 53), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/olmec/olmec_start2"
	},
	"olmec_start3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 64)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 0), Vector2(38, 64)], [Vector2(11, 1), Vector2(2, 63)], [Vector2(51, 1), Vector2(2, 63)], [Vector2(9, 2), Vector2(2, 62)], [Vector2(53, 2), Vector2(2, 62)], [Vector2(8, 3), Vector2(1, 61)], [Vector2(55, 3), Vector2(1, 61)], [Vector2(7, 4), Vector2(1, 60)], [Vector2(56, 4), Vector2(1, 60)], [Vector2(6, 5), Vector2(1, 59)], [Vector2(57, 5), Vector2(1, 59)], [Vector2(5, 6), Vector2(1, 58)], [Vector2(58, 6), Vector2(1, 58)], [Vector2(4, 7), Vector2(1, 56)], [Vector2(59, 7), Vector2(1, 56)], [Vector2(3, 9), Vector2(1, 54)], [Vector2(60, 9), Vector2(1, 54)], [Vector2(2, 12), Vector2(1, 50)], [Vector2(61, 12), Vector2(1, 50)], [Vector2(1, 15), Vector2(1, 28)], [Vector2(62, 15), Vector2(1, 27)], [Vector2(0, 17), Vector2(1, 23)], [Vector2(63, 17), Vector2(1, 23)], [Vector2(1, 50), Vector2(1, 11)], [Vector2(62, 50), Vector2(1, 11)], [Vector2(0, 53), Vector2(1, 6)], [Vector2(63, 53), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/olmec/olmec_start3"
	},
	"shop_bounce_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_bounce_l"
	},
	"shop_d_held_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_d_held_l"
	},
	"shop_die_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 9), Vector2(16, 7)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_die_l"
	},
	"shop_die_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(13, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_die_ll"
	},
	"shop_die_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_die_lr"
	},
	"shop_fall_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_fall_l"
	},
	"shop_held_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_held_l"
	},
	"shop_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_left"
	},
	"shop_left_ico" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_left_ico"
	},
	"shop_run_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_run_left"
	},
	"shop_stun_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/shopkeeper/shop_stun_l"
	},
	"shop_throw_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(10, 1), Vector2(5, 14)], [Vector2(9, 2), Vector2(1, 13)], [Vector2(15, 2), Vector2(1, 14)], [Vector2(8, 3), Vector2(1, 12)], [Vector2(16, 3), Vector2(1, 7)], [Vector2(17, 4), Vector2(1, 6)], [Vector2(18, 6), Vector2(1, 4)], [Vector2(19, 7), Vector2(1, 2)], [Vector2(5, 9), Vector2(2, 4)], [Vector2(4, 10), Vector2(1, 2)], [Vector2(7, 10), Vector2(1, 5)], [Vector2(6, 13), Vector2(1, 1)], [Vector2(16, 13), Vector2(1, 1)], [Vector2(13, 15), Vector2(2, 1)]],
		1 : [[Vector2(11, 1), Vector2(5, 14)], [Vector2(10, 2), Vector2(1, 12)], [Vector2(16, 2), Vector2(1, 12)], [Vector2(9, 3), Vector2(1, 11)], [Vector2(17, 3), Vector2(1, 7)], [Vector2(18, 4), Vector2(1, 6)], [Vector2(19, 6), Vector2(1, 4)], [Vector2(20, 7), Vector2(1, 2)], [Vector2(6, 8), Vector2(2, 4)], [Vector2(5, 9), Vector2(1, 2)], [Vector2(8, 9), Vector2(1, 5)], [Vector2(7, 12), Vector2(1, 2)], [Vector2(17, 13), Vector2(1, 1)], [Vector2(13, 15), Vector2(3, 1)]],
		2 : [[Vector2(12, 1), Vector2(5, 14)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(17, 2), Vector2(1, 12)], [Vector2(10, 3), Vector2(1, 5)], [Vector2(18, 3), Vector2(1, 8)], [Vector2(19, 4), Vector2(1, 6)], [Vector2(20, 6), Vector2(2, 4)], [Vector2(8, 7), Vector2(2, 7)], [Vector2(22, 7), Vector2(1, 2)], [Vector2(7, 8), Vector2(1, 2)], [Vector2(10, 9), Vector2(1, 5)], [Vector2(13, 15), Vector2(3, 1)]],
		3 : [[Vector2(9, 0), Vector2(5, 15)], [Vector2(8, 1), Vector2(1, 13)], [Vector2(14, 1), Vector2(1, 15)], [Vector2(7, 2), Vector2(1, 11)], [Vector2(15, 2), Vector2(1, 14)], [Vector2(16, 5), Vector2(1, 2)], [Vector2(6, 8), Vector2(1, 3)], [Vector2(5, 9), Vector2(1, 2)], [Vector2(16, 14), Vector2(1, 2)]],
		4 : [[Vector2(7, 0), Vector2(5, 13)], [Vector2(6, 1), Vector2(1, 12)], [Vector2(12, 1), Vector2(1, 14)], [Vector2(5, 2), Vector2(1, 11)], [Vector2(13, 2), Vector2(1, 5)], [Vector2(14, 5), Vector2(1, 9)], [Vector2(13, 8), Vector2(1, 7)], [Vector2(15, 10), Vector2(1, 4)], [Vector2(16, 11), Vector2(1, 2)], [Vector2(8, 13), Vector2(4, 2)], [Vector2(7, 14), Vector2(1, 2)], [Vector2(6, 15), Vector2(1, 1)], [Vector2(8, 15), Vector2(3, 1)]],
		5 : [[Vector2(6, 1), Vector2(5, 13)], [Vector2(5, 2), Vector2(1, 12)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(4, 3), Vector2(1, 11)], [Vector2(12, 3), Vector2(1, 5)], [Vector2(13, 6), Vector2(1, 9)], [Vector2(12, 9), Vector2(1, 6)], [Vector2(14, 9), Vector2(1, 5)], [Vector2(15, 10), Vector2(1, 2)], [Vector2(7, 14), Vector2(4, 2)], [Vector2(6, 15), Vector2(1, 1)]],
		6 : [[Vector2(6, 1), Vector2(5, 13)], [Vector2(5, 2), Vector2(1, 12)], [Vector2(11, 2), Vector2(1, 13)], [Vector2(4, 3), Vector2(1, 11)], [Vector2(12, 3), Vector2(1, 5)], [Vector2(13, 6), Vector2(1, 9)], [Vector2(12, 9), Vector2(1, 6)], [Vector2(14, 9), Vector2(1, 5)], [Vector2(15, 10), Vector2(1, 2)], [Vector2(7, 14), Vector2(4, 2)], [Vector2(6, 15), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/shopkeeper/shop_throw_l"
	},
	"skeleton_create_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/skeleton/skeleton_create_l"
	},
	"skeleton_create_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/skeleton/skeleton_create_r"
	},
	"skeleton_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(11, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/skeleton/skeleton_left"
	},
	"skeleton_walk_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(12, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/skeleton/skeleton_walk_left"
	},
	"fly_left" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(1, 1)], [Vector2(6, 0), Vector2(1, 1)], [Vector2(2, 1), Vector2(1, 1)], [Vector2(5, 1), Vector2(1, 5)], [Vector2(3, 2), Vector2(2, 4)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(0, 3), Vector2(3, 3)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(1, 6), Vector2(2, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(2, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]],
		1 : [[Vector2(4, 0), Vector2(1, 7)], [Vector2(3, 1), Vector2(1, 5)], [Vector2(5, 2), Vector2(2, 4)], [Vector2(0, 3), Vector2(3, 3)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(1, 6), Vector2(2, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(2, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]],
		2 : [[Vector2(0, 2), Vector2(2, 4)], [Vector2(3, 2), Vector2(5, 3)], [Vector2(2, 3), Vector2(1, 5)], [Vector2(3, 5), Vector2(4, 1)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]],
		3 : [[Vector2(5, 1), Vector2(1, 5)], [Vector2(1, 2), Vector2(1, 5)], [Vector2(3, 2), Vector2(2, 4)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(0, 3), Vector2(1, 3)], [Vector2(2, 3), Vector2(1, 5)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/fly_left"
	},
	"fly_right" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(1, 1)], [Vector2(6, 0), Vector2(1, 1)], [Vector2(2, 1), Vector2(1, 5)], [Vector2(5, 1), Vector2(1, 1)], [Vector2(1, 2), Vector2(1, 5)], [Vector2(3, 2), Vector2(2, 4)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(3, 3)], [Vector2(3, 6), Vector2(1, 1)], [Vector2(5, 6), Vector2(2, 1)], [Vector2(2, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]],
		1 : [[Vector2(3, 0), Vector2(1, 7)], [Vector2(4, 1), Vector2(1, 5)], [Vector2(1, 2), Vector2(2, 4)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(3, 3)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(5, 6), Vector2(2, 1)], [Vector2(2, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)]],
		2 : [[Vector2(0, 2), Vector2(5, 3)], [Vector2(6, 2), Vector2(2, 4)], [Vector2(5, 3), Vector2(1, 5)], [Vector2(1, 5), Vector2(4, 1)], [Vector2(1, 6), Vector2(1, 1)], [Vector2(3, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(2, 7), Vector2(1, 1)]],
		3 : [[Vector2(2, 1), Vector2(1, 5)], [Vector2(1, 2), Vector2(1, 5)], [Vector2(3, 2), Vector2(2, 4)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 5)], [Vector2(7, 3), Vector2(1, 3)], [Vector2(3, 6), Vector2(1, 1)], [Vector2(2, 7), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/fly_right"
	},
	"tomb_lord_attack_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 13)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(2, 21)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(25, 16), Vector2(1, 7)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		1 : [[Vector2(11, 0), Vector2(5, 13)], [Vector2(6, 1), Vector2(2, 2)], [Vector2(9, 1), Vector2(2, 13)], [Vector2(16, 1), Vector2(1, 18)], [Vector2(8, 2), Vector2(1, 10)], [Vector2(17, 2), Vector2(1, 26)], [Vector2(7, 3), Vector2(1, 5)], [Vector2(18, 6), Vector2(2, 22)], [Vector2(20, 7), Vector2(1, 25)], [Vector2(21, 8), Vector2(1, 24)], [Vector2(22, 9), Vector2(1, 23)], [Vector2(23, 10), Vector2(1, 22)], [Vector2(24, 11), Vector2(1, 14)], [Vector2(11, 13), Vector2(1, 6)], [Vector2(13, 13), Vector2(3, 6)], [Vector2(25, 13), Vector2(1, 10)], [Vector2(12, 14), Vector2(1, 5)], [Vector2(9, 15), Vector2(2, 5)], [Vector2(8, 16), Vector2(1, 5)], [Vector2(26, 16), Vector2(1, 5)], [Vector2(7, 17), Vector2(1, 3)], [Vector2(9, 20), Vector2(1, 1)], [Vector2(16, 20), Vector2(1, 9)], [Vector2(15, 21), Vector2(1, 11)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(19, 28), Vector2(1, 2)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		2 : [[Vector2(6, 3), Vector2(5, 13)], [Vector2(1, 4), Vector2(2, 2)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(11, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(12, 5), Vector2(1, 27)], [Vector2(2, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 26)], [Vector2(14, 7), Vector2(2, 25)], [Vector2(16, 8), Vector2(2, 20)], [Vector2(18, 9), Vector2(1, 19)], [Vector2(19, 10), Vector2(1, 20)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(21, 13), Vector2(1, 19)], [Vector2(7, 16), Vector2(4, 9)], [Vector2(22, 16), Vector2(1, 16)], [Vector2(6, 22), Vector2(1, 2)], [Vector2(9, 25), Vector2(2, 1)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(10, 26), Vector2(1, 2)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		3 : [[Vector2(6, 3), Vector2(5, 13)], [Vector2(1, 4), Vector2(2, 2)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(11, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(12, 5), Vector2(1, 27)], [Vector2(2, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 26)], [Vector2(14, 7), Vector2(2, 25)], [Vector2(16, 8), Vector2(2, 20)], [Vector2(18, 9), Vector2(1, 19)], [Vector2(19, 10), Vector2(1, 20)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(21, 13), Vector2(1, 19)], [Vector2(7, 16), Vector2(4, 8)], [Vector2(22, 16), Vector2(1, 16)], [Vector2(6, 21), Vector2(1, 2)], [Vector2(9, 24), Vector2(2, 2)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(10, 26), Vector2(1, 2)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		4 : [[Vector2(7, 2), Vector2(5, 13)], [Vector2(2, 3), Vector2(2, 2)], [Vector2(5, 3), Vector2(2, 9)], [Vector2(12, 3), Vector2(1, 29)], [Vector2(4, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(14, 6), Vector2(1, 26)], [Vector2(15, 7), Vector2(2, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(1, 21)], [Vector2(20, 10), Vector2(1, 22)], [Vector2(21, 11), Vector2(1, 21)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(22, 13), Vector2(1, 19)], [Vector2(8, 15), Vector2(4, 8)], [Vector2(23, 16), Vector2(1, 6)], [Vector2(7, 19), Vector2(1, 8)], [Vector2(6, 22), Vector2(1, 4)], [Vector2(8, 23), Vector2(3, 1)], [Vector2(8, 24), Vector2(2, 2)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(11, 27), Vector2(1, 5)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(15, 29), Vector2(1, 3)], [Vector2(10, 31), Vector2(1, 1)]],
		5 : [[Vector2(14, 0), Vector2(5, 18)], [Vector2(9, 1), Vector2(2, 2)], [Vector2(12, 1), Vector2(2, 17)], [Vector2(19, 1), Vector2(1, 29)], [Vector2(11, 2), Vector2(1, 17)], [Vector2(20, 2), Vector2(1, 30)], [Vector2(10, 3), Vector2(1, 10)], [Vector2(9, 6), Vector2(1, 2)], [Vector2(21, 6), Vector2(1, 26)], [Vector2(22, 7), Vector2(1, 25)], [Vector2(23, 8), Vector2(1, 24)], [Vector2(24, 9), Vector2(1, 16)], [Vector2(9, 10), Vector2(1, 2)], [Vector2(25, 10), Vector2(1, 13)], [Vector2(26, 11), Vector2(1, 11)], [Vector2(27, 13), Vector2(1, 6)], [Vector2(10, 14), Vector2(1, 6)], [Vector2(9, 15), Vector2(1, 5)], [Vector2(8, 16), Vector2(1, 3)], [Vector2(18, 18), Vector2(1, 10)], [Vector2(17, 19), Vector2(1, 9)], [Vector2(16, 20), Vector2(1, 9)], [Vector2(15, 21), Vector2(1, 11)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		6 : [[Vector2(14, 0), Vector2(5, 18)], [Vector2(9, 1), Vector2(2, 2)], [Vector2(12, 1), Vector2(2, 17)], [Vector2(19, 1), Vector2(1, 29)], [Vector2(11, 2), Vector2(1, 17)], [Vector2(20, 2), Vector2(1, 30)], [Vector2(10, 3), Vector2(1, 10)], [Vector2(9, 6), Vector2(1, 2)], [Vector2(21, 6), Vector2(1, 26)], [Vector2(22, 7), Vector2(1, 25)], [Vector2(23, 8), Vector2(1, 24)], [Vector2(24, 9), Vector2(1, 16)], [Vector2(9, 10), Vector2(1, 2)], [Vector2(25, 10), Vector2(1, 13)], [Vector2(26, 11), Vector2(1, 11)], [Vector2(27, 13), Vector2(1, 6)], [Vector2(10, 14), Vector2(1, 6)], [Vector2(9, 15), Vector2(1, 5)], [Vector2(8, 16), Vector2(1, 3)], [Vector2(18, 18), Vector2(1, 10)], [Vector2(17, 19), Vector2(1, 9)], [Vector2(16, 20), Vector2(1, 9)], [Vector2(15, 21), Vector2(1, 11)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		7 : [[Vector2(14, 0), Vector2(5, 18)], [Vector2(9, 1), Vector2(2, 2)], [Vector2(12, 1), Vector2(2, 17)], [Vector2(19, 1), Vector2(1, 29)], [Vector2(11, 2), Vector2(1, 17)], [Vector2(20, 2), Vector2(1, 30)], [Vector2(10, 3), Vector2(1, 10)], [Vector2(9, 6), Vector2(1, 2)], [Vector2(21, 6), Vector2(1, 26)], [Vector2(22, 7), Vector2(1, 25)], [Vector2(23, 8), Vector2(1, 24)], [Vector2(24, 9), Vector2(1, 16)], [Vector2(9, 10), Vector2(1, 2)], [Vector2(25, 10), Vector2(1, 13)], [Vector2(26, 11), Vector2(1, 11)], [Vector2(27, 13), Vector2(1, 6)], [Vector2(10, 14), Vector2(1, 6)], [Vector2(9, 15), Vector2(1, 5)], [Vector2(8, 16), Vector2(1, 3)], [Vector2(18, 18), Vector2(1, 10)], [Vector2(17, 19), Vector2(1, 9)], [Vector2(16, 20), Vector2(1, 9)], [Vector2(15, 21), Vector2(1, 11)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		8 : [[Vector2(14, 0), Vector2(5, 18)], [Vector2(9, 1), Vector2(2, 2)], [Vector2(12, 1), Vector2(2, 17)], [Vector2(19, 1), Vector2(1, 29)], [Vector2(11, 2), Vector2(1, 17)], [Vector2(20, 2), Vector2(1, 30)], [Vector2(10, 3), Vector2(1, 10)], [Vector2(9, 6), Vector2(1, 2)], [Vector2(21, 6), Vector2(1, 26)], [Vector2(22, 7), Vector2(1, 25)], [Vector2(23, 8), Vector2(1, 24)], [Vector2(24, 9), Vector2(1, 16)], [Vector2(9, 10), Vector2(1, 2)], [Vector2(25, 10), Vector2(1, 13)], [Vector2(26, 11), Vector2(1, 11)], [Vector2(27, 13), Vector2(1, 6)], [Vector2(10, 14), Vector2(1, 6)], [Vector2(9, 15), Vector2(1, 5)], [Vector2(8, 16), Vector2(1, 3)], [Vector2(18, 18), Vector2(1, 10)], [Vector2(17, 19), Vector2(1, 9)], [Vector2(16, 20), Vector2(1, 9)], [Vector2(15, 21), Vector2(1, 11)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		9 : [[Vector2(7, 2), Vector2(5, 16)], [Vector2(2, 3), Vector2(2, 2)], [Vector2(5, 3), Vector2(2, 10)], [Vector2(12, 3), Vector2(1, 18)], [Vector2(4, 4), Vector2(1, 9)], [Vector2(13, 4), Vector2(1, 17)], [Vector2(3, 5), Vector2(1, 5)], [Vector2(14, 6), Vector2(1, 26)], [Vector2(15, 7), Vector2(2, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(1, 21)], [Vector2(20, 10), Vector2(1, 22)], [Vector2(21, 11), Vector2(1, 21)], [Vector2(6, 13), Vector2(1, 5)], [Vector2(22, 13), Vector2(1, 19)], [Vector2(5, 15), Vector2(1, 2)], [Vector2(23, 16), Vector2(1, 6)], [Vector2(8, 18), Vector2(4, 3)], [Vector2(6, 19), Vector2(2, 5)], [Vector2(5, 20), Vector2(1, 5)], [Vector2(4, 21), Vector2(1, 3)], [Vector2(8, 21), Vector2(3, 1)], [Vector2(8, 22), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(6, 24), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(15, 29), Vector2(1, 3)], [Vector2(10, 31), Vector2(1, 1)]],
		10 : [[Vector2(7, 2), Vector2(5, 13)], [Vector2(2, 3), Vector2(2, 2)], [Vector2(5, 3), Vector2(2, 9)], [Vector2(12, 3), Vector2(1, 29)], [Vector2(4, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(14, 6), Vector2(1, 26)], [Vector2(15, 7), Vector2(2, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(1, 21)], [Vector2(20, 10), Vector2(1, 22)], [Vector2(21, 11), Vector2(1, 21)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(22, 13), Vector2(1, 19)], [Vector2(8, 15), Vector2(4, 8)], [Vector2(23, 16), Vector2(1, 6)], [Vector2(7, 19), Vector2(1, 8)], [Vector2(6, 22), Vector2(1, 4)], [Vector2(8, 23), Vector2(3, 1)], [Vector2(8, 24), Vector2(2, 2)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(8, 26), Vector2(1, 1)], [Vector2(11, 27), Vector2(1, 5)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(15, 29), Vector2(1, 3)], [Vector2(10, 31), Vector2(1, 1)]],
		11 : [[Vector2(6, 3), Vector2(5, 13)], [Vector2(1, 4), Vector2(2, 2)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(11, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(12, 5), Vector2(1, 27)], [Vector2(2, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 26)], [Vector2(14, 7), Vector2(2, 25)], [Vector2(16, 8), Vector2(2, 20)], [Vector2(18, 9), Vector2(1, 19)], [Vector2(19, 10), Vector2(1, 20)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(21, 13), Vector2(1, 19)], [Vector2(7, 16), Vector2(4, 9)], [Vector2(22, 16), Vector2(1, 16)], [Vector2(6, 22), Vector2(1, 2)], [Vector2(9, 25), Vector2(2, 1)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(10, 26), Vector2(1, 2)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		12 : [[Vector2(6, 3), Vector2(5, 13)], [Vector2(1, 4), Vector2(2, 2)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(11, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(12, 5), Vector2(1, 27)], [Vector2(2, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 26)], [Vector2(14, 7), Vector2(2, 25)], [Vector2(16, 8), Vector2(2, 20)], [Vector2(18, 9), Vector2(1, 19)], [Vector2(19, 10), Vector2(1, 20)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(21, 13), Vector2(1, 19)], [Vector2(7, 16), Vector2(4, 9)], [Vector2(22, 16), Vector2(1, 16)], [Vector2(6, 22), Vector2(1, 2)], [Vector2(9, 25), Vector2(2, 1)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(10, 26), Vector2(1, 2)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		13 : [[Vector2(6, 3), Vector2(5, 13)], [Vector2(1, 4), Vector2(2, 2)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(11, 4), Vector2(1, 28)], [Vector2(3, 5), Vector2(1, 8)], [Vector2(12, 5), Vector2(1, 27)], [Vector2(2, 6), Vector2(1, 6)], [Vector2(13, 6), Vector2(1, 26)], [Vector2(14, 7), Vector2(2, 25)], [Vector2(16, 8), Vector2(2, 20)], [Vector2(18, 9), Vector2(1, 19)], [Vector2(19, 10), Vector2(1, 20)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(21, 13), Vector2(1, 19)], [Vector2(7, 16), Vector2(4, 8)], [Vector2(22, 16), Vector2(1, 16)], [Vector2(6, 21), Vector2(1, 2)], [Vector2(9, 24), Vector2(2, 2)], [Vector2(23, 25), Vector2(1, 7)], [Vector2(10, 26), Vector2(1, 2)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_attack_l"
	},
	"tomb_lord_attack_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(18, 2), Vector2(5, 13)], [Vector2(17, 3), Vector2(1, 18)], [Vector2(23, 3), Vector2(2, 13)], [Vector2(26, 3), Vector2(2, 2)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(25, 4), Vector2(1, 10)], [Vector2(26, 5), Vector2(1, 5)], [Vector2(15, 6), Vector2(1, 23)], [Vector2(13, 7), Vector2(2, 21)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 12)], [Vector2(18, 15), Vector2(3, 6)], [Vector2(22, 15), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 7)], [Vector2(21, 17), Vector2(2, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(20, 21), Vector2(1, 1)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]],
		1 : [[Vector2(16, 0), Vector2(5, 13)], [Vector2(15, 1), Vector2(1, 18)], [Vector2(21, 1), Vector2(2, 13)], [Vector2(24, 1), Vector2(2, 2)], [Vector2(14, 2), Vector2(1, 26)], [Vector2(23, 2), Vector2(1, 10)], [Vector2(24, 3), Vector2(1, 5)], [Vector2(12, 6), Vector2(2, 22)], [Vector2(11, 7), Vector2(1, 25)], [Vector2(10, 8), Vector2(1, 24)], [Vector2(9, 9), Vector2(1, 23)], [Vector2(8, 10), Vector2(1, 22)], [Vector2(7, 11), Vector2(1, 14)], [Vector2(6, 13), Vector2(1, 10)], [Vector2(16, 13), Vector2(3, 6)], [Vector2(20, 13), Vector2(1, 6)], [Vector2(19, 14), Vector2(1, 5)], [Vector2(21, 15), Vector2(2, 5)], [Vector2(5, 16), Vector2(1, 5)], [Vector2(23, 16), Vector2(1, 5)], [Vector2(24, 17), Vector2(1, 3)], [Vector2(15, 20), Vector2(1, 9)], [Vector2(22, 20), Vector2(1, 1)], [Vector2(16, 21), Vector2(1, 11)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(12, 28), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]],
		2 : [[Vector2(21, 3), Vector2(5, 13)], [Vector2(20, 4), Vector2(1, 28)], [Vector2(26, 4), Vector2(2, 9)], [Vector2(29, 4), Vector2(2, 2)], [Vector2(19, 5), Vector2(1, 27)], [Vector2(28, 5), Vector2(1, 8)], [Vector2(18, 6), Vector2(1, 26)], [Vector2(29, 6), Vector2(1, 6)], [Vector2(16, 7), Vector2(2, 25)], [Vector2(14, 8), Vector2(2, 20)], [Vector2(13, 9), Vector2(1, 19)], [Vector2(12, 10), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 21)], [Vector2(10, 13), Vector2(1, 19)], [Vector2(26, 13), Vector2(1, 1)], [Vector2(9, 16), Vector2(1, 16)], [Vector2(21, 16), Vector2(4, 9)], [Vector2(25, 22), Vector2(1, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(21, 25), Vector2(2, 1)], [Vector2(21, 26), Vector2(1, 2)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(15, 28), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)]],
		3 : [[Vector2(21, 3), Vector2(5, 13)], [Vector2(20, 4), Vector2(1, 28)], [Vector2(26, 4), Vector2(2, 9)], [Vector2(29, 4), Vector2(2, 2)], [Vector2(19, 5), Vector2(1, 27)], [Vector2(28, 5), Vector2(1, 8)], [Vector2(18, 6), Vector2(1, 26)], [Vector2(29, 6), Vector2(1, 6)], [Vector2(16, 7), Vector2(2, 25)], [Vector2(14, 8), Vector2(2, 20)], [Vector2(13, 9), Vector2(1, 19)], [Vector2(12, 10), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 21)], [Vector2(10, 13), Vector2(1, 19)], [Vector2(26, 13), Vector2(1, 1)], [Vector2(9, 16), Vector2(1, 16)], [Vector2(21, 16), Vector2(4, 8)], [Vector2(25, 21), Vector2(1, 2)], [Vector2(21, 24), Vector2(2, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(21, 26), Vector2(1, 2)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(15, 28), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)]],
		4 : [[Vector2(20, 2), Vector2(5, 13)], [Vector2(19, 3), Vector2(1, 29)], [Vector2(25, 3), Vector2(2, 9)], [Vector2(28, 3), Vector2(2, 2)], [Vector2(18, 4), Vector2(1, 28)], [Vector2(27, 4), Vector2(1, 8)], [Vector2(28, 5), Vector2(1, 6)], [Vector2(17, 6), Vector2(1, 26)], [Vector2(15, 7), Vector2(2, 22)], [Vector2(13, 8), Vector2(2, 20)], [Vector2(12, 9), Vector2(1, 21)], [Vector2(11, 10), Vector2(1, 22)], [Vector2(10, 11), Vector2(1, 21)], [Vector2(25, 12), Vector2(1, 1)], [Vector2(9, 13), Vector2(1, 19)], [Vector2(20, 15), Vector2(4, 8)], [Vector2(8, 16), Vector2(1, 6)], [Vector2(24, 19), Vector2(1, 8)], [Vector2(25, 22), Vector2(1, 4)], [Vector2(21, 23), Vector2(3, 1)], [Vector2(22, 24), Vector2(2, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(23, 26), Vector2(1, 1)], [Vector2(20, 27), Vector2(1, 5)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(16, 29), Vector2(1, 3)], [Vector2(21, 31), Vector2(1, 1)]],
		5 : [[Vector2(13, 0), Vector2(5, 18)], [Vector2(12, 1), Vector2(1, 29)], [Vector2(18, 1), Vector2(2, 17)], [Vector2(21, 1), Vector2(2, 2)], [Vector2(11, 2), Vector2(1, 30)], [Vector2(20, 2), Vector2(1, 17)], [Vector2(21, 3), Vector2(1, 10)], [Vector2(10, 6), Vector2(1, 26)], [Vector2(22, 6), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 25)], [Vector2(8, 8), Vector2(1, 24)], [Vector2(7, 9), Vector2(1, 16)], [Vector2(6, 10), Vector2(1, 13)], [Vector2(22, 10), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 11)], [Vector2(4, 13), Vector2(1, 6)], [Vector2(21, 14), Vector2(1, 6)], [Vector2(22, 15), Vector2(1, 5)], [Vector2(23, 16), Vector2(1, 3)], [Vector2(13, 18), Vector2(1, 10)], [Vector2(14, 19), Vector2(1, 9)], [Vector2(15, 20), Vector2(1, 9)], [Vector2(16, 21), Vector2(1, 11)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(21, 31), Vector2(1, 1)]],
		6 : [[Vector2(13, 0), Vector2(5, 18)], [Vector2(12, 1), Vector2(1, 29)], [Vector2(18, 1), Vector2(2, 17)], [Vector2(21, 1), Vector2(2, 2)], [Vector2(11, 2), Vector2(1, 30)], [Vector2(20, 2), Vector2(1, 17)], [Vector2(21, 3), Vector2(1, 10)], [Vector2(10, 6), Vector2(1, 26)], [Vector2(22, 6), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 25)], [Vector2(8, 8), Vector2(1, 24)], [Vector2(7, 9), Vector2(1, 16)], [Vector2(6, 10), Vector2(1, 13)], [Vector2(22, 10), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 11)], [Vector2(4, 13), Vector2(1, 6)], [Vector2(21, 14), Vector2(1, 6)], [Vector2(22, 15), Vector2(1, 5)], [Vector2(23, 16), Vector2(1, 3)], [Vector2(13, 18), Vector2(1, 10)], [Vector2(14, 19), Vector2(1, 9)], [Vector2(15, 20), Vector2(1, 9)], [Vector2(16, 21), Vector2(1, 11)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(21, 31), Vector2(1, 1)]],
		7 : [[Vector2(13, 0), Vector2(5, 18)], [Vector2(12, 1), Vector2(1, 29)], [Vector2(18, 1), Vector2(2, 17)], [Vector2(21, 1), Vector2(2, 2)], [Vector2(11, 2), Vector2(1, 30)], [Vector2(20, 2), Vector2(1, 17)], [Vector2(21, 3), Vector2(1, 10)], [Vector2(10, 6), Vector2(1, 26)], [Vector2(22, 6), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 25)], [Vector2(8, 8), Vector2(1, 24)], [Vector2(7, 9), Vector2(1, 16)], [Vector2(6, 10), Vector2(1, 13)], [Vector2(22, 10), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 11)], [Vector2(4, 13), Vector2(1, 6)], [Vector2(21, 14), Vector2(1, 6)], [Vector2(22, 15), Vector2(1, 5)], [Vector2(23, 16), Vector2(1, 3)], [Vector2(13, 18), Vector2(1, 10)], [Vector2(14, 19), Vector2(1, 9)], [Vector2(15, 20), Vector2(1, 9)], [Vector2(16, 21), Vector2(1, 11)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(21, 31), Vector2(1, 1)]],
		8 : [[Vector2(13, 0), Vector2(5, 18)], [Vector2(12, 1), Vector2(1, 29)], [Vector2(18, 1), Vector2(2, 17)], [Vector2(21, 1), Vector2(2, 2)], [Vector2(11, 2), Vector2(1, 30)], [Vector2(20, 2), Vector2(1, 17)], [Vector2(21, 3), Vector2(1, 10)], [Vector2(10, 6), Vector2(1, 26)], [Vector2(22, 6), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 25)], [Vector2(8, 8), Vector2(1, 24)], [Vector2(7, 9), Vector2(1, 16)], [Vector2(6, 10), Vector2(1, 13)], [Vector2(22, 10), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 11)], [Vector2(4, 13), Vector2(1, 6)], [Vector2(21, 14), Vector2(1, 6)], [Vector2(22, 15), Vector2(1, 5)], [Vector2(23, 16), Vector2(1, 3)], [Vector2(13, 18), Vector2(1, 10)], [Vector2(14, 19), Vector2(1, 9)], [Vector2(15, 20), Vector2(1, 9)], [Vector2(16, 21), Vector2(1, 11)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(21, 31), Vector2(1, 1)]],
		9 : [[Vector2(20, 2), Vector2(5, 16)], [Vector2(19, 3), Vector2(1, 18)], [Vector2(25, 3), Vector2(2, 10)], [Vector2(28, 3), Vector2(2, 2)], [Vector2(18, 4), Vector2(1, 17)], [Vector2(27, 4), Vector2(1, 9)], [Vector2(28, 5), Vector2(1, 5)], [Vector2(17, 6), Vector2(1, 26)], [Vector2(15, 7), Vector2(2, 22)], [Vector2(13, 8), Vector2(2, 20)], [Vector2(12, 9), Vector2(1, 21)], [Vector2(11, 10), Vector2(1, 22)], [Vector2(10, 11), Vector2(1, 21)], [Vector2(9, 13), Vector2(1, 19)], [Vector2(25, 13), Vector2(1, 5)], [Vector2(26, 15), Vector2(1, 2)], [Vector2(8, 16), Vector2(1, 6)], [Vector2(20, 18), Vector2(4, 3)], [Vector2(24, 19), Vector2(2, 5)], [Vector2(26, 20), Vector2(1, 5)], [Vector2(21, 21), Vector2(3, 1)], [Vector2(27, 21), Vector2(1, 3)], [Vector2(23, 22), Vector2(1, 1)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(25, 24), Vector2(1, 1)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(16, 29), Vector2(1, 3)], [Vector2(21, 31), Vector2(1, 1)]],
		10 : [[Vector2(20, 2), Vector2(5, 13)], [Vector2(19, 3), Vector2(1, 29)], [Vector2(25, 3), Vector2(2, 9)], [Vector2(28, 3), Vector2(2, 2)], [Vector2(18, 4), Vector2(1, 28)], [Vector2(27, 4), Vector2(1, 8)], [Vector2(28, 5), Vector2(1, 6)], [Vector2(17, 6), Vector2(1, 26)], [Vector2(15, 7), Vector2(2, 22)], [Vector2(13, 8), Vector2(2, 20)], [Vector2(12, 9), Vector2(1, 21)], [Vector2(11, 10), Vector2(1, 22)], [Vector2(10, 11), Vector2(1, 21)], [Vector2(25, 12), Vector2(1, 1)], [Vector2(9, 13), Vector2(1, 19)], [Vector2(20, 15), Vector2(4, 8)], [Vector2(8, 16), Vector2(1, 6)], [Vector2(24, 19), Vector2(1, 8)], [Vector2(25, 22), Vector2(1, 4)], [Vector2(21, 23), Vector2(3, 1)], [Vector2(22, 24), Vector2(2, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(23, 26), Vector2(1, 1)], [Vector2(20, 27), Vector2(1, 5)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(16, 29), Vector2(1, 3)], [Vector2(21, 31), Vector2(1, 1)]],
		11 : [[Vector2(21, 3), Vector2(5, 13)], [Vector2(20, 4), Vector2(1, 28)], [Vector2(26, 4), Vector2(2, 9)], [Vector2(29, 4), Vector2(2, 2)], [Vector2(19, 5), Vector2(1, 27)], [Vector2(28, 5), Vector2(1, 8)], [Vector2(18, 6), Vector2(1, 26)], [Vector2(29, 6), Vector2(1, 6)], [Vector2(16, 7), Vector2(2, 25)], [Vector2(14, 8), Vector2(2, 20)], [Vector2(13, 9), Vector2(1, 19)], [Vector2(12, 10), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 21)], [Vector2(10, 13), Vector2(1, 19)], [Vector2(26, 13), Vector2(1, 1)], [Vector2(9, 16), Vector2(1, 16)], [Vector2(21, 16), Vector2(4, 9)], [Vector2(25, 22), Vector2(1, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(21, 25), Vector2(2, 1)], [Vector2(21, 26), Vector2(1, 2)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(15, 28), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)]],
		12 : [[Vector2(21, 3), Vector2(5, 13)], [Vector2(20, 4), Vector2(1, 28)], [Vector2(26, 4), Vector2(2, 9)], [Vector2(29, 4), Vector2(2, 2)], [Vector2(19, 5), Vector2(1, 27)], [Vector2(28, 5), Vector2(1, 8)], [Vector2(18, 6), Vector2(1, 26)], [Vector2(29, 6), Vector2(1, 6)], [Vector2(16, 7), Vector2(2, 25)], [Vector2(14, 8), Vector2(2, 20)], [Vector2(13, 9), Vector2(1, 19)], [Vector2(12, 10), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 21)], [Vector2(10, 13), Vector2(1, 19)], [Vector2(26, 13), Vector2(1, 1)], [Vector2(9, 16), Vector2(1, 16)], [Vector2(21, 16), Vector2(4, 9)], [Vector2(25, 22), Vector2(1, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(21, 25), Vector2(2, 1)], [Vector2(21, 26), Vector2(1, 2)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(15, 28), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)]],
		13 : [[Vector2(21, 3), Vector2(5, 13)], [Vector2(20, 4), Vector2(1, 28)], [Vector2(26, 4), Vector2(2, 9)], [Vector2(29, 4), Vector2(2, 2)], [Vector2(19, 5), Vector2(1, 27)], [Vector2(28, 5), Vector2(1, 8)], [Vector2(18, 6), Vector2(1, 26)], [Vector2(29, 6), Vector2(1, 6)], [Vector2(16, 7), Vector2(2, 25)], [Vector2(14, 8), Vector2(2, 20)], [Vector2(13, 9), Vector2(1, 19)], [Vector2(12, 10), Vector2(1, 20)], [Vector2(11, 11), Vector2(1, 21)], [Vector2(10, 13), Vector2(1, 19)], [Vector2(26, 13), Vector2(1, 1)], [Vector2(9, 16), Vector2(1, 16)], [Vector2(21, 16), Vector2(4, 8)], [Vector2(25, 21), Vector2(1, 2)], [Vector2(21, 24), Vector2(2, 2)], [Vector2(8, 25), Vector2(1, 7)], [Vector2(21, 26), Vector2(1, 2)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(15, 28), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_attack_r"
	},
	"tomb_lord_disp" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 13)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(2, 21)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(25, 16), Vector2(1, 7)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		1 : [[Vector2(9, 3), Vector2(5, 14)], [Vector2(4, 4), Vector2(2, 2)], [Vector2(7, 4), Vector2(2, 11)], [Vector2(14, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 8)], [Vector2(15, 5), Vector2(1, 27)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(16, 7), Vector2(1, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(2, 21)], [Vector2(21, 10), Vector2(1, 22)], [Vector2(22, 11), Vector2(1, 21)], [Vector2(23, 12), Vector2(1, 20)], [Vector2(24, 14), Vector2(1, 11)], [Vector2(8, 15), Vector2(1, 2)], [Vector2(11, 17), Vector2(3, 5)], [Vector2(25, 17), Vector2(1, 6)], [Vector2(10, 18), Vector2(1, 5)], [Vector2(8, 19), Vector2(2, 5)], [Vector2(7, 20), Vector2(1, 5)], [Vector2(6, 21), Vector2(1, 3)], [Vector2(11, 22), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(8, 24), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		2 : [[Vector2(8, 4), Vector2(5, 14)], [Vector2(6, 5), Vector2(2, 11)], [Vector2(13, 5), Vector2(1, 27)], [Vector2(3, 6), Vector2(3, 2)], [Vector2(14, 6), Vector2(1, 26)], [Vector2(4, 8), Vector2(2, 5)], [Vector2(15, 8), Vector2(1, 24)], [Vector2(16, 9), Vector2(2, 19)], [Vector2(18, 10), Vector2(2, 18)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(21, 12), Vector2(1, 20)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(22, 13), Vector2(1, 19)], [Vector2(23, 15), Vector2(1, 17)], [Vector2(7, 16), Vector2(1, 2)], [Vector2(10, 18), Vector2(3, 5)], [Vector2(24, 18), Vector2(1, 7)], [Vector2(9, 19), Vector2(1, 5)], [Vector2(7, 20), Vector2(2, 5)], [Vector2(6, 21), Vector2(1, 5)], [Vector2(5, 22), Vector2(1, 3)], [Vector2(10, 23), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(7, 25), Vector2(1, 1)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(19, 28), Vector2(1, 2)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		3 : [[Vector2(9, 3), Vector2(5, 14)], [Vector2(4, 4), Vector2(2, 2)], [Vector2(7, 4), Vector2(2, 11)], [Vector2(14, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 8)], [Vector2(15, 5), Vector2(1, 27)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(16, 7), Vector2(1, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(2, 21)], [Vector2(21, 10), Vector2(1, 22)], [Vector2(22, 11), Vector2(1, 21)], [Vector2(23, 12), Vector2(1, 20)], [Vector2(24, 14), Vector2(1, 11)], [Vector2(8, 15), Vector2(1, 2)], [Vector2(11, 17), Vector2(3, 5)], [Vector2(25, 17), Vector2(1, 6)], [Vector2(10, 18), Vector2(1, 5)], [Vector2(8, 19), Vector2(2, 5)], [Vector2(7, 20), Vector2(1, 5)], [Vector2(6, 21), Vector2(1, 3)], [Vector2(11, 22), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(8, 24), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_disp"
	},
	"tomb_lord_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 13)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(2, 21)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(25, 16), Vector2(1, 7)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		1 : [[Vector2(9, 3), Vector2(5, 14)], [Vector2(4, 4), Vector2(2, 2)], [Vector2(7, 4), Vector2(2, 11)], [Vector2(14, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 8)], [Vector2(15, 5), Vector2(1, 27)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(16, 7), Vector2(1, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(2, 21)], [Vector2(21, 10), Vector2(1, 22)], [Vector2(22, 11), Vector2(1, 21)], [Vector2(23, 12), Vector2(1, 20)], [Vector2(24, 14), Vector2(1, 11)], [Vector2(8, 15), Vector2(1, 2)], [Vector2(11, 17), Vector2(3, 5)], [Vector2(25, 17), Vector2(1, 6)], [Vector2(10, 18), Vector2(1, 5)], [Vector2(8, 19), Vector2(2, 5)], [Vector2(7, 20), Vector2(1, 5)], [Vector2(6, 21), Vector2(1, 3)], [Vector2(11, 22), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(8, 24), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		2 : [[Vector2(8, 4), Vector2(5, 14)], [Vector2(6, 5), Vector2(2, 11)], [Vector2(13, 5), Vector2(1, 27)], [Vector2(3, 6), Vector2(3, 2)], [Vector2(14, 6), Vector2(1, 26)], [Vector2(4, 8), Vector2(2, 5)], [Vector2(15, 8), Vector2(1, 24)], [Vector2(16, 9), Vector2(2, 19)], [Vector2(18, 10), Vector2(2, 18)], [Vector2(20, 11), Vector2(1, 21)], [Vector2(21, 12), Vector2(1, 20)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(22, 13), Vector2(1, 19)], [Vector2(23, 15), Vector2(1, 17)], [Vector2(7, 16), Vector2(1, 2)], [Vector2(10, 18), Vector2(3, 5)], [Vector2(24, 18), Vector2(1, 7)], [Vector2(9, 19), Vector2(1, 5)], [Vector2(7, 20), Vector2(2, 5)], [Vector2(6, 21), Vector2(1, 5)], [Vector2(5, 22), Vector2(1, 3)], [Vector2(10, 23), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(7, 25), Vector2(1, 1)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(16, 28), Vector2(1, 1)], [Vector2(19, 28), Vector2(1, 2)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(10, 31), Vector2(1, 1)]],
		3 : [[Vector2(9, 3), Vector2(5, 14)], [Vector2(4, 4), Vector2(2, 2)], [Vector2(7, 4), Vector2(2, 11)], [Vector2(14, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 8)], [Vector2(15, 5), Vector2(1, 27)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(16, 7), Vector2(1, 22)], [Vector2(17, 8), Vector2(2, 20)], [Vector2(19, 9), Vector2(2, 21)], [Vector2(21, 10), Vector2(1, 22)], [Vector2(22, 11), Vector2(1, 21)], [Vector2(23, 12), Vector2(1, 20)], [Vector2(24, 14), Vector2(1, 11)], [Vector2(8, 15), Vector2(1, 2)], [Vector2(11, 17), Vector2(3, 5)], [Vector2(25, 17), Vector2(1, 6)], [Vector2(10, 18), Vector2(1, 5)], [Vector2(8, 19), Vector2(2, 5)], [Vector2(7, 20), Vector2(1, 5)], [Vector2(6, 21), Vector2(1, 3)], [Vector2(11, 22), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(8, 24), Vector2(1, 1)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_left"
	},
	"tomb_lord_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(18, 2), Vector2(5, 13)], [Vector2(17, 3), Vector2(1, 18)], [Vector2(23, 3), Vector2(2, 13)], [Vector2(26, 3), Vector2(2, 2)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(25, 4), Vector2(1, 10)], [Vector2(26, 5), Vector2(1, 5)], [Vector2(15, 6), Vector2(1, 23)], [Vector2(13, 7), Vector2(2, 21)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 12)], [Vector2(18, 15), Vector2(3, 6)], [Vector2(22, 15), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 7)], [Vector2(21, 17), Vector2(2, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(20, 21), Vector2(1, 1)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]],
		1 : [[Vector2(18, 3), Vector2(5, 14)], [Vector2(17, 4), Vector2(1, 28)], [Vector2(23, 4), Vector2(2, 11)], [Vector2(26, 4), Vector2(2, 2)], [Vector2(16, 5), Vector2(1, 27)], [Vector2(25, 5), Vector2(1, 8)], [Vector2(26, 6), Vector2(1, 5)], [Vector2(15, 7), Vector2(1, 22)], [Vector2(13, 8), Vector2(2, 20)], [Vector2(11, 9), Vector2(2, 21)], [Vector2(10, 10), Vector2(1, 22)], [Vector2(9, 11), Vector2(1, 21)], [Vector2(8, 12), Vector2(1, 20)], [Vector2(7, 14), Vector2(1, 11)], [Vector2(23, 15), Vector2(1, 2)], [Vector2(6, 17), Vector2(1, 6)], [Vector2(18, 17), Vector2(3, 5)], [Vector2(21, 18), Vector2(1, 5)], [Vector2(22, 19), Vector2(2, 5)], [Vector2(24, 20), Vector2(1, 5)], [Vector2(25, 21), Vector2(1, 3)], [Vector2(20, 22), Vector2(1, 1)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(23, 24), Vector2(1, 1)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]],
		2 : [[Vector2(19, 4), Vector2(5, 14)], [Vector2(18, 5), Vector2(1, 27)], [Vector2(24, 5), Vector2(2, 11)], [Vector2(17, 6), Vector2(1, 26)], [Vector2(26, 6), Vector2(3, 2)], [Vector2(16, 8), Vector2(1, 24)], [Vector2(26, 8), Vector2(2, 5)], [Vector2(14, 9), Vector2(2, 19)], [Vector2(12, 10), Vector2(2, 18)], [Vector2(11, 11), Vector2(1, 21)], [Vector2(10, 12), Vector2(1, 20)], [Vector2(9, 13), Vector2(1, 19)], [Vector2(26, 13), Vector2(1, 2)], [Vector2(8, 15), Vector2(1, 17)], [Vector2(24, 16), Vector2(1, 2)], [Vector2(7, 18), Vector2(1, 7)], [Vector2(19, 18), Vector2(3, 5)], [Vector2(22, 19), Vector2(1, 5)], [Vector2(23, 20), Vector2(2, 5)], [Vector2(25, 21), Vector2(1, 5)], [Vector2(26, 22), Vector2(1, 3)], [Vector2(21, 23), Vector2(1, 1)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(24, 25), Vector2(1, 1)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(12, 28), Vector2(1, 2)], [Vector2(15, 28), Vector2(1, 1)], [Vector2(21, 31), Vector2(1, 1)]],
		3 : [[Vector2(18, 3), Vector2(5, 14)], [Vector2(17, 4), Vector2(1, 28)], [Vector2(23, 4), Vector2(2, 11)], [Vector2(26, 4), Vector2(2, 2)], [Vector2(16, 5), Vector2(1, 27)], [Vector2(25, 5), Vector2(1, 8)], [Vector2(26, 6), Vector2(1, 5)], [Vector2(15, 7), Vector2(1, 22)], [Vector2(13, 8), Vector2(2, 20)], [Vector2(11, 9), Vector2(2, 21)], [Vector2(10, 10), Vector2(1, 22)], [Vector2(9, 11), Vector2(1, 21)], [Vector2(8, 12), Vector2(1, 20)], [Vector2(7, 14), Vector2(1, 11)], [Vector2(23, 15), Vector2(1, 2)], [Vector2(6, 17), Vector2(1, 6)], [Vector2(18, 17), Vector2(3, 5)], [Vector2(21, 18), Vector2(1, 5)], [Vector2(22, 19), Vector2(2, 5)], [Vector2(24, 20), Vector2(1, 5)], [Vector2(25, 21), Vector2(1, 3)], [Vector2(20, 22), Vector2(1, 1)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(23, 24), Vector2(1, 1)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_right"
	},
	"tomb_lord_turn_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(18, 2), Vector2(5, 13)], [Vector2(17, 3), Vector2(1, 18)], [Vector2(23, 3), Vector2(2, 13)], [Vector2(26, 3), Vector2(2, 2)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(25, 4), Vector2(1, 10)], [Vector2(26, 5), Vector2(1, 5)], [Vector2(15, 6), Vector2(1, 23)], [Vector2(13, 7), Vector2(2, 21)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 12)], [Vector2(18, 15), Vector2(3, 6)], [Vector2(22, 15), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 7)], [Vector2(21, 17), Vector2(2, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(20, 21), Vector2(1, 1)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]],
		1 : [[Vector2(17, 2), Vector2(5, 19)], [Vector2(16, 3), Vector2(1, 29)], [Vector2(22, 3), Vector2(2, 18)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(24, 4), Vector2(1, 10)], [Vector2(25, 5), Vector2(1, 2)], [Vector2(14, 7), Vector2(1, 25)], [Vector2(13, 8), Vector2(1, 24)], [Vector2(12, 9), Vector2(1, 23)], [Vector2(11, 10), Vector2(1, 22)], [Vector2(10, 11), Vector2(1, 16)], [Vector2(9, 12), Vector2(1, 12)], [Vector2(8, 15), Vector2(1, 7)], [Vector2(24, 16), Vector2(1, 8)], [Vector2(25, 18), Vector2(1, 6)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(17, 21), Vector2(4, 2)], [Vector2(23, 21), Vector2(1, 2)], [Vector2(17, 23), Vector2(3, 1)], [Vector2(17, 24), Vector2(2, 3)], [Vector2(17, 27), Vector2(1, 5)], [Vector2(18, 31), Vector2(1, 1)]],
		2 : [[Vector2(15, 2), Vector2(6, 20)], [Vector2(14, 3), Vector2(1, 29)], [Vector2(21, 3), Vector2(1, 20)], [Vector2(13, 4), Vector2(1, 28)], [Vector2(22, 4), Vector2(1, 20)], [Vector2(23, 5), Vector2(1, 2)], [Vector2(12, 7), Vector2(1, 25)], [Vector2(11, 8), Vector2(1, 24)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 11), Vector2(1, 18)], [Vector2(8, 13), Vector2(1, 12)], [Vector2(23, 15), Vector2(1, 9)], [Vector2(7, 16), Vector2(1, 4)], [Vector2(24, 20), Vector2(1, 3)], [Vector2(15, 22), Vector2(5, 5)], [Vector2(15, 27), Vector2(4, 3)], [Vector2(15, 30), Vector2(3, 2)]],
		3 : [[Vector2(13, 2), Vector2(6, 30)], [Vector2(12, 3), Vector2(1, 29)], [Vector2(19, 3), Vector2(1, 27)], [Vector2(11, 4), Vector2(1, 28)], [Vector2(20, 4), Vector2(1, 23)], [Vector2(10, 9), Vector2(1, 20)], [Vector2(9, 10), Vector2(1, 15)], [Vector2(21, 10), Vector2(1, 12)], [Vector2(8, 11), Vector2(1, 12)], [Vector2(22, 11), Vector2(1, 12)], [Vector2(7, 13), Vector2(1, 10)], [Vector2(23, 13), Vector2(1, 11)], [Vector2(6, 16), Vector2(1, 6)], [Vector2(24, 19), Vector2(1, 5)], [Vector2(25, 20), Vector2(1, 3)]],
		4 : [[Vector2(10, 2), Vector2(6, 20)], [Vector2(9, 3), Vector2(1, 20)], [Vector2(16, 3), Vector2(1, 29)], [Vector2(8, 4), Vector2(1, 20)], [Vector2(17, 4), Vector2(1, 28)], [Vector2(7, 5), Vector2(1, 2)], [Vector2(18, 7), Vector2(1, 25)], [Vector2(19, 8), Vector2(1, 24)], [Vector2(20, 9), Vector2(1, 23)], [Vector2(21, 11), Vector2(1, 18)], [Vector2(22, 13), Vector2(1, 12)], [Vector2(7, 15), Vector2(1, 9)], [Vector2(23, 16), Vector2(1, 4)], [Vector2(6, 20), Vector2(1, 3)], [Vector2(11, 22), Vector2(5, 5)], [Vector2(12, 27), Vector2(4, 3)], [Vector2(13, 30), Vector2(3, 2)]],
		5 : [[Vector2(11, 2), Vector2(5, 19)], [Vector2(9, 3), Vector2(2, 18)], [Vector2(16, 3), Vector2(1, 29)], [Vector2(8, 4), Vector2(1, 10)], [Vector2(17, 4), Vector2(1, 28)], [Vector2(7, 5), Vector2(1, 2)], [Vector2(18, 7), Vector2(1, 25)], [Vector2(19, 8), Vector2(1, 24)], [Vector2(20, 9), Vector2(1, 23)], [Vector2(21, 10), Vector2(1, 22)], [Vector2(22, 11), Vector2(1, 16)], [Vector2(23, 12), Vector2(1, 12)], [Vector2(24, 15), Vector2(1, 7)], [Vector2(8, 16), Vector2(1, 8)], [Vector2(7, 18), Vector2(1, 6)], [Vector2(6, 20), Vector2(1, 3)], [Vector2(9, 21), Vector2(1, 2)], [Vector2(12, 21), Vector2(4, 2)], [Vector2(13, 23), Vector2(3, 1)], [Vector2(14, 24), Vector2(2, 3)], [Vector2(15, 27), Vector2(1, 5)], [Vector2(14, 31), Vector2(1, 1)]],
		6 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 13)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(2, 21)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(25, 16), Vector2(1, 7)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_turn_l"
	},
	"tomb_lord_turn_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 13)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(2, 21)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(25, 16), Vector2(1, 7)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		1 : [[Vector2(10, 2), Vector2(5, 19)], [Vector2(8, 3), Vector2(2, 18)], [Vector2(15, 3), Vector2(1, 29)], [Vector2(7, 4), Vector2(1, 10)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 2)], [Vector2(17, 7), Vector2(1, 25)], [Vector2(18, 8), Vector2(1, 24)], [Vector2(19, 9), Vector2(1, 23)], [Vector2(20, 10), Vector2(1, 22)], [Vector2(21, 11), Vector2(1, 16)], [Vector2(22, 12), Vector2(1, 12)], [Vector2(23, 15), Vector2(1, 7)], [Vector2(7, 16), Vector2(1, 8)], [Vector2(6, 18), Vector2(1, 6)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(8, 21), Vector2(1, 2)], [Vector2(11, 21), Vector2(4, 2)], [Vector2(12, 23), Vector2(3, 1)], [Vector2(13, 24), Vector2(2, 3)], [Vector2(14, 27), Vector2(1, 5)], [Vector2(13, 31), Vector2(1, 1)]],
		2 : [[Vector2(11, 2), Vector2(6, 20)], [Vector2(10, 3), Vector2(1, 20)], [Vector2(17, 3), Vector2(1, 29)], [Vector2(9, 4), Vector2(1, 20)], [Vector2(18, 4), Vector2(1, 28)], [Vector2(8, 5), Vector2(1, 2)], [Vector2(19, 7), Vector2(1, 25)], [Vector2(20, 8), Vector2(1, 24)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 11), Vector2(1, 18)], [Vector2(23, 13), Vector2(1, 12)], [Vector2(8, 15), Vector2(1, 9)], [Vector2(24, 16), Vector2(1, 4)], [Vector2(7, 20), Vector2(1, 3)], [Vector2(12, 22), Vector2(5, 5)], [Vector2(13, 27), Vector2(4, 3)], [Vector2(14, 30), Vector2(3, 2)]],
		3 : [[Vector2(13, 2), Vector2(6, 30)], [Vector2(12, 3), Vector2(1, 27)], [Vector2(19, 3), Vector2(1, 29)], [Vector2(11, 4), Vector2(1, 23)], [Vector2(20, 4), Vector2(1, 28)], [Vector2(21, 9), Vector2(1, 20)], [Vector2(10, 10), Vector2(1, 12)], [Vector2(22, 10), Vector2(1, 15)], [Vector2(9, 11), Vector2(1, 12)], [Vector2(23, 11), Vector2(1, 12)], [Vector2(8, 13), Vector2(1, 11)], [Vector2(24, 13), Vector2(1, 10)], [Vector2(25, 16), Vector2(1, 6)], [Vector2(7, 19), Vector2(1, 5)], [Vector2(6, 20), Vector2(1, 3)]],
		4 : [[Vector2(16, 2), Vector2(6, 20)], [Vector2(15, 3), Vector2(1, 29)], [Vector2(22, 3), Vector2(1, 20)], [Vector2(14, 4), Vector2(1, 28)], [Vector2(23, 4), Vector2(1, 20)], [Vector2(24, 5), Vector2(1, 2)], [Vector2(13, 7), Vector2(1, 25)], [Vector2(12, 8), Vector2(1, 24)], [Vector2(11, 9), Vector2(1, 23)], [Vector2(10, 11), Vector2(1, 18)], [Vector2(9, 13), Vector2(1, 12)], [Vector2(24, 15), Vector2(1, 9)], [Vector2(8, 16), Vector2(1, 4)], [Vector2(25, 20), Vector2(1, 3)], [Vector2(16, 22), Vector2(5, 5)], [Vector2(16, 27), Vector2(4, 3)], [Vector2(16, 30), Vector2(3, 2)]],
		5 : [[Vector2(16, 2), Vector2(5, 19)], [Vector2(15, 3), Vector2(1, 29)], [Vector2(21, 3), Vector2(2, 18)], [Vector2(14, 4), Vector2(1, 28)], [Vector2(23, 4), Vector2(1, 10)], [Vector2(24, 5), Vector2(1, 2)], [Vector2(13, 7), Vector2(1, 25)], [Vector2(12, 8), Vector2(1, 24)], [Vector2(11, 9), Vector2(1, 23)], [Vector2(10, 10), Vector2(1, 22)], [Vector2(9, 11), Vector2(1, 16)], [Vector2(8, 12), Vector2(1, 12)], [Vector2(7, 15), Vector2(1, 7)], [Vector2(23, 16), Vector2(1, 8)], [Vector2(24, 18), Vector2(1, 6)], [Vector2(25, 20), Vector2(1, 3)], [Vector2(16, 21), Vector2(4, 2)], [Vector2(22, 21), Vector2(1, 2)], [Vector2(16, 23), Vector2(3, 1)], [Vector2(16, 24), Vector2(2, 3)], [Vector2(16, 27), Vector2(1, 5)], [Vector2(17, 31), Vector2(1, 1)]],
		6 : [[Vector2(18, 2), Vector2(5, 13)], [Vector2(17, 3), Vector2(1, 18)], [Vector2(23, 3), Vector2(2, 13)], [Vector2(26, 3), Vector2(2, 2)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(25, 4), Vector2(1, 10)], [Vector2(26, 5), Vector2(1, 5)], [Vector2(15, 6), Vector2(1, 23)], [Vector2(13, 7), Vector2(2, 21)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 12)], [Vector2(18, 15), Vector2(3, 6)], [Vector2(22, 15), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 7)], [Vector2(21, 17), Vector2(2, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(20, 21), Vector2(1, 1)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_turn_r"
	},
	"tomb_lord_walk_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 13)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 23)], [Vector2(17, 7), Vector2(2, 21)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(25, 16), Vector2(1, 7)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(14, 22), Vector2(1, 10)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(13, 23), Vector2(1, 9)], [Vector2(12, 24), Vector2(1, 8)], [Vector2(11, 26), Vector2(1, 6)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(10, 31), Vector2(1, 1)]],
		1 : [[Vector2(9, 1), Vector2(5, 14)], [Vector2(4, 2), Vector2(2, 2)], [Vector2(7, 2), Vector2(2, 14)], [Vector2(14, 2), Vector2(1, 18)], [Vector2(6, 3), Vector2(1, 11)], [Vector2(15, 3), Vector2(1, 26)], [Vector2(5, 4), Vector2(1, 5)], [Vector2(16, 7), Vector2(1, 25)], [Vector2(17, 8), Vector2(2, 24)], [Vector2(19, 9), Vector2(2, 23)], [Vector2(21, 10), Vector2(1, 20)], [Vector2(22, 11), Vector2(1, 16)], [Vector2(23, 12), Vector2(1, 13)], [Vector2(24, 13), Vector2(1, 11)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(3, 5)], [Vector2(10, 16), Vector2(1, 5)], [Vector2(25, 16), Vector2(1, 6)], [Vector2(9, 17), Vector2(1, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 20), Vector2(1, 1)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(14, 23), Vector2(1, 5)], [Vector2(15, 31), Vector2(1, 1)]],
		2 : [[Vector2(10, 0), Vector2(5, 19)], [Vector2(5, 1), Vector2(2, 2)], [Vector2(8, 1), Vector2(2, 19)], [Vector2(15, 1), Vector2(1, 27)], [Vector2(7, 2), Vector2(1, 20)], [Vector2(16, 2), Vector2(1, 25)], [Vector2(6, 3), Vector2(1, 7)], [Vector2(17, 7), Vector2(2, 20)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(6, 13), Vector2(1, 1)], [Vector2(24, 13), Vector2(1, 11)], [Vector2(25, 16), Vector2(1, 6)], [Vector2(6, 17), Vector2(1, 5)], [Vector2(5, 18), Vector2(1, 3)], [Vector2(10, 19), Vector2(2, 1)], [Vector2(8, 20), Vector2(1, 1)], [Vector2(14, 21), Vector2(1, 8)], [Vector2(13, 22), Vector2(1, 8)], [Vector2(12, 25), Vector2(1, 6)], [Vector2(18, 27), Vector2(1, 2)], [Vector2(10, 28), Vector2(2, 1)], [Vector2(11, 29), Vector2(1, 1)], [Vector2(24, 29), Vector2(1, 3)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(19, 31), Vector2(1, 1)]],
		3 : [[Vector2(9, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(2, 2)], [Vector2(7, 3), Vector2(2, 12)], [Vector2(14, 3), Vector2(1, 18)], [Vector2(6, 4), Vector2(1, 9)], [Vector2(15, 4), Vector2(1, 28)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(16, 8), Vector2(1, 24)], [Vector2(17, 9), Vector2(3, 19)], [Vector2(20, 10), Vector2(2, 22)], [Vector2(22, 11), Vector2(1, 21)], [Vector2(23, 12), Vector2(1, 20)], [Vector2(24, 14), Vector2(1, 11)], [Vector2(11, 15), Vector2(3, 6)], [Vector2(9, 17), Vector2(2, 5)], [Vector2(25, 17), Vector2(1, 6)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 21), Vector2(1, 1)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(14, 23), Vector2(1, 9)], [Vector2(13, 24), Vector2(1, 8)], [Vector2(12, 26), Vector2(1, 6)], [Vector2(17, 28), Vector2(1, 1)], [Vector2(19, 28), Vector2(1, 2)], [Vector2(24, 28), Vector2(1, 4)], [Vector2(11, 31), Vector2(1, 1)]],
		4 : [[Vector2(9, 1), Vector2(5, 13)], [Vector2(4, 2), Vector2(2, 2)], [Vector2(7, 2), Vector2(2, 13)], [Vector2(14, 2), Vector2(1, 18)], [Vector2(6, 3), Vector2(1, 10)], [Vector2(15, 3), Vector2(1, 26)], [Vector2(5, 4), Vector2(1, 5)], [Vector2(16, 7), Vector2(1, 25)], [Vector2(17, 8), Vector2(3, 24)], [Vector2(20, 9), Vector2(1, 23)], [Vector2(21, 10), Vector2(1, 22)], [Vector2(22, 11), Vector2(1, 15)], [Vector2(23, 12), Vector2(1, 13)], [Vector2(9, 14), Vector2(1, 1)], [Vector2(11, 14), Vector2(3, 6)], [Vector2(24, 14), Vector2(1, 10)], [Vector2(10, 16), Vector2(1, 5)], [Vector2(9, 17), Vector2(1, 5)], [Vector2(25, 17), Vector2(1, 5)], [Vector2(7, 18), Vector2(2, 5)], [Vector2(6, 19), Vector2(1, 5)], [Vector2(5, 20), Vector2(1, 3)], [Vector2(11, 20), Vector2(1, 1)], [Vector2(7, 23), Vector2(1, 1)], [Vector2(14, 23), Vector2(1, 5)], [Vector2(22, 27), Vector2(1, 3)], [Vector2(15, 31), Vector2(1, 1)]],
		5 : [[Vector2(9, 0), Vector2(5, 13)], [Vector2(4, 1), Vector2(2, 2)], [Vector2(7, 1), Vector2(2, 13)], [Vector2(14, 1), Vector2(1, 18)], [Vector2(6, 2), Vector2(1, 10)], [Vector2(15, 2), Vector2(1, 26)], [Vector2(5, 3), Vector2(1, 5)], [Vector2(16, 6), Vector2(1, 21)], [Vector2(17, 7), Vector2(2, 20)], [Vector2(19, 8), Vector2(2, 22)], [Vector2(21, 9), Vector2(1, 23)], [Vector2(22, 10), Vector2(1, 22)], [Vector2(23, 11), Vector2(1, 21)], [Vector2(9, 13), Vector2(1, 1)], [Vector2(11, 13), Vector2(3, 6)], [Vector2(24, 13), Vector2(1, 12)], [Vector2(9, 15), Vector2(2, 5)], [Vector2(7, 16), Vector2(2, 5)], [Vector2(25, 16), Vector2(1, 6)], [Vector2(6, 17), Vector2(1, 5)], [Vector2(5, 18), Vector2(1, 3)], [Vector2(11, 19), Vector2(1, 1)], [Vector2(7, 21), Vector2(1, 1)], [Vector2(14, 21), Vector2(1, 8)], [Vector2(13, 22), Vector2(1, 8)], [Vector2(12, 23), Vector2(1, 7)], [Vector2(10, 26), Vector2(2, 3)], [Vector2(18, 27), Vector2(1, 2)], [Vector2(11, 29), Vector2(1, 1)], [Vector2(24, 29), Vector2(1, 3)], [Vector2(20, 30), Vector2(1, 2)], [Vector2(19, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_walk_l"
	},
	"tomb_lord_walk_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(18, 2), Vector2(5, 13)], [Vector2(17, 3), Vector2(1, 18)], [Vector2(23, 3), Vector2(2, 13)], [Vector2(26, 3), Vector2(2, 2)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(25, 4), Vector2(1, 10)], [Vector2(26, 5), Vector2(1, 5)], [Vector2(15, 6), Vector2(1, 23)], [Vector2(13, 7), Vector2(2, 21)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 12)], [Vector2(18, 15), Vector2(3, 6)], [Vector2(22, 15), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 7)], [Vector2(21, 17), Vector2(2, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(20, 21), Vector2(1, 1)], [Vector2(17, 22), Vector2(1, 10)], [Vector2(18, 23), Vector2(1, 9)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(19, 24), Vector2(1, 8)], [Vector2(20, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(21, 31), Vector2(1, 1)]],
		1 : [[Vector2(18, 1), Vector2(5, 14)], [Vector2(17, 2), Vector2(1, 18)], [Vector2(23, 2), Vector2(2, 14)], [Vector2(26, 2), Vector2(2, 2)], [Vector2(16, 3), Vector2(1, 26)], [Vector2(25, 3), Vector2(1, 11)], [Vector2(26, 4), Vector2(1, 5)], [Vector2(15, 7), Vector2(1, 25)], [Vector2(13, 8), Vector2(2, 24)], [Vector2(11, 9), Vector2(2, 23)], [Vector2(10, 10), Vector2(1, 20)], [Vector2(9, 11), Vector2(1, 16)], [Vector2(8, 12), Vector2(1, 13)], [Vector2(7, 13), Vector2(1, 11)], [Vector2(18, 15), Vector2(3, 5)], [Vector2(22, 15), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 6)], [Vector2(21, 16), Vector2(1, 5)], [Vector2(22, 17), Vector2(1, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(20, 20), Vector2(1, 1)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(17, 23), Vector2(1, 5)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(16, 31), Vector2(1, 1)]],
		2 : [[Vector2(17, 0), Vector2(5, 19)], [Vector2(16, 1), Vector2(1, 27)], [Vector2(22, 1), Vector2(2, 19)], [Vector2(25, 1), Vector2(2, 2)], [Vector2(15, 2), Vector2(1, 25)], [Vector2(24, 2), Vector2(1, 20)], [Vector2(25, 3), Vector2(1, 7)], [Vector2(13, 7), Vector2(2, 20)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 11)], [Vector2(25, 13), Vector2(1, 1)], [Vector2(6, 16), Vector2(1, 6)], [Vector2(25, 17), Vector2(1, 5)], [Vector2(26, 18), Vector2(1, 3)], [Vector2(20, 19), Vector2(2, 1)], [Vector2(23, 20), Vector2(1, 1)], [Vector2(17, 21), Vector2(1, 8)], [Vector2(18, 22), Vector2(1, 8)], [Vector2(19, 25), Vector2(1, 6)], [Vector2(13, 27), Vector2(1, 2)], [Vector2(20, 28), Vector2(2, 1)], [Vector2(7, 29), Vector2(1, 3)], [Vector2(20, 29), Vector2(1, 1)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(12, 31), Vector2(1, 1)]],
		3 : [[Vector2(18, 2), Vector2(5, 13)], [Vector2(17, 3), Vector2(1, 18)], [Vector2(23, 3), Vector2(2, 12)], [Vector2(26, 3), Vector2(2, 2)], [Vector2(16, 4), Vector2(1, 28)], [Vector2(25, 4), Vector2(1, 9)], [Vector2(26, 5), Vector2(1, 5)], [Vector2(15, 8), Vector2(1, 24)], [Vector2(12, 9), Vector2(3, 19)], [Vector2(10, 10), Vector2(2, 22)], [Vector2(9, 11), Vector2(1, 21)], [Vector2(8, 12), Vector2(1, 20)], [Vector2(7, 14), Vector2(1, 11)], [Vector2(18, 15), Vector2(3, 6)], [Vector2(6, 17), Vector2(1, 6)], [Vector2(21, 17), Vector2(2, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(20, 21), Vector2(1, 1)], [Vector2(17, 23), Vector2(1, 9)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(18, 24), Vector2(1, 8)], [Vector2(19, 26), Vector2(1, 6)], [Vector2(7, 28), Vector2(1, 4)], [Vector2(12, 28), Vector2(1, 2)], [Vector2(14, 28), Vector2(1, 1)], [Vector2(20, 31), Vector2(1, 1)]],
		4 : [[Vector2(18, 1), Vector2(5, 13)], [Vector2(17, 2), Vector2(1, 18)], [Vector2(23, 2), Vector2(2, 13)], [Vector2(26, 2), Vector2(2, 2)], [Vector2(16, 3), Vector2(1, 26)], [Vector2(25, 3), Vector2(1, 10)], [Vector2(26, 4), Vector2(1, 5)], [Vector2(15, 7), Vector2(1, 25)], [Vector2(12, 8), Vector2(3, 24)], [Vector2(11, 9), Vector2(1, 23)], [Vector2(10, 10), Vector2(1, 22)], [Vector2(9, 11), Vector2(1, 15)], [Vector2(8, 12), Vector2(1, 13)], [Vector2(7, 14), Vector2(1, 10)], [Vector2(18, 14), Vector2(3, 6)], [Vector2(22, 14), Vector2(1, 1)], [Vector2(21, 16), Vector2(1, 5)], [Vector2(6, 17), Vector2(1, 5)], [Vector2(22, 17), Vector2(1, 5)], [Vector2(23, 18), Vector2(2, 5)], [Vector2(25, 19), Vector2(1, 5)], [Vector2(20, 20), Vector2(1, 1)], [Vector2(26, 20), Vector2(1, 3)], [Vector2(17, 23), Vector2(1, 5)], [Vector2(24, 23), Vector2(1, 1)], [Vector2(9, 27), Vector2(1, 3)], [Vector2(16, 31), Vector2(1, 1)]],
		5 : [[Vector2(18, 0), Vector2(5, 13)], [Vector2(17, 1), Vector2(1, 18)], [Vector2(23, 1), Vector2(2, 13)], [Vector2(26, 1), Vector2(2, 2)], [Vector2(16, 2), Vector2(1, 26)], [Vector2(25, 2), Vector2(1, 10)], [Vector2(26, 3), Vector2(1, 5)], [Vector2(15, 6), Vector2(1, 21)], [Vector2(13, 7), Vector2(2, 20)], [Vector2(11, 8), Vector2(2, 22)], [Vector2(10, 9), Vector2(1, 23)], [Vector2(9, 10), Vector2(1, 22)], [Vector2(8, 11), Vector2(1, 21)], [Vector2(7, 13), Vector2(1, 12)], [Vector2(18, 13), Vector2(3, 6)], [Vector2(22, 13), Vector2(1, 1)], [Vector2(21, 15), Vector2(2, 5)], [Vector2(6, 16), Vector2(1, 6)], [Vector2(23, 16), Vector2(2, 5)], [Vector2(25, 17), Vector2(1, 5)], [Vector2(26, 18), Vector2(1, 3)], [Vector2(20, 19), Vector2(1, 1)], [Vector2(17, 21), Vector2(1, 8)], [Vector2(24, 21), Vector2(1, 1)], [Vector2(18, 22), Vector2(1, 8)], [Vector2(19, 23), Vector2(1, 7)], [Vector2(20, 26), Vector2(2, 3)], [Vector2(13, 27), Vector2(1, 2)], [Vector2(7, 29), Vector2(1, 3)], [Vector2(20, 29), Vector2(1, 1)], [Vector2(11, 30), Vector2(1, 2)], [Vector2(12, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/enemies/tomb_lord/tomb_lord_walk_r"
	},
	"vampire_bat_hang" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_bat_hang"
	},
	"vampire_bat_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_bat_left"
	},
	"vampire_bat_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_bat_right"
	},
	"vampire_bounce_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_bounce_l"
	},
	"vampire_dead_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 9), Vector2(16, 7)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_dead_l"
	},
	"vampire_d_held_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_d_held_l"
	},
	"vampire_die_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_die_ll"
	},
	"vampire_die_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(15, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_die_lr"
	},
	"vampire_fall_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_fall_l"
	},
	"vampire_held_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_held_l"
	},
	"vampire_jump_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_jump_l"
	},
	"vampire_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_left"
	},
	"vampire_run_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_run_l"
	},
	"vampire_stun_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/vampire/vampire_stun_l"
	},
	"yeti_bounce_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 14)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_bounce_l"
	},
	"yeti_dead_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(2, 7), Vector2(20, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_dead_l"
	},
	"yeti_d_held_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(4, 3), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_d_held_l"
	},
	"yeti_die_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_die_ll"
	},
	"yeti_die_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_die_lr"
	},
	"yeti_fall_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_fall_l"
	},
	"yeti_held_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(4, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_held_l"
	},
	"yeti_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_left"
	},
	"yeti_run_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_run_left"
	},
	"yeti_stun_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(20, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_stun_l"
	},
	"yeti_throw_l" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : [Vector2(4, 0), Vector2(20, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti/yeti_throw_l"
	},
	"yeti_king_disp" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_disp"
	},
	"yeti_king_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_left"
	},
	"yeti_king_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_right"
	},
	"yeti_king_turn_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(32, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_turn_l"
	},
	"yeti_king_turn_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(32, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_turn_r"
	},
	"yeti_king_walk_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_walk_l"
	},
	"yeti_king_walk_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_walk_r"
	},
	"yeti_king_yell_l" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_yell_l"
	},
	"yeti_king_yell_r" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(31, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/enemies/yeti_king/yeti_king_yell_r"
	},
	"arrow_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(4, 4)], [Vector2(8, 1), Vector2(1, 9)], [Vector2(7, 2), Vector2(1, 13)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(9, 4), Vector2(3, 3)], [Vector2(6, 6), Vector2(1, 10)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(5, 8), Vector2(1, 8)], [Vector2(3, 10), Vector2(2, 5)], [Vector2(2, 11), Vector2(1, 4)], [Vector2(1, 12), Vector2(1, 2)], [Vector2(4, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/arrow_icon"
	},
	"bomb_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 14)], [Vector2(12, 1), Vector2(1, 12)], [Vector2(4, 2), Vector2(2, 12)], [Vector2(10, 2), Vector2(2, 12)], [Vector2(13, 2), Vector2(1, 10)], [Vector2(3, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/bomb_icon"
	},
	"cape_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 0), Vector2(7, 4)], [Vector2(7, 1), Vector2(1, 13)], [Vector2(15, 1), Vector2(1, 2)], [Vector2(6, 2), Vector2(1, 12)], [Vector2(5, 3), Vector2(1, 11)], [Vector2(4, 4), Vector2(1, 11)], [Vector2(8, 4), Vector2(6, 4)], [Vector2(3, 5), Vector2(1, 10)], [Vector2(2, 7), Vector2(1, 9)], [Vector2(8, 8), Vector2(5, 6)], [Vector2(1, 10), Vector2(1, 5)], [Vector2(9, 14), Vector2(4, 1)], [Vector2(11, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/cape_icon"
	},
	"compass_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 0), Vector2(4, 16)], [Vector2(4, 1), Vector2(2, 14)], [Vector2(10, 1), Vector2(2, 14)], [Vector2(3, 2), Vector2(1, 13)], [Vector2(12, 2), Vector2(1, 13)], [Vector2(2, 3), Vector2(1, 11)], [Vector2(13, 3), Vector2(1, 11)], [Vector2(14, 4), Vector2(1, 9)], [Vector2(1, 5), Vector2(1, 8)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(10, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/compass_icon"
	},
	"damsel_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(9, 16)], [Vector2(2, 1), Vector2(1, 15)], [Vector2(12, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 13)], [Vector2(13, 2), Vector2(1, 13)], [Vector2(14, 7), Vector2(1, 7)], [Vector2(0, 9), Vector2(1, 5)], [Vector2(15, 9), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/damsel_icon"
	},
	"death_mask" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 0), Vector2(6, 14)], [Vector2(4, 1), Vector2(1, 12)], [Vector2(11, 1), Vector2(1, 12)], [Vector2(3, 2), Vector2(1, 10)], [Vector2(12, 2), Vector2(1, 10)], [Vector2(2, 3), Vector2(1, 7)], [Vector2(13, 3), Vector2(1, 7)], [Vector2(6, 14), Vector2(4, 1)], [Vector2(7, 15), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/death_mask"
	},
	"dollar_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 1), Vector2(7, 15)], [Vector2(4, 2), Vector2(1, 13)], [Vector2(12, 2), Vector2(3, 5)], [Vector2(3, 3), Vector2(1, 12)], [Vector2(2, 4), Vector2(1, 5)], [Vector2(12, 7), Vector2(2, 7)], [Vector2(14, 8), Vector2(1, 5)], [Vector2(2, 10), Vector2(1, 5)], [Vector2(12, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/dollar_sign"
	},
	"gloves_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(4, 12)], [Vector2(2, 1), Vector2(2, 12)], [Vector2(8, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 6)], [Vector2(9, 2), Vector2(1, 14)], [Vector2(0, 3), Vector2(1, 4)], [Vector2(10, 3), Vector2(2, 12)], [Vector2(12, 4), Vector2(1, 10)], [Vector2(13, 5), Vector2(1, 8)], [Vector2(14, 6), Vector2(1, 6)], [Vector2(1, 9), Vector2(1, 3)], [Vector2(6, 12), Vector2(2, 3)], [Vector2(7, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/gloves_icon"
	},
	"heart" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 1), Vector2(3, 10)], [Vector2(9, 1), Vector2(3, 10)], [Vector2(3, 2), Vector2(1, 8)], [Vector2(7, 2), Vector2(2, 12)], [Vector2(12, 2), Vector2(1, 8)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(13, 3), Vector2(1, 6)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(14, 4), Vector2(1, 4)], [Vector2(5, 11), Vector2(2, 1)], [Vector2(9, 11), Vector2(2, 1)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(9, 12), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/heart"
	},
	"hint_point" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(9, 10)], [Vector2(3, 2), Vector2(1, 8)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(13, 3), Vector2(1, 6)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(4, 10), Vector2(8, 1)], [Vector2(4, 11), Vector2(4, 2)], [Vector2(5, 13), Vector2(2, 1)]],
		1 : [[Vector2(4, 0), Vector2(9, 10)], [Vector2(3, 2), Vector2(1, 8)], [Vector2(2, 3), Vector2(1, 6)], [Vector2(13, 3), Vector2(1, 6)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(4, 10), Vector2(8, 1)], [Vector2(4, 11), Vector2(4, 2)], [Vector2(5, 13), Vector2(2, 1)]],
		2 : [[Vector2(4, 1), Vector2(9, 10)], [Vector2(3, 3), Vector2(1, 8)], [Vector2(2, 4), Vector2(1, 6)], [Vector2(13, 4), Vector2(1, 6)], [Vector2(1, 5), Vector2(1, 4)], [Vector2(4, 11), Vector2(8, 1)], [Vector2(4, 12), Vector2(4, 2)], [Vector2(5, 14), Vector2(2, 1)]],
		3 : [[Vector2(4, 2), Vector2(9, 10)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(2, 5), Vector2(1, 6)], [Vector2(13, 5), Vector2(1, 6)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(4, 12), Vector2(8, 1)], [Vector2(4, 13), Vector2(4, 2)], [Vector2(5, 15), Vector2(2, 1)]],
		4 : [[Vector2(4, 2), Vector2(9, 10)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(2, 5), Vector2(1, 6)], [Vector2(13, 5), Vector2(1, 6)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(4, 12), Vector2(8, 1)], [Vector2(4, 13), Vector2(4, 2)], [Vector2(5, 15), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/hud/hint_point"
	},
	"hold_item_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(5, 16)], [Vector2(9, 0), Vector2(5, 16)], [Vector2(1, 1), Vector2(1, 15)], [Vector2(7, 1), Vector2(2, 14)], [Vector2(14, 1), Vector2(1, 15)], [Vector2(0, 2), Vector2(1, 13)], [Vector2(15, 2), Vector2(1, 13)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/hold_item_icon"
	},
	"hoops_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 0), Vector2(4, 16)], [Vector2(4, 1), Vector2(2, 14)], [Vector2(10, 1), Vector2(2, 14)], [Vector2(3, 2), Vector2(1, 12)], [Vector2(12, 2), Vector2(1, 12)], [Vector2(2, 3), Vector2(1, 10)], [Vector2(13, 3), Vector2(1, 10)], [Vector2(1, 5), Vector2(1, 6)], [Vector2(14, 5), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/hoops_icon"
	},
	"jetpack_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(3, 13)], [Vector2(3, 1), Vector2(1, 11)], [Vector2(7, 1), Vector2(2, 15)], [Vector2(2, 2), Vector2(1, 9)], [Vector2(9, 2), Vector2(1, 14)], [Vector2(1, 3), Vector2(1, 7)], [Vector2(10, 3), Vector2(1, 13)], [Vector2(0, 4), Vector2(1, 3)], [Vector2(11, 4), Vector2(1, 12)], [Vector2(12, 5), Vector2(1, 10)], [Vector2(13, 6), Vector2(1, 8)], [Vector2(14, 7), Vector2(1, 6)], [Vector2(15, 8), Vector2(1, 4)], [Vector2(5, 13), Vector2(2, 1)], [Vector2(6, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/jetpack_icon"
	},
	"kapala_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(10, 16)], [Vector2(2, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 12)], [Vector2(14, 2), Vector2(1, 12)], [Vector2(0, 3), Vector2(1, 10)], [Vector2(15, 3), Vector2(1, 10)]],
		1 : [[Vector2(3, 0), Vector2(10, 16)], [Vector2(2, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 12)], [Vector2(14, 2), Vector2(1, 12)], [Vector2(0, 3), Vector2(1, 10)], [Vector2(15, 3), Vector2(1, 10)]],
		2 : [[Vector2(3, 0), Vector2(10, 16)], [Vector2(2, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 12)], [Vector2(14, 2), Vector2(1, 12)], [Vector2(0, 3), Vector2(1, 10)], [Vector2(15, 3), Vector2(1, 10)]],
		3 : [[Vector2(3, 0), Vector2(10, 16)], [Vector2(2, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 12)], [Vector2(14, 2), Vector2(1, 12)], [Vector2(0, 3), Vector2(1, 10)], [Vector2(15, 3), Vector2(1, 10)]],
		4 : [[Vector2(3, 0), Vector2(10, 16)], [Vector2(2, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 12)], [Vector2(14, 2), Vector2(1, 12)], [Vector2(0, 3), Vector2(1, 10)], [Vector2(15, 3), Vector2(1, 10)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/hud/kapala_icon"
	},
	"mitt_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 0), Vector2(8, 16)], [Vector2(3, 1), Vector2(2, 14)], [Vector2(13, 1), Vector2(1, 15)], [Vector2(2, 2), Vector2(1, 13)], [Vector2(14, 2), Vector2(1, 14)], [Vector2(1, 4), Vector2(1, 10)], [Vector2(15, 4), Vector2(1, 11)], [Vector2(0, 9), Vector2(1, 4)], [Vector2(4, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/mitt_icon"
	},
	"parachute_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 0), Vector2(4, 16)], [Vector2(3, 1), Vector2(2, 14)], [Vector2(9, 1), Vector2(2, 15)], [Vector2(2, 2), Vector2(1, 12)], [Vector2(11, 2), Vector2(1, 14)], [Vector2(1, 3), Vector2(1, 10)], [Vector2(12, 3), Vector2(1, 13)], [Vector2(0, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(1, 11)], [Vector2(14, 5), Vector2(1, 9)], [Vector2(15, 6), Vector2(1, 7)], [Vector2(4, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/parachute_icon"
	},
	"rope_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 0), Vector2(5, 3)], [Vector2(5, 1), Vector2(1, 3)], [Vector2(11, 1), Vector2(1, 3)], [Vector2(4, 2), Vector2(1, 2)], [Vector2(12, 2), Vector2(1, 2)], [Vector2(7, 3), Vector2(3, 12)], [Vector2(3, 5), Vector2(4, 10)], [Vector2(10, 5), Vector2(1, 10)], [Vector2(2, 6), Vector2(1, 9)], [Vector2(11, 6), Vector2(1, 9)], [Vector2(1, 7), Vector2(1, 7)], [Vector2(12, 7), Vector2(1, 8)], [Vector2(13, 8), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/rope_icon"
	},
	"shopkeeper_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(10, 14)], [Vector2(3, 1), Vector2(1, 15)], [Vector2(14, 1), Vector2(1, 12)], [Vector2(2, 2), Vector2(1, 13)], [Vector2(1, 4), Vector2(1, 10)], [Vector2(4, 14), Vector2(9, 1)], [Vector2(4, 15), Vector2(8, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/shopkeeper_icon"
	},
	"spectacles_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 1), Vector2(2, 3)], [Vector2(4, 2), Vector2(1, 3)], [Vector2(7, 2), Vector2(1, 3)], [Vector2(3, 3), Vector2(1, 9)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(2, 3)], [Vector2(1, 5), Vector2(1, 7)], [Vector2(12, 5), Vector2(1, 3)], [Vector2(15, 5), Vector2(1, 3)], [Vector2(11, 6), Vector2(1, 6)], [Vector2(0, 7), Vector2(1, 4)], [Vector2(4, 7), Vector2(2, 4)], [Vector2(10, 7), Vector2(1, 6)], [Vector2(6, 8), Vector2(4, 5)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(7, 13), Vector2(3, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/spectacles_icon"
	},
	"spike_shoes_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(3, 14)], [Vector2(2, 1), Vector2(2, 10)], [Vector2(7, 1), Vector2(1, 15)], [Vector2(10, 1), Vector2(3, 12)], [Vector2(1, 2), Vector2(1, 7)], [Vector2(8, 2), Vector2(2, 14)], [Vector2(13, 2), Vector2(2, 9)], [Vector2(15, 3), Vector2(1, 7)], [Vector2(0, 5), Vector2(1, 3)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(13, 11), Vector2(1, 1)], [Vector2(10, 13), Vector2(2, 1)], [Vector2(5, 14), Vector2(2, 1)], [Vector2(10, 14), Vector2(1, 1)], [Vector2(6, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/spike_shoes_icon"
	},
	"spring_shoes_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(7, 15)], [Vector2(2, 1), Vector2(1, 13)], [Vector2(10, 1), Vector2(1, 15)], [Vector2(1, 2), Vector2(1, 11)], [Vector2(11, 2), Vector2(1, 14)], [Vector2(12, 7), Vector2(1, 9)], [Vector2(13, 8), Vector2(1, 7)], [Vector2(14, 10), Vector2(1, 4)], [Vector2(4, 15), Vector2(6, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/spring_shoes_icon"
	},
	"sticky_bomb_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 1), Vector2(7, 13)], [Vector2(12, 1), Vector2(1, 12)], [Vector2(3, 2), Vector2(1, 11)], [Vector2(11, 2), Vector2(1, 12)], [Vector2(13, 2), Vector2(1, 10)], [Vector2(2, 3), Vector2(1, 9)], [Vector2(1, 5), Vector2(1, 6)], [Vector2(14, 5), Vector2(1, 5)], [Vector2(0, 6), Vector2(1, 4)], [Vector2(6, 14), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/sticky_bomb_icon"
	},
	"timer_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 14)], [Vector2(4, 2), Vector2(2, 12)], [Vector2(10, 2), Vector2(2, 12)], [Vector2(3, 3), Vector2(1, 10)], [Vector2(12, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 8)], [Vector2(13, 4), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/hud/timer_icon"
	},
	"bombs_get" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(4, 10)], [Vector2(10, 3), Vector2(2, 10)], [Vector2(13, 3), Vector2(3, 10)], [Vector2(17, 3), Vector2(5, 10)], [Vector2(7, 4), Vector2(1, 8)], [Vector2(9, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(16, 4), Vector2(1, 9)], [Vector2(22, 4), Vector2(1, 8)], [Vector2(8, 5), Vector2(1, 6)], [Vector2(23, 5), Vector2(1, 2)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(23, 8), Vector2(1, 3)]],
		1 : [[Vector2(3, 3), Vector2(4, 10)], [Vector2(10, 3), Vector2(2, 10)], [Vector2(13, 3), Vector2(3, 10)], [Vector2(17, 3), Vector2(5, 10)], [Vector2(7, 4), Vector2(1, 8)], [Vector2(9, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(16, 4), Vector2(1, 9)], [Vector2(22, 4), Vector2(1, 8)], [Vector2(8, 5), Vector2(1, 6)], [Vector2(23, 5), Vector2(1, 2)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(23, 8), Vector2(1, 3)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/other/bombs_get"
	},
	"bones_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 11), Vector2(15, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/bones_left"
	},
	"chest" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 8), Vector2(10, 8)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/chest"
	},
	"chest_open" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 7), Vector2(8, 9)], [Vector2(1, 8), Vector2(1, 4)], [Vector2(10, 12), Vector2(4, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/chest_open"
	},
	"crate" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/crate"
	},
	"crate_open" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 6), Vector2(12, 10)], [Vector2(2, 12), Vector2(1, 4)], [Vector2(1, 13), Vector2(1, 3)], [Vector2(0, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/crate_open"
	},
	"dice1" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/dice1"
	},
	"dice2" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/dice2"
	},
	"dice3" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/dice3"
	},
	"dice4" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/dice4"
	},
	"dice5" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/dice5"
	},
	"dice6" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/dice6"
	},
	"dice_roll" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 6), Vector2(12, 10)]],
		1 : [[Vector2(3, 4), Vector2(5, 10)], [Vector2(8, 5), Vector2(4, 10)], [Vector2(2, 6), Vector2(1, 7)], [Vector2(12, 6), Vector2(2, 7)], [Vector2(14, 7), Vector2(1, 3)], [Vector2(1, 9), Vector2(1, 4)], [Vector2(12, 13), Vector2(1, 3)], [Vector2(6, 14), Vector2(2, 1)], [Vector2(10, 15), Vector2(2, 1)]],
		2 : [[Vector2(6, 1), Vector2(3, 14)], [Vector2(5, 2), Vector2(1, 13)], [Vector2(9, 2), Vector2(2, 12)], [Vector2(4, 3), Vector2(1, 11)], [Vector2(11, 3), Vector2(2, 9)], [Vector2(3, 4), Vector2(1, 10)], [Vector2(13, 4), Vector2(1, 7)], [Vector2(2, 5), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 7)], [Vector2(11, 12), Vector2(1, 1)], [Vector2(9, 14), Vector2(1, 1)], [Vector2(7, 15), Vector2(2, 1)]],
		3 : [[Vector2(7, 2), Vector2(3, 14)], [Vector2(6, 3), Vector2(1, 12)], [Vector2(10, 3), Vector2(1, 12)], [Vector2(5, 4), Vector2(1, 10)], [Vector2(11, 4), Vector2(1, 10)], [Vector2(4, 5), Vector2(1, 9)], [Vector2(12, 5), Vector2(1, 8)], [Vector2(3, 6), Vector2(1, 7)], [Vector2(13, 6), Vector2(1, 6)], [Vector2(2, 7), Vector2(1, 5)], [Vector2(14, 7), Vector2(1, 2)]],
		4 : [[Vector2(8, 2), Vector2(2, 14)], [Vector2(6, 3), Vector2(2, 12)], [Vector2(10, 3), Vector2(1, 12)], [Vector2(4, 4), Vector2(2, 9)], [Vector2(11, 4), Vector2(1, 11)], [Vector2(2, 5), Vector2(2, 6)], [Vector2(12, 5), Vector2(1, 9)], [Vector2(13, 6), Vector2(1, 8)], [Vector2(14, 7), Vector2(1, 6)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)]],
		5 : [[Vector2(3, 5), Vector2(7, 10)], [Vector2(10, 6), Vector2(4, 3)], [Vector2(2, 8), Vector2(1, 6)], [Vector2(10, 9), Vector2(3, 4)], [Vector2(1, 11), Vector2(1, 3)], [Vector2(10, 13), Vector2(2, 3)], [Vector2(8, 15), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/other/dice_roll"
	},
	"fake_bones_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 9), Vector2(5, 7)], [Vector2(8, 10), Vector2(1, 6)], [Vector2(14, 10), Vector2(1, 6)], [Vector2(7, 11), Vector2(1, 3)], [Vector2(4, 12), Vector2(1, 4)], [Vector2(15, 12), Vector2(1, 4)], [Vector2(3, 13), Vector2(1, 3)], [Vector2(5, 13), Vector2(1, 3)], [Vector2(2, 14), Vector2(1, 2)], [Vector2(6, 14), Vector2(1, 2)], [Vector2(1, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/fake_bones_left"
	},
	"flare_crate" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 2), Vector2(2, 14)], [Vector2(5, 3), Vector2(2, 13)], [Vector2(9, 3), Vector2(2, 13)], [Vector2(3, 5), Vector2(2, 11)], [Vector2(11, 5), Vector2(1, 11)], [Vector2(1, 6), Vector2(2, 10)], [Vector2(12, 6), Vector2(1, 10)], [Vector2(13, 7), Vector2(1, 9)], [Vector2(14, 8), Vector2(1, 8)]],
		1 : [[Vector2(5, 2), Vector2(4, 14)], [Vector2(4, 3), Vector2(1, 13)], [Vector2(9, 3), Vector2(1, 13)], [Vector2(3, 4), Vector2(1, 12)], [Vector2(10, 4), Vector2(2, 12)], [Vector2(12, 5), Vector2(1, 11)], [Vector2(2, 6), Vector2(1, 10)], [Vector2(13, 6), Vector2(1, 10)], [Vector2(1, 7), Vector2(1, 9)], [Vector2(14, 7), Vector2(1, 9)]],
		2 : [[Vector2(3, 4), Vector2(6, 12)], [Vector2(2, 5), Vector2(1, 11)], [Vector2(9, 5), Vector2(3, 11)], [Vector2(1, 6), Vector2(1, 10)], [Vector2(12, 6), Vector2(1, 10)], [Vector2(13, 7), Vector2(1, 9)], [Vector2(14, 8), Vector2(1, 8)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/other/flare_crate"
	},
	"item_get" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(15, 10)], [Vector2(21, 3), Vector2(2, 10)], [Vector2(18, 4), Vector2(1, 9)], [Vector2(20, 4), Vector2(1, 9)], [Vector2(19, 5), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(2, 7), Vector2(1, 3)]],
		1 : [[Vector2(3, 3), Vector2(15, 10)], [Vector2(21, 3), Vector2(2, 10)], [Vector2(18, 4), Vector2(1, 9)], [Vector2(20, 4), Vector2(1, 9)], [Vector2(19, 5), Vector2(1, 8)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(2, 7), Vector2(1, 3)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/other/item_get"
	},
	"locked_chest" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 6), Vector2(12, 10)], [Vector2(1, 7), Vector2(1, 9)], [Vector2(14, 7), Vector2(1, 9)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/locked_chest"
	},
	"locked_chest_open" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 5), Vector2(11, 11)], [Vector2(15, 6), Vector2(1, 5)], [Vector2(1, 11), Vector2(3, 5)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/locked_chest_open"
	},
	"para_used" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 10), Vector2(6, 6)], [Vector2(1, 11), Vector2(2, 5)], [Vector2(9, 11), Vector2(6, 5)], [Vector2(0, 12), Vector2(1, 3)], [Vector2(15, 12), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/para_used"
	},
	"red_arrow_down" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 3), Vector2(3, 5)], [Vector2(5, 3), Vector2(3, 3)], [Vector2(9, 3), Vector2(1, 12)], [Vector2(13, 3), Vector2(1, 7)], [Vector2(3, 4), Vector2(1, 1)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(5, 6), Vector2(1, 8)], [Vector2(7, 6), Vector2(1, 10)], [Vector2(6, 7), Vector2(1, 8)], [Vector2(10, 7), Vector2(2, 6)], [Vector2(14, 7), Vector2(2, 3)], [Vector2(0, 9), Vector2(1, 1)], [Vector2(4, 9), Vector2(1, 4)], [Vector2(8, 9), Vector2(1, 7)], [Vector2(10, 13), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/other/red_arrow_down"
	},
	"rope_get" : {
		"origin" : Vector2(4, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(4, 10)], [Vector2(10, 3), Vector2(2, 10)], [Vector2(13, 3), Vector2(4, 10)], [Vector2(18, 3), Vector2(5, 2)], [Vector2(7, 4), Vector2(1, 9)], [Vector2(9, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(17, 4), Vector2(1, 4)], [Vector2(8, 5), Vector2(1, 8)], [Vector2(18, 5), Vector2(4, 8)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(22, 7), Vector2(1, 1)], [Vector2(22, 11), Vector2(1, 2)]],
		1 : [[Vector2(3, 3), Vector2(4, 10)], [Vector2(10, 3), Vector2(2, 10)], [Vector2(13, 3), Vector2(4, 10)], [Vector2(18, 3), Vector2(5, 2)], [Vector2(7, 4), Vector2(1, 9)], [Vector2(9, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(17, 4), Vector2(1, 4)], [Vector2(8, 5), Vector2(1, 8)], [Vector2(18, 5), Vector2(4, 8)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(22, 7), Vector2(1, 1)], [Vector2(22, 11), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/other/rope_get"
	},
	"ankh" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 3)], [Vector2(5, 2), Vector2(1, 8)], [Vector2(10, 2), Vector2(1, 8)], [Vector2(4, 3), Vector2(1, 3)], [Vector2(11, 3), Vector2(1, 3)], [Vector2(6, 4), Vector2(1, 12)], [Vector2(9, 4), Vector2(1, 12)], [Vector2(1, 6), Vector2(3, 5)], [Vector2(7, 6), Vector2(2, 10)], [Vector2(12, 6), Vector2(3, 5)], [Vector2(4, 7), Vector2(1, 3)], [Vector2(11, 7), Vector2(1, 3)], [Vector2(5, 12), Vector2(1, 4)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(4, 14), Vector2(1, 2)], [Vector2(11, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/ankh"
	},
	"ankh_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 0), Vector2(5, 4)], [Vector2(5, 1), Vector2(1, 15)], [Vector2(4, 2), Vector2(1, 11)], [Vector2(11, 2), Vector2(3, 6)], [Vector2(6, 4), Vector2(1, 12)], [Vector2(9, 4), Vector2(2, 11)], [Vector2(7, 6), Vector2(2, 10)], [Vector2(1, 8), Vector2(3, 3)], [Vector2(11, 8), Vector2(1, 1)], [Vector2(11, 10), Vector2(1, 5)], [Vector2(2, 11), Vector2(2, 2)], [Vector2(9, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/ankh_icon"
	},
	"bomb_bag" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 0), Vector2(4, 12)], [Vector2(5, 1), Vector2(1, 2)], [Vector2(10, 1), Vector2(1, 2)], [Vector2(5, 4), Vector2(1, 8)], [Vector2(10, 4), Vector2(1, 8)], [Vector2(4, 5), Vector2(1, 7)], [Vector2(11, 5), Vector2(1, 7)], [Vector2(3, 6), Vector2(1, 6)], [Vector2(12, 6), Vector2(1, 6)], [Vector2(2, 7), Vector2(1, 4)], [Vector2(13, 7), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/bomb_bag"
	},
	"bomb_box" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 5), Vector2(14, 11)]],
		1 : [[Vector2(1, 5), Vector2(14, 11)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/bomb_box"
	},
	"bow_disp" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 2), Vector2(2, 3)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 9)], [Vector2(10, 4), Vector2(1, 2)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(8, 5), Vector2(1, 8)], [Vector2(4, 6), Vector2(1, 3)], [Vector2(7, 6), Vector2(1, 3)], [Vector2(5, 9), Vector2(1, 1)], [Vector2(10, 9), Vector2(1, 2)], [Vector2(6, 10), Vector2(2, 2)], [Vector2(7, 12), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/bow_disp"
	},
	"bow_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 2), Vector2(2, 3)], [Vector2(4, 3), Vector2(1, 9)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(3, 4), Vector2(1, 2)], [Vector2(5, 5), Vector2(1, 8)], [Vector2(8, 5), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 3)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(3, 9), Vector2(1, 2)], [Vector2(8, 9), Vector2(1, 1)], [Vector2(6, 10), Vector2(2, 2)], [Vector2(6, 12), Vector2(1, 1)]],
		1 : [[Vector2(5, 2), Vector2(2, 3)], [Vector2(4, 3), Vector2(1, 9)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(3, 4), Vector2(1, 2)], [Vector2(5, 5), Vector2(1, 8)], [Vector2(8, 5), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 3)], [Vector2(9, 6), Vector2(1, 1)], [Vector2(10, 7), Vector2(1, 1)], [Vector2(9, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(1, 2)], [Vector2(8, 9), Vector2(1, 1)], [Vector2(6, 10), Vector2(2, 2)], [Vector2(6, 12), Vector2(1, 1)]],
		2 : [[Vector2(6, 2), Vector2(2, 3)], [Vector2(5, 3), Vector2(1, 9)], [Vector2(8, 3), Vector2(1, 2)], [Vector2(4, 4), Vector2(1, 7)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(2, 1)], [Vector2(6, 6), Vector2(1, 3)], [Vector2(11, 6), Vector2(1, 1)], [Vector2(12, 7), Vector2(1, 1)], [Vector2(11, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(1, 1)], [Vector2(9, 9), Vector2(2, 1)], [Vector2(6, 10), Vector2(3, 2)], [Vector2(6, 12), Vector2(2, 1)]],
		3 : [[Vector2(7, 2), Vector2(2, 3)], [Vector2(6, 3), Vector2(1, 9)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 4), Vector2(1, 7)], [Vector2(4, 5), Vector2(1, 5)], [Vector2(10, 5), Vector2(2, 1)], [Vector2(12, 6), Vector2(2, 1)], [Vector2(14, 7), Vector2(1, 1)], [Vector2(12, 8), Vector2(2, 1)], [Vector2(10, 9), Vector2(2, 1)], [Vector2(7, 10), Vector2(3, 2)], [Vector2(7, 12), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/bow_left"
	},
	"bow_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 2), Vector2(2, 3)], [Vector2(8, 3), Vector2(1, 2)], [Vector2(11, 3), Vector2(1, 9)], [Vector2(12, 4), Vector2(1, 2)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(10, 5), Vector2(1, 8)], [Vector2(6, 6), Vector2(1, 3)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(7, 9), Vector2(1, 1)], [Vector2(12, 9), Vector2(1, 2)], [Vector2(8, 10), Vector2(2, 2)], [Vector2(9, 12), Vector2(1, 1)]],
		1 : [[Vector2(9, 2), Vector2(2, 3)], [Vector2(8, 3), Vector2(1, 2)], [Vector2(11, 3), Vector2(1, 9)], [Vector2(12, 4), Vector2(1, 2)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(10, 5), Vector2(1, 8)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)], [Vector2(7, 9), Vector2(1, 1)], [Vector2(12, 9), Vector2(1, 2)], [Vector2(8, 10), Vector2(2, 2)], [Vector2(9, 12), Vector2(1, 1)]],
		2 : [[Vector2(8, 2), Vector2(2, 3)], [Vector2(7, 3), Vector2(1, 2)], [Vector2(10, 3), Vector2(1, 9)], [Vector2(11, 4), Vector2(1, 7)], [Vector2(5, 5), Vector2(2, 1)], [Vector2(12, 5), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(5, 9), Vector2(2, 1)], [Vector2(12, 9), Vector2(1, 1)], [Vector2(7, 10), Vector2(3, 2)], [Vector2(8, 12), Vector2(2, 1)]],
		3 : [[Vector2(7, 2), Vector2(2, 3)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 9)], [Vector2(10, 4), Vector2(1, 7)], [Vector2(4, 5), Vector2(2, 1)], [Vector2(11, 5), Vector2(1, 5)], [Vector2(2, 6), Vector2(2, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(2, 8), Vector2(2, 1)], [Vector2(4, 9), Vector2(2, 1)], [Vector2(6, 10), Vector2(3, 2)], [Vector2(7, 12), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/bow_right"
	},
	"cape" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 1)], [Vector2(5, 2), Vector2(2, 12)], [Vector2(9, 2), Vector2(2, 12)], [Vector2(4, 3), Vector2(1, 12)], [Vector2(11, 3), Vector2(1, 12)], [Vector2(7, 4), Vector2(2, 10)], [Vector2(3, 6), Vector2(1, 9)], [Vector2(12, 6), Vector2(1, 9)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)], [Vector2(1, 12), Vector2(1, 4)], [Vector2(14, 12), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/cape"
	},
	"cape_back" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 3), Vector2(2, 11)], [Vector2(9, 3), Vector2(2, 11)], [Vector2(4, 4), Vector2(1, 11)], [Vector2(7, 4), Vector2(2, 10)], [Vector2(11, 4), Vector2(1, 11)], [Vector2(3, 6), Vector2(1, 10)], [Vector2(12, 6), Vector2(1, 10)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)], [Vector2(5, 14), Vector2(1, 1)], [Vector2(10, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/cape_back"
	},
	"cape_dl" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 3), Vector2(7, 2)], [Vector2(10, 4), Vector2(1, 11)], [Vector2(4, 5), Vector2(6, 10)], [Vector2(11, 5), Vector2(1, 10)], [Vector2(12, 7), Vector2(1, 9)], [Vector2(3, 9), Vector2(1, 6)], [Vector2(13, 10), Vector2(1, 5)], [Vector2(4, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/cape_dl"
	},
	"cape_dr" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 3), Vector2(7, 2)], [Vector2(5, 4), Vector2(1, 11)], [Vector2(4, 5), Vector2(1, 10)], [Vector2(6, 5), Vector2(6, 10)], [Vector2(3, 7), Vector2(1, 9)], [Vector2(12, 9), Vector2(1, 6)], [Vector2(2, 10), Vector2(1, 5)], [Vector2(11, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/cape_dr"
	},
	"cape_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 5), Vector2(3, 4)], [Vector2(13, 5), Vector2(2, 4)], [Vector2(1, 6), Vector2(1, 2)], [Vector2(5, 6), Vector2(8, 4)], [Vector2(4, 9), Vector2(1, 1)], [Vector2(13, 9), Vector2(1, 1)], [Vector2(7, 10), Vector2(6, 1)]],
		1 : [[Vector2(13, 4), Vector2(2, 4)], [Vector2(2, 5), Vector2(11, 4)], [Vector2(1, 6), Vector2(1, 2)], [Vector2(13, 8), Vector2(1, 1)], [Vector2(7, 9), Vector2(6, 1)]],
		2 : [[Vector2(13, 3), Vector2(2, 4)], [Vector2(7, 4), Vector2(6, 5)], [Vector2(2, 5), Vector2(5, 4)], [Vector2(1, 6), Vector2(1, 2)], [Vector2(13, 7), Vector2(1, 1)]],
		3 : [[Vector2(7, 3), Vector2(6, 5)], [Vector2(6, 4), Vector2(1, 4)], [Vector2(13, 4), Vector2(1, 5)], [Vector2(2, 5), Vector2(4, 4)], [Vector2(14, 5), Vector2(1, 3)], [Vector2(1, 6), Vector2(1, 2)]],
		4 : [[Vector2(2, 5), Vector2(1, 4)], [Vector2(1, 6), Vector2(1, 2)], [Vector2(3, 6), Vector2(2, 4)], [Vector2(5, 7), Vector2(5, 4)], [Vector2(13, 7), Vector2(2, 4)], [Vector2(10, 8), Vector2(3, 5)], [Vector2(4, 10), Vector2(1, 1)], [Vector2(7, 11), Vector2(3, 1)], [Vector2(13, 11), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/cape_left"
	},
	"cape_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 5), Vector2(2, 4)], [Vector2(11, 5), Vector2(3, 4)], [Vector2(3, 6), Vector2(8, 4)], [Vector2(14, 6), Vector2(1, 2)], [Vector2(2, 9), Vector2(1, 1)], [Vector2(11, 9), Vector2(1, 1)], [Vector2(3, 10), Vector2(6, 1)]],
		1 : [[Vector2(1, 4), Vector2(2, 4)], [Vector2(3, 5), Vector2(11, 4)], [Vector2(14, 6), Vector2(1, 2)], [Vector2(2, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(6, 1)]],
		2 : [[Vector2(1, 3), Vector2(2, 4)], [Vector2(3, 4), Vector2(6, 5)], [Vector2(9, 5), Vector2(5, 4)], [Vector2(14, 6), Vector2(1, 2)], [Vector2(2, 7), Vector2(1, 1)]],
		3 : [[Vector2(3, 3), Vector2(6, 5)], [Vector2(2, 4), Vector2(1, 5)], [Vector2(9, 4), Vector2(1, 4)], [Vector2(1, 5), Vector2(1, 3)], [Vector2(10, 5), Vector2(4, 4)], [Vector2(14, 6), Vector2(1, 2)]],
		4 : [[Vector2(13, 5), Vector2(1, 4)], [Vector2(11, 6), Vector2(2, 4)], [Vector2(14, 6), Vector2(1, 2)], [Vector2(1, 7), Vector2(2, 4)], [Vector2(6, 7), Vector2(5, 4)], [Vector2(3, 8), Vector2(3, 5)], [Vector2(11, 10), Vector2(1, 1)], [Vector2(2, 11), Vector2(1, 1)], [Vector2(6, 11), Vector2(3, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/cape_right"
	},
	"cape_ul" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(1, 9)], [Vector2(12, 0), Vector2(1, 11)], [Vector2(2, 1), Vector2(1, 3)], [Vector2(4, 1), Vector2(1, 14)], [Vector2(11, 1), Vector2(1, 12)], [Vector2(13, 1), Vector2(1, 7)], [Vector2(5, 2), Vector2(6, 12)], [Vector2(3, 13), Vector2(1, 2)], [Vector2(5, 14), Vector2(5, 1)]],
		1 : [[Vector2(5, 0), Vector2(1, 15)], [Vector2(14, 0), Vector2(1, 7)], [Vector2(4, 1), Vector2(1, 14)], [Vector2(6, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 8)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(7, 2), Vector2(6, 8)], [Vector2(7, 10), Vector2(5, 2)], [Vector2(7, 12), Vector2(4, 1)], [Vector2(3, 13), Vector2(1, 2)], [Vector2(7, 13), Vector2(3, 1)], [Vector2(7, 14), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/cape_ul"
	},
	"cape_ur" : {
		"origin" : Vector2(8, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(1, 11)], [Vector2(12, 0), Vector2(1, 9)], [Vector2(2, 1), Vector2(1, 7)], [Vector2(4, 1), Vector2(1, 12)], [Vector2(11, 1), Vector2(1, 14)], [Vector2(13, 1), Vector2(1, 3)], [Vector2(5, 2), Vector2(6, 12)], [Vector2(12, 13), Vector2(1, 2)], [Vector2(6, 14), Vector2(5, 1)]],
		1 : [[Vector2(1, 0), Vector2(1, 7)], [Vector2(10, 0), Vector2(1, 15)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(2, 1), Vector2(1, 8)], [Vector2(9, 1), Vector2(1, 14)], [Vector2(11, 1), Vector2(1, 14)], [Vector2(3, 2), Vector2(6, 8)], [Vector2(4, 10), Vector2(5, 2)], [Vector2(5, 12), Vector2(4, 1)], [Vector2(6, 13), Vector2(3, 1)], [Vector2(12, 13), Vector2(1, 2)], [Vector2(7, 14), Vector2(2, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/cape_ur"
	},
	"compass" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 0), Vector2(6, 12)], [Vector2(4, 1), Vector2(1, 11)], [Vector2(11, 1), Vector2(1, 11)], [Vector2(3, 2), Vector2(1, 9)], [Vector2(12, 2), Vector2(1, 9)], [Vector2(2, 3), Vector2(1, 7)], [Vector2(13, 3), Vector2(1, 7)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass"
	},
	"compass_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(14, 4)], [Vector2(2, 4), Vector2(12, 2)], [Vector2(3, 6), Vector2(10, 2)], [Vector2(4, 8), Vector2(8, 2)], [Vector2(5, 10), Vector2(6, 2)], [Vector2(6, 12), Vector2(4, 2)], [Vector2(7, 14), Vector2(2, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_down"
	},
	"compass_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 0), Vector2(2, 16)], [Vector2(11, 1), Vector2(2, 14)], [Vector2(9, 2), Vector2(2, 12)], [Vector2(7, 3), Vector2(2, 10)], [Vector2(5, 4), Vector2(2, 8)], [Vector2(3, 5), Vector2(2, 6)], [Vector2(1, 6), Vector2(2, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_left"
	},
	"compass_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(1, 15)], [Vector2(8, 1), Vector2(1, 13)], [Vector2(6, 2), Vector2(1, 13)], [Vector2(9, 2), Vector2(1, 12)], [Vector2(10, 3), Vector2(1, 10)], [Vector2(5, 4), Vector2(1, 12)], [Vector2(11, 4), Vector2(1, 9)], [Vector2(12, 5), Vector2(1, 7)], [Vector2(4, 6), Vector2(1, 10)], [Vector2(13, 6), Vector2(1, 6)], [Vector2(14, 7), Vector2(1, 4)], [Vector2(3, 8), Vector2(1, 8)], [Vector2(15, 8), Vector2(1, 3)], [Vector2(2, 10), Vector2(1, 6)], [Vector2(1, 12), Vector2(1, 4)], [Vector2(0, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_ll"
	},
	"compass_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 0), Vector2(1, 15)], [Vector2(7, 1), Vector2(1, 13)], [Vector2(6, 2), Vector2(1, 12)], [Vector2(9, 2), Vector2(1, 13)], [Vector2(5, 3), Vector2(1, 10)], [Vector2(4, 4), Vector2(1, 9)], [Vector2(10, 4), Vector2(1, 12)], [Vector2(3, 5), Vector2(1, 7)], [Vector2(2, 6), Vector2(1, 6)], [Vector2(11, 6), Vector2(1, 10)], [Vector2(1, 7), Vector2(1, 4)], [Vector2(0, 8), Vector2(1, 3)], [Vector2(12, 8), Vector2(1, 8)], [Vector2(13, 10), Vector2(1, 6)], [Vector2(14, 12), Vector2(1, 4)], [Vector2(15, 14), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_lr"
	},
	"compass_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 16)], [Vector2(3, 1), Vector2(2, 14)], [Vector2(5, 2), Vector2(2, 12)], [Vector2(7, 3), Vector2(2, 10)], [Vector2(9, 4), Vector2(2, 8)], [Vector2(11, 5), Vector2(2, 6)], [Vector2(13, 6), Vector2(2, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_right"
	},
	"compass_small_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 10), Vector2(8, 2)], [Vector2(5, 12), Vector2(6, 2)], [Vector2(6, 14), Vector2(4, 1)], [Vector2(7, 15), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_small_down"
	},
	"compass_small_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 4), Vector2(2, 8)], [Vector2(2, 5), Vector2(2, 6)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(0, 7), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_small_left"
	},
	"compass_small_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 8), Vector2(2, 8)], [Vector2(4, 9), Vector2(1, 7)], [Vector2(1, 10), Vector2(1, 6)], [Vector2(5, 10), Vector2(1, 6)], [Vector2(6, 11), Vector2(1, 4)], [Vector2(0, 12), Vector2(1, 3)], [Vector2(7, 12), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_small_ll"
	},
	"compass_small_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(12, 8), Vector2(2, 8)], [Vector2(11, 9), Vector2(1, 7)], [Vector2(10, 10), Vector2(1, 6)], [Vector2(14, 10), Vector2(1, 6)], [Vector2(9, 11), Vector2(1, 4)], [Vector2(8, 12), Vector2(1, 3)], [Vector2(15, 12), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_small_lr"
	},
	"compass_small_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(10, 4), Vector2(2, 8)], [Vector2(12, 5), Vector2(2, 6)], [Vector2(14, 6), Vector2(1, 4)], [Vector2(15, 7), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/compass_small_right"
	},
	"crown" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(2, 15)], [Vector2(6, 1), Vector2(1, 14)], [Vector2(9, 1), Vector2(1, 14)], [Vector2(10, 2), Vector2(1, 13)], [Vector2(5, 3), Vector2(1, 12)], [Vector2(4, 5), Vector2(1, 11)], [Vector2(11, 5), Vector2(1, 11)], [Vector2(3, 6), Vector2(1, 10)], [Vector2(12, 6), Vector2(1, 10)], [Vector2(2, 8), Vector2(1, 4)], [Vector2(13, 8), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/crown"
	},
	"crown_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(2, 5)], [Vector2(1, 1), Vector2(1, 3)], [Vector2(4, 1), Vector2(1, 14)], [Vector2(5, 2), Vector2(3, 14)], [Vector2(11, 2), Vector2(2, 13)], [Vector2(8, 3), Vector2(3, 12)], [Vector2(13, 3), Vector2(1, 13)], [Vector2(14, 4), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 7)], [Vector2(14, 7), Vector2(1, 8)], [Vector2(8, 15), Vector2(1, 1)], [Vector2(12, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/crown_icon"
	},
	"death_mask_pickup" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 0), Vector2(6, 14)], [Vector2(4, 1), Vector2(1, 12)], [Vector2(11, 1), Vector2(1, 12)], [Vector2(3, 2), Vector2(1, 10)], [Vector2(12, 2), Vector2(1, 10)], [Vector2(2, 3), Vector2(1, 7)], [Vector2(13, 3), Vector2(1, 7)], [Vector2(6, 14), Vector2(4, 1)], [Vector2(7, 15), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/death_mask_pickup"
	},
	"death_mask_wear" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(6, 8)], [Vector2(0, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/death_mask_wear"
	},
	"glove" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 1), Vector2(2, 15)], [Vector2(7, 1), Vector2(2, 15)], [Vector2(3, 2), Vector2(1, 12)], [Vector2(6, 2), Vector2(1, 14)], [Vector2(9, 2), Vector2(3, 14)], [Vector2(12, 3), Vector2(1, 13)], [Vector2(13, 4), Vector2(2, 9)], [Vector2(15, 5), Vector2(1, 7)], [Vector2(1, 6), Vector2(2, 6)], [Vector2(0, 7), Vector2(1, 4)], [Vector2(2, 12), Vector2(1, 1)], [Vector2(13, 13), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/glove"
	},
	"jetpack_back" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 3), Vector2(14, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/jetpack_back"
	},
	"jetpack_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 3), Vector2(12, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/jetpack_left"
	},
	"jetpack_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 3), Vector2(12, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/jetpack_right"
	},
	"jordans" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(8, 11)], [Vector2(9, 6), Vector2(2, 6)], [Vector2(11, 7), Vector2(3, 5)], [Vector2(14, 8), Vector2(1, 4)], [Vector2(15, 9), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/jordans"
	},
	"kapala" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 2), Vector2(7, 14)], [Vector2(3, 3), Vector2(2, 11)], [Vector2(12, 3), Vector2(2, 11)], [Vector2(2, 4), Vector2(1, 9)], [Vector2(14, 4), Vector2(1, 9)], [Vector2(4, 14), Vector2(1, 2)], [Vector2(12, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/kapala"
	},
	"key_left" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 4), Vector2(3, 8)], [Vector2(8, 5), Vector2(1, 6)], [Vector2(12, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(5, 4)], [Vector2(13, 6), Vector2(1, 4)], [Vector2(2, 7), Vector2(1, 4)], [Vector2(3, 10), Vector2(4, 1)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(5, 11), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/key_left"
	},
	"key_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 4), Vector2(3, 8)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(7, 5), Vector2(1, 6)], [Vector2(2, 6), Vector2(1, 4)], [Vector2(8, 6), Vector2(5, 4)], [Vector2(13, 7), Vector2(1, 4)], [Vector2(9, 10), Vector2(4, 1)], [Vector2(10, 11), Vector2(1, 1)], [Vector2(12, 11), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/key_right"
	},
	"machete_left" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 4), Vector2(15, 2)], [Vector2(15, 5), Vector2(1, 2)], [Vector2(1, 6), Vector2(14, 1)], [Vector2(2, 7), Vector2(13, 1)], [Vector2(3, 8), Vector2(7, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/machete_left"
	},
	"machete_right" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 4), Vector2(15, 2)], [Vector2(0, 6), Vector2(15, 1)], [Vector2(1, 7), Vector2(13, 1)], [Vector2(6, 8), Vector2(7, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/machete_right"
	},
	"mattock_left" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(3, 2)], [Vector2(3, 1), Vector2(1, 10)], [Vector2(2, 2), Vector2(1, 8)], [Vector2(4, 2), Vector2(2, 10)], [Vector2(6, 4), Vector2(8, 4)], [Vector2(1, 5), Vector2(1, 2)], [Vector2(14, 5), Vector2(1, 2)], [Vector2(6, 10), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/mattock_left"
	},
	"mattock_right" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(3, 2)], [Vector2(12, 1), Vector2(1, 10)], [Vector2(10, 2), Vector2(2, 10)], [Vector2(13, 2), Vector2(1, 8)], [Vector2(2, 4), Vector2(8, 4)], [Vector2(1, 5), Vector2(1, 2)], [Vector2(14, 5), Vector2(1, 2)], [Vector2(9, 10), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/mattock_right"
	},
	"mitt" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 2), Vector2(5, 13)], [Vector2(4, 3), Vector2(1, 11)], [Vector2(10, 3), Vector2(2, 13)], [Vector2(12, 4), Vector2(1, 12)], [Vector2(13, 5), Vector2(1, 10)], [Vector2(2, 6), Vector2(2, 6)], [Vector2(1, 7), Vector2(1, 4)], [Vector2(14, 7), Vector2(1, 5)], [Vector2(3, 12), Vector2(1, 1)], [Vector2(6, 15), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/mitt"
	},
	"ninja_suit" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 0), Vector2(6, 16)], [Vector2(4, 1), Vector2(1, 15)], [Vector2(11, 1), Vector2(1, 15)], [Vector2(3, 4), Vector2(1, 12)], [Vector2(12, 4), Vector2(1, 12)], [Vector2(2, 5), Vector2(1, 6)], [Vector2(13, 5), Vector2(1, 6)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(14, 6), Vector2(1, 5)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/ninja_suit"
	},
	"parachute" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(8, 6)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 6)], [Vector2(2, 2), Vector2(1, 8)], [Vector2(13, 2), Vector2(1, 8)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(14, 4), Vector2(1, 4)], [Vector2(6, 6), Vector2(4, 2)], [Vector2(7, 8), Vector2(2, 2)], [Vector2(3, 10), Vector2(1, 2)], [Vector2(8, 10), Vector2(1, 6)], [Vector2(12, 10), Vector2(1, 2)], [Vector2(4, 12), Vector2(1, 2)], [Vector2(11, 12), Vector2(1, 2)], [Vector2(5, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/parachute"
	},
	"para_open" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 11), Vector2(1, 5)], [Vector2(6, 12), Vector2(1, 3)], [Vector2(8, 12), Vector2(1, 3)]],
		1 : [[Vector2(6, 10), Vector2(3, 3)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(9, 11), Vector2(1, 2)], [Vector2(7, 13), Vector2(1, 2)]],
		2 : [[Vector2(6, 5), Vector2(3, 6)], [Vector2(5, 6), Vector2(1, 3)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(4, 7), Vector2(1, 4)], [Vector2(10, 7), Vector2(1, 4)], [Vector2(3, 8), Vector2(1, 2)], [Vector2(11, 8), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(7, 11), Vector2(1, 5)], [Vector2(9, 11), Vector2(1, 1)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(8, 12), Vector2(1, 1)]],
		3 : [[Vector2(6, 0), Vector2(4, 5)], [Vector2(4, 1), Vector2(2, 4)], [Vector2(10, 1), Vector2(2, 4)], [Vector2(3, 2), Vector2(1, 4)], [Vector2(12, 2), Vector2(1, 4)], [Vector2(2, 3), Vector2(1, 5)], [Vector2(13, 3), Vector2(1, 5)], [Vector2(7, 5), Vector2(2, 1)], [Vector2(8, 6), Vector2(1, 10)], [Vector2(3, 7), Vector2(1, 2)], [Vector2(12, 7), Vector2(1, 2)], [Vector2(4, 9), Vector2(1, 2)], [Vector2(11, 9), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 2)], [Vector2(6, 13), Vector2(1, 2)], [Vector2(9, 13), Vector2(1, 2)], [Vector2(7, 15), Vector2(1, 1)]],
		4 : [[Vector2(4, 0), Vector2(8, 6)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 6)], [Vector2(2, 2), Vector2(1, 8)], [Vector2(13, 2), Vector2(1, 8)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(14, 4), Vector2(1, 4)], [Vector2(6, 6), Vector2(4, 2)], [Vector2(7, 8), Vector2(2, 2)], [Vector2(3, 10), Vector2(1, 2)], [Vector2(8, 10), Vector2(1, 6)], [Vector2(12, 10), Vector2(1, 2)], [Vector2(4, 12), Vector2(1, 2)], [Vector2(11, 12), Vector2(1, 2)], [Vector2(5, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/para_open"
	},
	"para_pickup" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(9, 12)], [Vector2(3, 1), Vector2(1, 11)], [Vector2(13, 1), Vector2(1, 11)], [Vector2(2, 2), Vector2(1, 9)], [Vector2(14, 2), Vector2(1, 9)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/para_pickup"
	},
	"paste" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(10, 1)], [Vector2(3, 1), Vector2(1, 2)], [Vector2(5, 1), Vector2(2, 1)], [Vector2(12, 1), Vector2(1, 2)], [Vector2(4, 2), Vector2(1, 2)], [Vector2(6, 2), Vector2(1, 1)], [Vector2(11, 2), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 9)], [Vector2(10, 3), Vector2(1, 1)], [Vector2(3, 4), Vector2(1, 8)], [Vector2(6, 4), Vector2(1, 8)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(2, 5), Vector2(1, 6)], [Vector2(4, 5), Vector2(1, 7)], [Vector2(7, 5), Vector2(5, 7)], [Vector2(13, 5), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/paste"
	},
	"pistol_left" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 1), Vector2(9, 2)], [Vector2(4, 3), Vector2(8, 2)], [Vector2(12, 4), Vector2(1, 3)], [Vector2(9, 5), Vector2(3, 1)], [Vector2(10, 6), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/pistol_left"
	},
	"pistol_right" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(9, 2)], [Vector2(4, 3), Vector2(8, 2)], [Vector2(3, 4), Vector2(1, 3)], [Vector2(4, 5), Vector2(3, 1)], [Vector2(4, 6), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/pistol_right"
	},
	"rope_pile" : {
		"origin" : Vector2(8, 5),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 10)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 1), Vector2(3, 9)], [Vector2(4, 2), Vector2(1, 8)], [Vector2(8, 2), Vector2(1, 8)], [Vector2(3, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(2, 7)], [Vector2(11, 5), Vector2(1, 5)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(2, 8), Vector2(1, 2)], [Vector2(13, 8), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/rope_pile"
	},
	"sceptre_left" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(1, 7)], [Vector2(0, 2), Vector2(1, 5)], [Vector2(2, 2), Vector2(1, 7)], [Vector2(3, 3), Vector2(1, 7)], [Vector2(14, 3), Vector2(1, 4)], [Vector2(4, 4), Vector2(10, 3)], [Vector2(15, 4), Vector2(1, 2)], [Vector2(4, 7), Vector2(2, 4)], [Vector2(6, 9), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/sceptre_left"
	},
	"sceptre_right" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(14, 1), Vector2(1, 7)], [Vector2(13, 2), Vector2(1, 7)], [Vector2(15, 2), Vector2(1, 5)], [Vector2(1, 3), Vector2(1, 4)], [Vector2(12, 3), Vector2(1, 7)], [Vector2(0, 4), Vector2(1, 2)], [Vector2(2, 4), Vector2(10, 3)], [Vector2(10, 7), Vector2(2, 4)], [Vector2(9, 9), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/sceptre_right"
	},
	"spectacles" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 4), Vector2(3, 8)], [Vector2(12, 4), Vector2(2, 3)], [Vector2(1, 5), Vector2(1, 7)], [Vector2(5, 5), Vector2(1, 6)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(14, 5), Vector2(1, 3)], [Vector2(0, 6), Vector2(1, 5)], [Vector2(6, 6), Vector2(5, 5)], [Vector2(15, 6), Vector2(1, 2)], [Vector2(12, 7), Vector2(1, 3)], [Vector2(7, 11), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/spectacles"
	},
	"spike_shoes" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(8, 9)], [Vector2(9, 3), Vector2(3, 8)], [Vector2(12, 4), Vector2(1, 7)], [Vector2(13, 5), Vector2(1, 7)], [Vector2(14, 6), Vector2(1, 5)], [Vector2(2, 9), Vector2(7, 2)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(7, 11), Vector2(1, 1)], [Vector2(9, 11), Vector2(1, 1)], [Vector2(11, 11), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/spike_shoes"
	},
	"spring_shoes" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(8, 9)], [Vector2(9, 3), Vector2(3, 9)], [Vector2(12, 4), Vector2(1, 8)], [Vector2(13, 5), Vector2(1, 7)], [Vector2(14, 6), Vector2(1, 3)], [Vector2(2, 9), Vector2(5, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/spring_shoes"
	},
	"teleporter" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		1 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		2 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		3 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		4 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		5 : [[Vector2(6, 1), Vector2(3, 15)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(9, 2), Vector2(1, 4)], [Vector2(4, 3), Vector2(1, 2)], [Vector2(10, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		6 : [[Vector2(5, 1), Vector2(5, 1)], [Vector2(4, 2), Vector2(1, 1)], [Vector2(6, 2), Vector2(3, 14)], [Vector2(10, 2), Vector2(1, 1)], [Vector2(3, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 13)], [Vector2(9, 3), Vector2(1, 13)], [Vector2(11, 3), Vector2(1, 2)], [Vector2(4, 5), Vector2(1, 1)], [Vector2(10, 5), Vector2(1, 1)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		7 : [[Vector2(3, 2), Vector2(1, 1)], [Vector2(6, 2), Vector2(3, 14)], [Vector2(11, 2), Vector2(1, 1)], [Vector2(2, 3), Vector2(1, 2)], [Vector2(5, 3), Vector2(1, 3)], [Vector2(9, 3), Vector2(1, 3)], [Vector2(12, 3), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		8 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		9 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		10 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		11 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		12 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		13 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		14 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]],
		15 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/saleable/teleporter"
	},
	"udjat_eye" : {
		"origin" : Vector2(8, 6),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 12)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 1), Vector2(5, 10)], [Vector2(1, 2), Vector2(3, 8)], [Vector2(9, 2), Vector2(6, 6)], [Vector2(0, 3), Vector2(1, 6)], [Vector2(15, 3), Vector2(1, 4)], [Vector2(9, 8), Vector2(5, 1)], [Vector2(9, 9), Vector2(4, 1)], [Vector2(2, 10), Vector2(2, 1)], [Vector2(9, 10), Vector2(2, 1)], [Vector2(3, 11), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/udjat_eye"
	},
	"udjat_eye_icon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(4, 14)], [Vector2(8, 1), Vector2(1, 15)], [Vector2(13, 1), Vector2(1, 11)], [Vector2(7, 2), Vector2(1, 14)], [Vector2(14, 2), Vector2(1, 8)], [Vector2(6, 3), Vector2(1, 13)], [Vector2(5, 4), Vector2(1, 12)], [Vector2(4, 5), Vector2(1, 10)], [Vector2(3, 6), Vector2(1, 9)], [Vector2(2, 7), Vector2(1, 7)], [Vector2(1, 8), Vector2(1, 6)], [Vector2(0, 9), Vector2(1, 4)], [Vector2(9, 14), Vector2(3, 1)], [Vector2(9, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/udjat_eye_icon"
	},
	"udjat_eye_icon2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(4, 14)], [Vector2(8, 1), Vector2(1, 15)], [Vector2(13, 1), Vector2(1, 11)], [Vector2(7, 2), Vector2(1, 14)], [Vector2(14, 2), Vector2(1, 8)], [Vector2(6, 3), Vector2(1, 13)], [Vector2(5, 4), Vector2(1, 12)], [Vector2(4, 5), Vector2(1, 10)], [Vector2(3, 6), Vector2(1, 9)], [Vector2(2, 7), Vector2(1, 7)], [Vector2(1, 8), Vector2(1, 6)], [Vector2(0, 9), Vector2(1, 4)], [Vector2(9, 14), Vector2(3, 1)], [Vector2(9, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/udjat_eye_icon2"
	},
	"web_cannon_l" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 6)], [Vector2(5, 0), Vector2(5, 6)], [Vector2(11, 0), Vector2(1, 7)], [Vector2(0, 1), Vector2(1, 4)], [Vector2(3, 1), Vector2(2, 4)], [Vector2(10, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 2)], [Vector2(12, 4), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/web_cannon_l"
	},
	"web_cannon_r" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(1, 7)], [Vector2(6, 0), Vector2(5, 6)], [Vector2(13, 0), Vector2(2, 6)], [Vector2(3, 1), Vector2(1, 2)], [Vector2(5, 1), Vector2(1, 6)], [Vector2(11, 1), Vector2(2, 4)], [Vector2(15, 1), Vector2(1, 4)], [Vector2(3, 4), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/saleable/web_cannon_r"
	},
	"bell" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/bell"
	},
	"crystal_skull" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/crystal_skull"
	},
	"crystal_skull_ico" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/crystal_skull_ico"
	},
	"diamond" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/diamond"
	},
	"emerald" : {
		"origin" : Vector2(2, 2),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(4, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/emerald"
	},
	"emerald_big" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/emerald_big"
	},
	"gold_bar" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(8, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_bar"
	},
	"gold_bar_draw" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(8, 6)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_bar_draw"
	},
	"gold_bars" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_bars"
	},
	"gold_bars_draw" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 2), Vector2(16, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_bars_draw"
	},
	"gold_chunk" : {
		"origin" : Vector2(2, 2),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(4, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_chunk"
	},
	"gold_egg" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_egg"
	},
	"gold_idol" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_idol"
	},
	"gold_idol_ico" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_idol_ico"
	},
	"gold_nugget" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/gold_nugget"
	},
	"lamp_item" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/lamp_item"
	},
	"lamp_red_item" : {
		"origin" : Vector2(8, 12),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/lamp_red_item"
	},
	"ruby" : {
		"origin" : Vector2(2, 2),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(4, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/ruby"
	},
	"ruby_big" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/ruby_big"
	},
	"sapphire" : {
		"origin" : Vector2(2, 2),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(4, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/sapphire"
	},
	"sapphire_big" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/sapphire_big"
	},
	"scarab" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 2), Vector2(13, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/scarab"
	},
	"scarab_disp" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(1, 2), Vector2(13, 11)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/treasures/scarab_disp"
	},
	"arrow_left" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 3), Vector2(2, 5)], [Vector2(6, 3), Vector2(2, 4)], [Vector2(3, 4), Vector2(3, 3)], [Vector2(0, 5), Vector2(1, 2)], [Vector2(5, 7), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/arrow_left"
	},
	"arrow_right" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 3), Vector2(2, 4)], [Vector2(5, 3), Vector2(2, 5)], [Vector2(2, 4), Vector2(3, 3)], [Vector2(7, 4), Vector2(1, 3)], [Vector2(1, 7), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/arrow_right"
	},
	"ball" : {
		"origin" : Vector2(8, 10),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 6), Vector2(4, 10)], [Vector2(5, 7), Vector2(1, 8)], [Vector2(10, 7), Vector2(1, 8)], [Vector2(4, 8), Vector2(1, 6)], [Vector2(11, 8), Vector2(1, 6)], [Vector2(3, 9), Vector2(1, 4)], [Vector2(12, 9), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/ball"
	},
	"basketball" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(0, 2), Vector2(1, 4)], [Vector2(7, 2), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/basketball"
	},
	"bomb" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(3, 7)], [Vector2(2, 2), Vector2(1, 5)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(1, 3), Vector2(1, 3)], [Vector2(7, 3), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/bomb"
	},
	"bomb_armed" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(3, 7)], [Vector2(2, 2), Vector2(1, 5)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(1, 3), Vector2(1, 3)], [Vector2(7, 3), Vector2(1, 3)]],
		1 : [[Vector2(3, 1), Vector2(3, 7)], [Vector2(2, 2), Vector2(1, 5)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(1, 3), Vector2(1, 3)], [Vector2(7, 3), Vector2(1, 3)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/bomb_armed"
	},
	"bomb_arrow_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 5), Vector2(3, 7)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(6, 7), Vector2(1, 3)], [Vector2(10, 7), Vector2(2, 4)], [Vector2(7, 8), Vector2(3, 2)]],
		1 : [[Vector2(2, 5), Vector2(3, 7)], [Vector2(1, 6), Vector2(1, 5)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(0, 7), Vector2(1, 3)], [Vector2(6, 7), Vector2(1, 3)], [Vector2(10, 7), Vector2(2, 4)], [Vector2(7, 8), Vector2(3, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/bomb_arrow_left"
	},
	"bomb_arrow_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(11, 5), Vector2(3, 7)], [Vector2(10, 6), Vector2(1, 5)], [Vector2(14, 6), Vector2(1, 5)], [Vector2(4, 7), Vector2(2, 4)], [Vector2(9, 7), Vector2(1, 3)], [Vector2(15, 7), Vector2(1, 3)], [Vector2(6, 8), Vector2(3, 2)]],
		1 : [[Vector2(11, 5), Vector2(3, 7)], [Vector2(10, 6), Vector2(1, 5)], [Vector2(14, 6), Vector2(1, 5)], [Vector2(4, 7), Vector2(2, 4)], [Vector2(9, 7), Vector2(1, 3)], [Vector2(15, 7), Vector2(1, 3)], [Vector2(6, 8), Vector2(3, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/bomb_arrow_right"
	},
	"chain" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 9), Vector2(4, 6)], [Vector2(5, 10), Vector2(1, 4)], [Vector2(10, 10), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/chain"
	},
	"dribble" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 10)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(0, 2), Vector2(1, 4)], [Vector2(7, 2), Vector2(1, 4)]],
		1 : [[Vector2(2, 2), Vector2(4, 8)], [Vector2(1, 3), Vector2(1, 6)], [Vector2(6, 3), Vector2(1, 6)], [Vector2(0, 4), Vector2(1, 4)], [Vector2(7, 4), Vector2(1, 4)]],
		2 : [[Vector2(2, 3), Vector2(4, 7)], [Vector2(1, 4), Vector2(1, 5)], [Vector2(6, 4), Vector2(1, 5)], [Vector2(0, 5), Vector2(1, 4)], [Vector2(7, 5), Vector2(1, 4)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/dribble"
	},
	"egg" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 7)], [Vector2(5, 1), Vector2(1, 7)], [Vector2(1, 2), Vector2(1, 5)], [Vector2(6, 2), Vector2(1, 5)], [Vector2(0, 3), Vector2(1, 3)], [Vector2(7, 3), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/egg"
	},
	"fish_bone" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 2), Vector2(1, 5)], [Vector2(5, 2), Vector2(1, 5)], [Vector2(0, 3), Vector2(2, 1)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(2, 1)], [Vector2(4, 4), Vector2(1, 1)], [Vector2(7, 4), Vector2(1, 1)], [Vector2(1, 5), Vector2(1, 1)], [Vector2(6, 5), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/fish_bone"
	},
	"jar" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(3, 5), Vector2(10, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/jar"
	},
	"machete_pre_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 0), Vector2(1, 3)], [Vector2(5, 1), Vector2(1, 4)], [Vector2(4, 2), Vector2(1, 4)], [Vector2(3, 3), Vector2(1, 4)], [Vector2(2, 4), Vector2(1, 3)], [Vector2(0, 5), Vector2(2, 3)], [Vector2(0, 8), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/machete_pre_l"
	},
	"machete_pre_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(1, 3)], [Vector2(10, 1), Vector2(1, 4)], [Vector2(11, 2), Vector2(1, 4)], [Vector2(12, 3), Vector2(1, 4)], [Vector2(13, 4), Vector2(1, 3)], [Vector2(14, 5), Vector2(2, 3)], [Vector2(15, 8), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/machete_pre_r"
	},
	"mattock_head" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 2), Vector2(2, 6)], [Vector2(4, 3), Vector2(3, 4)], [Vector2(9, 3), Vector2(3, 4)], [Vector2(3, 4), Vector2(1, 4)], [Vector2(12, 4), Vector2(1, 4)], [Vector2(2, 5), Vector2(1, 3)], [Vector2(13, 5), Vector2(1, 3)], [Vector2(6, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/mattock_head"
	},
	"mattock_hit_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 2), Vector2(3, 2)], [Vector2(7, 3), Vector2(1, 10)], [Vector2(6, 4), Vector2(1, 8)], [Vector2(8, 4), Vector2(2, 10)], [Vector2(10, 6), Vector2(6, 4)], [Vector2(5, 7), Vector2(1, 2)], [Vector2(10, 12), Vector2(1, 2)]],
		1 : [[Vector2(8, 3), Vector2(3, 1)], [Vector2(7, 4), Vector2(3, 9)], [Vector2(6, 5), Vector2(1, 6)], [Vector2(13, 6), Vector2(3, 4)], [Vector2(10, 7), Vector2(3, 4)], [Vector2(5, 8), Vector2(1, 2)], [Vector2(10, 11), Vector2(1, 4)], [Vector2(8, 13), Vector2(2, 1)], [Vector2(11, 13), Vector2(1, 2)], [Vector2(9, 14), Vector2(1, 1)]],
		2 : [[Vector2(8, 4), Vector2(3, 1)], [Vector2(7, 5), Vector2(3, 9)], [Vector2(6, 6), Vector2(1, 6)], [Vector2(13, 7), Vector2(3, 4)], [Vector2(10, 8), Vector2(3, 4)], [Vector2(5, 9), Vector2(1, 2)], [Vector2(10, 12), Vector2(1, 4)], [Vector2(8, 14), Vector2(2, 1)], [Vector2(11, 14), Vector2(1, 2)], [Vector2(9, 15), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/mattock_hit_l"
	},
	"mattock_hit_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 2), Vector2(3, 2)], [Vector2(8, 3), Vector2(1, 10)], [Vector2(6, 4), Vector2(2, 10)], [Vector2(9, 4), Vector2(1, 8)], [Vector2(0, 6), Vector2(6, 4)], [Vector2(10, 7), Vector2(1, 2)], [Vector2(5, 12), Vector2(1, 2)]],
		1 : [[Vector2(5, 3), Vector2(3, 1)], [Vector2(6, 4), Vector2(3, 9)], [Vector2(9, 5), Vector2(1, 6)], [Vector2(0, 6), Vector2(3, 4)], [Vector2(3, 7), Vector2(3, 4)], [Vector2(10, 8), Vector2(1, 2)], [Vector2(5, 11), Vector2(1, 4)], [Vector2(4, 13), Vector2(1, 2)], [Vector2(6, 13), Vector2(2, 1)], [Vector2(6, 14), Vector2(1, 1)]],
		2 : [[Vector2(5, 4), Vector2(3, 1)], [Vector2(6, 5), Vector2(3, 9)], [Vector2(9, 6), Vector2(1, 6)], [Vector2(0, 7), Vector2(3, 4)], [Vector2(3, 8), Vector2(3, 4)], [Vector2(10, 9), Vector2(1, 2)], [Vector2(5, 12), Vector2(1, 4)], [Vector2(4, 14), Vector2(1, 2)], [Vector2(6, 14), Vector2(2, 1)], [Vector2(6, 15), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/mattock_hit_r"
	},
	"mattock_pre_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(3, 1)], [Vector2(5, 1), Vector2(3, 7)], [Vector2(8, 2), Vector2(1, 9)], [Vector2(3, 4), Vector2(2, 4)], [Vector2(9, 4), Vector2(1, 6)], [Vector2(0, 5), Vector2(3, 4)], [Vector2(10, 5), Vector2(1, 2)], [Vector2(6, 8), Vector2(2, 4)], [Vector2(5, 10), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/mattock_pre_l"
	},
	"mattock_pre_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(3, 1)], [Vector2(8, 1), Vector2(3, 7)], [Vector2(7, 2), Vector2(1, 9)], [Vector2(6, 4), Vector2(1, 6)], [Vector2(11, 4), Vector2(2, 4)], [Vector2(5, 5), Vector2(1, 2)], [Vector2(13, 5), Vector2(3, 4)], [Vector2(8, 8), Vector2(2, 4)], [Vector2(10, 10), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/mattock_pre_r"
	},
	"rock" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 1), Vector2(4, 7)], [Vector2(1, 2), Vector2(1, 5)], [Vector2(6, 2), Vector2(1, 6)], [Vector2(7, 3), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/rock"
	},
	"rope" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : [Vector2(10, 0), Vector2(4, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/rope"
	},
	"rope_end" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 8)], [Vector2(1, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 6)], [Vector2(0, 2), Vector2(1, 4)], [Vector2(7, 2), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/rope_end"
	},
	"rope_top" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(2, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 7)], [Vector2(1, 2), Vector2(1, 5)], [Vector2(6, 2), Vector2(1, 4)], [Vector2(0, 3), Vector2(1, 3)], [Vector2(7, 3), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/rope_top"
	},
	"shotgun_left" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(9, 4)], [Vector2(10, 2), Vector2(2, 5)], [Vector2(12, 3), Vector2(1, 5)], [Vector2(13, 4), Vector2(1, 3)], [Vector2(2, 5), Vector2(8, 1)], [Vector2(3, 6), Vector2(7, 1)], [Vector2(11, 7), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/shotgun_left"
	},
	"shotgun_right" : {
		"origin" : Vector2(8, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(9, 4)], [Vector2(4, 2), Vector2(2, 5)], [Vector2(3, 3), Vector2(1, 5)], [Vector2(2, 4), Vector2(1, 3)], [Vector2(6, 5), Vector2(8, 1)], [Vector2(6, 6), Vector2(7, 1)], [Vector2(4, 7), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/shotgun_right"
	},
	"skull" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 1), Vector2(5, 6)], [Vector2(1, 2), Vector2(1, 6)], [Vector2(7, 2), Vector2(1, 4)], [Vector2(0, 4), Vector2(1, 2)], [Vector2(2, 7), Vector2(3, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/skull"
	},
	"slash_left" : {
		"origin" : Vector2(4, 24),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(13, 4), Vector2(10, 4)], [Vector2(23, 5), Vector2(3, 4)], [Vector2(26, 6), Vector2(2, 4)], [Vector2(28, 8), Vector2(1, 3)], [Vector2(29, 10), Vector2(1, 2)]],
		1 : [[Vector2(14, 5), Vector2(13, 1)], [Vector2(10, 6), Vector2(14, 1)], [Vector2(8, 7), Vector2(13, 1)], [Vector2(6, 8), Vector2(12, 1)], [Vector2(5, 9), Vector2(10, 1)], [Vector2(6, 10), Vector2(7, 1)], [Vector2(7, 11), Vector2(4, 1)], [Vector2(8, 12), Vector2(2, 1)]],
		2 : [[Vector2(9, 8), Vector2(1, 1)], [Vector2(8, 9), Vector2(1, 1)], [Vector2(7, 10), Vector2(1, 1)], [Vector2(6, 11), Vector2(1, 1)], [Vector2(5, 12), Vector2(1, 2)], [Vector2(4, 13), Vector2(1, 4)], [Vector2(3, 15), Vector2(1, 5)], [Vector2(2, 17), Vector2(1, 6)], [Vector2(1, 20), Vector2(1, 8)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/slash_left"
	},
	"slash_right" : {
		"origin" : Vector2(28, 24),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 4), Vector2(10, 4)], [Vector2(6, 5), Vector2(3, 4)], [Vector2(4, 6), Vector2(2, 4)], [Vector2(3, 8), Vector2(1, 3)], [Vector2(2, 10), Vector2(1, 2)]],
		1 : [[Vector2(5, 5), Vector2(13, 1)], [Vector2(8, 6), Vector2(14, 1)], [Vector2(11, 7), Vector2(13, 1)], [Vector2(14, 8), Vector2(12, 1)], [Vector2(17, 9), Vector2(10, 1)], [Vector2(19, 10), Vector2(7, 1)], [Vector2(21, 11), Vector2(4, 1)], [Vector2(22, 12), Vector2(2, 1)]],
		2 : [[Vector2(22, 8), Vector2(1, 1)], [Vector2(23, 9), Vector2(1, 1)], [Vector2(24, 10), Vector2(1, 1)], [Vector2(25, 11), Vector2(1, 1)], [Vector2(26, 12), Vector2(1, 2)], [Vector2(27, 13), Vector2(1, 4)], [Vector2(28, 15), Vector2(1, 5)], [Vector2(29, 17), Vector2(1, 6)], [Vector2(30, 20), Vector2(1, 8)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/items/weapons/slash_right"
	},
	"target" : {
		"origin" : Vector2(0, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 2), Vector2(8, 28)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/target"
	},
	"whip_left" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 6), Vector2(1, 4)], [Vector2(3, 7), Vector2(1, 2)], [Vector2(5, 7), Vector2(2, 3)], [Vector2(12, 7), Vector2(4, 3)], [Vector2(7, 8), Vector2(5, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/whip_left"
	},
	"whip_pre_l" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(3, 3)], [Vector2(3, 1), Vector2(1, 3)], [Vector2(7, 1), Vector2(1, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(8, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 4)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(0, 4), Vector2(1, 4)], [Vector2(5, 4), Vector2(2, 3)], [Vector2(4, 5), Vector2(1, 6)], [Vector2(3, 6), Vector2(1, 4)], [Vector2(2, 7), Vector2(1, 2)], [Vector2(6, 8), Vector2(1, 4)], [Vector2(5, 9), Vector2(1, 3)], [Vector2(7, 9), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/whip_pre_l"
	},
	"whip_pre_r" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 0), Vector2(3, 3)], [Vector2(8, 1), Vector2(1, 6)], [Vector2(12, 1), Vector2(1, 3)], [Vector2(7, 2), Vector2(1, 4)], [Vector2(13, 2), Vector2(1, 4)], [Vector2(6, 3), Vector2(1, 2)], [Vector2(14, 3), Vector2(1, 4)], [Vector2(9, 4), Vector2(2, 3)], [Vector2(15, 4), Vector2(1, 4)], [Vector2(11, 5), Vector2(1, 6)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(13, 7), Vector2(1, 2)], [Vector2(9, 8), Vector2(1, 4)], [Vector2(8, 9), Vector2(1, 2)], [Vector2(10, 9), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/whip_pre_r"
	},
	"whip_right" : {
		"origin" : Vector2(8, 8),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(11, 6), Vector2(1, 4)], [Vector2(0, 7), Vector2(4, 3)], [Vector2(9, 7), Vector2(2, 3)], [Vector2(12, 7), Vector2(1, 2)], [Vector2(4, 8), Vector2(5, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/items/weapons/whip_right"
	},
	"bomb_bag_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 4), Vector2(4, 12)], [Vector2(5, 5), Vector2(1, 2)], [Vector2(10, 5), Vector2(1, 2)], [Vector2(5, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)], [Vector2(4, 9), Vector2(1, 7)], [Vector2(11, 9), Vector2(1, 7)], [Vector2(3, 10), Vector2(1, 6)], [Vector2(12, 10), Vector2(1, 6)], [Vector2(2, 11), Vector2(1, 4)], [Vector2(13, 11), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/bomb_bag_tile"
	},
	"bomb_box_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 5), Vector2(14, 11)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/bomb_box_tile"
	},
	"bomb_paste_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 4), Vector2(10, 1)], [Vector2(3, 5), Vector2(1, 2)], [Vector2(5, 5), Vector2(2, 1)], [Vector2(12, 5), Vector2(1, 2)], [Vector2(4, 6), Vector2(1, 2)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(11, 6), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(10, 7), Vector2(1, 1)], [Vector2(3, 8), Vector2(1, 8)], [Vector2(6, 8), Vector2(1, 8)], [Vector2(12, 8), Vector2(1, 8)], [Vector2(2, 9), Vector2(1, 6)], [Vector2(4, 9), Vector2(1, 7)], [Vector2(7, 9), Vector2(5, 7)], [Vector2(13, 9), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/bomb_paste_tile"
	},
	"bow_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 5), Vector2(2, 3)], [Vector2(8, 6), Vector2(1, 2)], [Vector2(11, 6), Vector2(1, 9)], [Vector2(12, 7), Vector2(1, 2)], [Vector2(7, 8), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 8)], [Vector2(6, 9), Vector2(1, 3)], [Vector2(9, 9), Vector2(1, 3)], [Vector2(7, 12), Vector2(1, 1)], [Vector2(12, 12), Vector2(1, 2)], [Vector2(8, 13), Vector2(2, 2)], [Vector2(9, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/bow_tile"
	},
	"cape_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 1)], [Vector2(5, 2), Vector2(2, 12)], [Vector2(9, 2), Vector2(2, 12)], [Vector2(4, 3), Vector2(1, 12)], [Vector2(11, 3), Vector2(1, 12)], [Vector2(7, 4), Vector2(2, 10)], [Vector2(3, 6), Vector2(1, 9)], [Vector2(12, 6), Vector2(1, 9)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)], [Vector2(1, 12), Vector2(1, 4)], [Vector2(14, 12), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/cape_tile"
	},
	"chest_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 8), Vector2(10, 8)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/chest_tile"
	},
	"compass_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 4), Vector2(6, 12)], [Vector2(4, 5), Vector2(1, 11)], [Vector2(11, 5), Vector2(1, 11)], [Vector2(3, 6), Vector2(1, 9)], [Vector2(12, 6), Vector2(1, 9)], [Vector2(2, 7), Vector2(1, 7)], [Vector2(13, 7), Vector2(1, 7)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/compass_tile"
	},
	"crate_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 6), Vector2(12, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/crate_tile"
	},
	"crystal_skull_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/crystal_skull_tile"
	},
	"diamond_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 8), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/diamond_tile"
	},
	"emerald_big_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 8), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/emerald_big_tile"
	},
	"gloves_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(2, 16)], [Vector2(7, 0), Vector2(2, 16)], [Vector2(3, 1), Vector2(1, 12)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(9, 1), Vector2(3, 15)], [Vector2(12, 2), Vector2(1, 14)], [Vector2(13, 3), Vector2(2, 9)], [Vector2(15, 4), Vector2(1, 7)], [Vector2(1, 5), Vector2(2, 6)], [Vector2(0, 6), Vector2(1, 4)], [Vector2(2, 11), Vector2(1, 1)], [Vector2(13, 12), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/gloves_tile"
	},
	"gold_bars_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 6), Vector2(16, 10)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/gold_bars_tile"
	},
	"gold_bar_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 11), Vector2(8, 5)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/gold_bar_tile"
	},
	"gold_idol_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 1), Vector2(12, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/gold_idol_tile"
	},
	"jar_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(3, 7), Vector2(10, 9)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/jar_tile"
	},
	"jetpack_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(2, 3), Vector2(12, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/jetpack_tile"
	},
	"machete_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 8), Vector2(15, 2)], [Vector2(0, 10), Vector2(15, 1)], [Vector2(1, 11), Vector2(13, 1)], [Vector2(6, 12), Vector2(7, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/machete_tile"
	},
	"mattock_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(9, 4), Vector2(3, 2)], [Vector2(12, 5), Vector2(1, 10)], [Vector2(10, 6), Vector2(2, 10)], [Vector2(13, 6), Vector2(1, 8)], [Vector2(2, 8), Vector2(8, 4)], [Vector2(1, 9), Vector2(1, 2)], [Vector2(14, 9), Vector2(1, 2)], [Vector2(9, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/mattock_tile"
	},
	"mega_mouth_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(64, 32)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/mega_mouth_tile"
	},
	"mitt_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 1), Vector2(5, 14)], [Vector2(4, 2), Vector2(1, 12)], [Vector2(10, 2), Vector2(2, 14)], [Vector2(12, 3), Vector2(1, 13)], [Vector2(13, 4), Vector2(1, 11)], [Vector2(2, 5), Vector2(2, 7)], [Vector2(1, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 6)], [Vector2(3, 12), Vector2(1, 1)], [Vector2(6, 15), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/mitt_tile"
	},
	"parachute_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 4), Vector2(9, 12)], [Vector2(3, 5), Vector2(1, 11)], [Vector2(13, 5), Vector2(1, 11)], [Vector2(2, 6), Vector2(1, 9)], [Vector2(14, 6), Vector2(1, 9)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/parachute_tile"
	},
	"piranha_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/piranha_tile"
	},
	"pistol_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 9), Vector2(9, 2)], [Vector2(4, 11), Vector2(8, 2)], [Vector2(3, 12), Vector2(1, 3)], [Vector2(4, 13), Vector2(3, 1)], [Vector2(4, 14), Vector2(2, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/pistol_tile"
	},
	"rock_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 9), Vector2(4, 7)], [Vector2(5, 10), Vector2(1, 5)], [Vector2(10, 10), Vector2(1, 6)], [Vector2(11, 11), Vector2(1, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/rock_tile"
	},
	"rope_pile_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 7), Vector2(3, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(8, 8), Vector2(1, 8)], [Vector2(3, 9), Vector2(1, 2)], [Vector2(9, 9), Vector2(2, 7)], [Vector2(11, 11), Vector2(1, 5)], [Vector2(3, 12), Vector2(1, 4)], [Vector2(12, 12), Vector2(1, 4)], [Vector2(2, 14), Vector2(1, 2)], [Vector2(13, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/rope_pile_tile"
	},
	"ruby_big_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 8), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/ruby_big_tile"
	},
	"sapphire_big_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(4, 8), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/sapphire_big_tile"
	},
	"shotgun_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 9), Vector2(9, 4)], [Vector2(4, 10), Vector2(2, 5)], [Vector2(3, 11), Vector2(1, 5)], [Vector2(2, 12), Vector2(1, 3)], [Vector2(6, 13), Vector2(8, 1)], [Vector2(6, 14), Vector2(7, 1)], [Vector2(4, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/shotgun_tile"
	},
	"spectacles_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 8), Vector2(3, 8)], [Vector2(12, 8), Vector2(2, 3)], [Vector2(1, 9), Vector2(1, 7)], [Vector2(5, 9), Vector2(1, 6)], [Vector2(11, 9), Vector2(1, 6)], [Vector2(14, 9), Vector2(1, 3)], [Vector2(0, 10), Vector2(1, 5)], [Vector2(6, 10), Vector2(5, 5)], [Vector2(15, 10), Vector2(1, 2)], [Vector2(12, 11), Vector2(1, 3)], [Vector2(7, 15), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/spectacles_tile"
	},
	"spike_shoes_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 4), Vector2(8, 9)], [Vector2(9, 7), Vector2(3, 8)], [Vector2(12, 8), Vector2(1, 7)], [Vector2(13, 9), Vector2(1, 7)], [Vector2(14, 10), Vector2(1, 5)], [Vector2(2, 13), Vector2(7, 2)], [Vector2(3, 15), Vector2(1, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/spike_shoes_tile"
	},
	"spring_shoes_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 4), Vector2(8, 9)], [Vector2(9, 7), Vector2(3, 9)], [Vector2(12, 8), Vector2(1, 8)], [Vector2(13, 9), Vector2(1, 7)], [Vector2(14, 10), Vector2(1, 3)], [Vector2(2, 13), Vector2(5, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/spring_shoes_tile"
	},
	"teleporter_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 2), Vector2(3, 14)], [Vector2(5, 3), Vector2(1, 2)], [Vector2(9, 3), Vector2(1, 2)], [Vector2(5, 7), Vector2(1, 9)], [Vector2(9, 7), Vector2(1, 9)], [Vector2(4, 8), Vector2(1, 8)], [Vector2(10, 8), Vector2(1, 8)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/teleporter_tile"
	},
	"web_cannon_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 8), Vector2(1, 7)], [Vector2(6, 8), Vector2(5, 6)], [Vector2(13, 8), Vector2(2, 6)], [Vector2(3, 9), Vector2(1, 2)], [Vector2(5, 9), Vector2(1, 6)], [Vector2(11, 9), Vector2(2, 4)], [Vector2(15, 9), Vector2(1, 4)], [Vector2(3, 12), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/web_cannon_tile"
	},
	"web_tile" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/level editor/web_tile"
	},
	"mushroom1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 4), Vector2(2, 12)], [Vector2(6, 5), Vector2(1, 11)], [Vector2(9, 5), Vector2(1, 11)], [Vector2(5, 6), Vector2(1, 5)], [Vector2(10, 6), Vector2(1, 5)], [Vector2(4, 8), Vector2(1, 3)], [Vector2(11, 8), Vector2(1, 3)], [Vector2(3, 9), Vector2(1, 1)], [Vector2(12, 9), Vector2(1, 1)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom1"
	},
	"mushroom2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 3), Vector2(6, 13)], [Vector2(4, 4), Vector2(1, 7)], [Vector2(11, 4), Vector2(1, 7)], [Vector2(3, 5), Vector2(1, 6)], [Vector2(12, 5), Vector2(1, 6)], [Vector2(2, 7), Vector2(1, 3)], [Vector2(13, 7), Vector2(1, 3)], [Vector2(4, 13), Vector2(1, 2)], [Vector2(11, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom2"
	},
	"mushroom3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 3), Vector2(4, 13)], [Vector2(5, 4), Vector2(1, 6)], [Vector2(10, 4), Vector2(1, 6)], [Vector2(4, 6), Vector2(1, 4)], [Vector2(11, 6), Vector2(1, 4)], [Vector2(3, 7), Vector2(1, 2)], [Vector2(12, 7), Vector2(1, 2)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom3"
	},
	"mushroom4" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 2), Vector2(4, 14)], [Vector2(5, 3), Vector2(1, 7)], [Vector2(10, 3), Vector2(1, 7)], [Vector2(4, 4), Vector2(1, 6)], [Vector2(11, 4), Vector2(1, 6)], [Vector2(3, 5), Vector2(1, 4)], [Vector2(12, 5), Vector2(1, 4)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom4"
	},
	"mushroom5" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 3), Vector2(6, 7)], [Vector2(4, 4), Vector2(1, 6)], [Vector2(11, 4), Vector2(1, 6)], [Vector2(3, 5), Vector2(1, 4)], [Vector2(12, 5), Vector2(1, 4)], [Vector2(6, 10), Vector2(4, 6)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom5"
	},
	"mushroom6" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 4), Vector2(4, 12)], [Vector2(4, 5), Vector2(2, 7)], [Vector2(10, 5), Vector2(2, 7)], [Vector2(3, 6), Vector2(1, 6)], [Vector2(12, 6), Vector2(1, 6)], [Vector2(2, 7), Vector2(1, 4)], [Vector2(13, 7), Vector2(1, 4)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom6"
	},
	"mushroom7" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 1), Vector2(4, 15)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(10, 2), Vector2(1, 6)], [Vector2(4, 3), Vector2(1, 5)], [Vector2(11, 3), Vector2(1, 5)], [Vector2(3, 6), Vector2(1, 2)], [Vector2(12, 6), Vector2(1, 2)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom7"
	},
	"mushroom8" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(6, 3), Vector2(4, 13)], [Vector2(5, 4), Vector2(1, 5)], [Vector2(10, 4), Vector2(1, 5)], [Vector2(4, 5), Vector2(1, 4)], [Vector2(11, 5), Vector2(1, 4)], [Vector2(3, 6), Vector2(1, 2)], [Vector2(12, 6), Vector2(1, 2)], [Vector2(5, 13), Vector2(1, 2)], [Vector2(10, 13), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/mushrooms/mushroom8"
	},
	"basket" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 4)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(1, 3)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 1)], [Vector2(2, 8), Vector2(1, 7)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(12, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(1, 1)], [Vector2(5, 9), Vector2(1, 1)], [Vector2(7, 9), Vector2(1, 1)], [Vector2(9, 9), Vector2(1, 1)], [Vector2(11, 9), Vector2(1, 1)], [Vector2(13, 9), Vector2(1, 6)], [Vector2(4, 10), Vector2(1, 1)], [Vector2(6, 10), Vector2(1, 1)], [Vector2(8, 10), Vector2(1, 1)], [Vector2(10, 10), Vector2(1, 1)], [Vector2(12, 10), Vector2(1, 1)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(7, 11), Vector2(1, 1)], [Vector2(9, 11), Vector2(1, 1)], [Vector2(11, 11), Vector2(1, 1)], [Vector2(4, 12), Vector2(1, 1)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(10, 12), Vector2(1, 1)], [Vector2(12, 12), Vector2(1, 1)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(9, 13), Vector2(1, 1)], [Vector2(11, 13), Vector2(1, 1)], [Vector2(4, 14), Vector2(1, 1)], [Vector2(6, 14), Vector2(1, 1)], [Vector2(8, 14), Vector2(1, 1)], [Vector2(10, 14), Vector2(1, 1)], [Vector2(12, 14), Vector2(1, 2)], [Vector2(3, 15), Vector2(1, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/basket"
	},
	"basket_swoosh" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 4)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(1, 3)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 1)], [Vector2(2, 8), Vector2(1, 7)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(12, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(1, 1)], [Vector2(5, 9), Vector2(1, 1)], [Vector2(7, 9), Vector2(1, 1)], [Vector2(9, 9), Vector2(1, 1)], [Vector2(11, 9), Vector2(1, 1)], [Vector2(13, 9), Vector2(1, 6)], [Vector2(4, 10), Vector2(1, 1)], [Vector2(6, 10), Vector2(1, 1)], [Vector2(8, 10), Vector2(1, 1)], [Vector2(10, 10), Vector2(1, 1)], [Vector2(12, 10), Vector2(1, 1)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(7, 11), Vector2(1, 1)], [Vector2(9, 11), Vector2(1, 1)], [Vector2(11, 11), Vector2(1, 1)], [Vector2(4, 12), Vector2(1, 1)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(10, 12), Vector2(1, 1)], [Vector2(12, 12), Vector2(1, 1)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(9, 13), Vector2(1, 1)], [Vector2(11, 13), Vector2(1, 1)], [Vector2(4, 14), Vector2(1, 1)], [Vector2(6, 14), Vector2(1, 1)], [Vector2(8, 14), Vector2(1, 1)], [Vector2(10, 14), Vector2(1, 1)], [Vector2(12, 14), Vector2(1, 2)], [Vector2(3, 15), Vector2(1, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(1, 1)]],
		1 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 2)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(1, 1)], [Vector2(3, 7), Vector2(1, 7)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 2)], [Vector2(4, 8), Vector2(1, 2)], [Vector2(6, 8), Vector2(1, 2)], [Vector2(8, 8), Vector2(1, 2)], [Vector2(10, 8), Vector2(1, 2)], [Vector2(12, 8), Vector2(1, 5)], [Vector2(5, 10), Vector2(1, 1)], [Vector2(7, 10), Vector2(1, 1)], [Vector2(9, 10), Vector2(1, 1)], [Vector2(11, 10), Vector2(1, 1)], [Vector2(4, 11), Vector2(1, 1)], [Vector2(6, 11), Vector2(1, 1)], [Vector2(8, 11), Vector2(1, 1)], [Vector2(10, 11), Vector2(1, 1)], [Vector2(5, 12), Vector2(1, 2)], [Vector2(7, 12), Vector2(1, 2)], [Vector2(9, 12), Vector2(1, 2)], [Vector2(11, 12), Vector2(1, 2)], [Vector2(2, 13), Vector2(1, 2)], [Vector2(13, 13), Vector2(1, 2)], [Vector2(4, 14), Vector2(1, 1)], [Vector2(6, 14), Vector2(1, 1)], [Vector2(8, 14), Vector2(1, 1)], [Vector2(10, 14), Vector2(1, 1)], [Vector2(12, 14), Vector2(1, 2)], [Vector2(3, 15), Vector2(1, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(1, 1)]],
		2 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 3)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(1, 2)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 4)], [Vector2(2, 8), Vector2(1, 3)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(12, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(1, 1)], [Vector2(5, 9), Vector2(1, 3)], [Vector2(7, 9), Vector2(1, 3)], [Vector2(9, 9), Vector2(1, 3)], [Vector2(11, 9), Vector2(1, 1)], [Vector2(4, 10), Vector2(1, 2)], [Vector2(6, 10), Vector2(1, 2)], [Vector2(8, 10), Vector2(1, 2)], [Vector2(10, 10), Vector2(1, 2)], [Vector2(12, 10), Vector2(1, 2)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(11, 11), Vector2(1, 1)]],
		3 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 5)], [Vector2(7, 5), Vector2(1, 5)], [Vector2(9, 5), Vector2(1, 5)], [Vector2(11, 5), Vector2(1, 5)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 3)], [Vector2(4, 6), Vector2(1, 4)], [Vector2(6, 6), Vector2(1, 4)], [Vector2(8, 6), Vector2(1, 4)], [Vector2(10, 6), Vector2(1, 4)], [Vector2(12, 6), Vector2(1, 4)], [Vector2(14, 6), Vector2(1, 1)], [Vector2(3, 7), Vector2(1, 3)], [Vector2(13, 7), Vector2(1, 2)]],
		4 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 4)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 1)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(1, 3)], [Vector2(3, 7), Vector2(1, 1)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 1)], [Vector2(2, 8), Vector2(1, 5)], [Vector2(4, 8), Vector2(1, 1)], [Vector2(6, 8), Vector2(1, 1)], [Vector2(8, 8), Vector2(1, 1)], [Vector2(10, 8), Vector2(1, 1)], [Vector2(12, 8), Vector2(1, 1)], [Vector2(3, 9), Vector2(1, 1)], [Vector2(5, 9), Vector2(1, 1)], [Vector2(7, 9), Vector2(1, 1)], [Vector2(9, 9), Vector2(1, 1)], [Vector2(11, 9), Vector2(1, 1)], [Vector2(13, 9), Vector2(1, 4)], [Vector2(4, 10), Vector2(1, 1)], [Vector2(6, 10), Vector2(1, 1)], [Vector2(8, 10), Vector2(1, 1)], [Vector2(10, 10), Vector2(1, 1)], [Vector2(12, 10), Vector2(1, 1)], [Vector2(3, 11), Vector2(1, 1)], [Vector2(5, 11), Vector2(1, 1)], [Vector2(7, 11), Vector2(1, 1)], [Vector2(9, 11), Vector2(1, 1)], [Vector2(11, 11), Vector2(1, 1)], [Vector2(4, 12), Vector2(1, 1)], [Vector2(6, 12), Vector2(1, 1)], [Vector2(8, 12), Vector2(1, 1)], [Vector2(10, 12), Vector2(1, 1)], [Vector2(12, 12), Vector2(1, 2)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(5, 13), Vector2(1, 1)], [Vector2(7, 13), Vector2(1, 1)], [Vector2(9, 13), Vector2(1, 1)], [Vector2(11, 13), Vector2(1, 1)]],
		5 : [[Vector2(1, 0), Vector2(14, 5)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)], [Vector2(1, 5), Vector2(1, 2)], [Vector2(3, 5), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(9, 5), Vector2(1, 1)], [Vector2(11, 5), Vector2(1, 1)], [Vector2(13, 5), Vector2(2, 1)], [Vector2(2, 6), Vector2(1, 2)], [Vector2(4, 6), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(8, 6), Vector2(1, 1)], [Vector2(10, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 1)], [Vector2(14, 6), Vector2(1, 1)], [Vector2(3, 7), Vector2(1, 7)], [Vector2(5, 7), Vector2(1, 1)], [Vector2(7, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(11, 7), Vector2(1, 1)], [Vector2(13, 7), Vector2(1, 2)], [Vector2(4, 8), Vector2(1, 2)], [Vector2(6, 8), Vector2(1, 2)], [Vector2(8, 8), Vector2(1, 2)], [Vector2(10, 8), Vector2(1, 2)], [Vector2(12, 8), Vector2(1, 5)], [Vector2(5, 10), Vector2(1, 1)], [Vector2(7, 10), Vector2(1, 1)], [Vector2(9, 10), Vector2(1, 1)], [Vector2(11, 10), Vector2(1, 1)], [Vector2(4, 11), Vector2(1, 1)], [Vector2(6, 11), Vector2(1, 1)], [Vector2(8, 11), Vector2(1, 1)], [Vector2(10, 11), Vector2(1, 1)], [Vector2(5, 12), Vector2(1, 2)], [Vector2(7, 12), Vector2(1, 2)], [Vector2(9, 12), Vector2(1, 2)], [Vector2(11, 12), Vector2(1, 2)], [Vector2(2, 13), Vector2(1, 2)], [Vector2(13, 13), Vector2(1, 2)], [Vector2(4, 14), Vector2(1, 1)], [Vector2(6, 14), Vector2(1, 1)], [Vector2(8, 14), Vector2(1, 1)], [Vector2(10, 14), Vector2(1, 1)], [Vector2(12, 14), Vector2(1, 2)], [Vector2(3, 15), Vector2(1, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(7, 15), Vector2(1, 1)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(11, 15), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/basket_swoosh"
	},
	"box" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/box"
	},
	"box_checked" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/box_checked"
	},
	"box_marked" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(8, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/box_marked"
	},
	"edit_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/edit_button"
	},
	"edit_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/edit_button_pressed"
	},
	"end_plat" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(80, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(80, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end_plat"
	},
	"joy_config_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(56, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(56, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/joy_config_button"
	},
	"joy_config_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(56, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(56, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/joy_config_button_pressed"
	},
	"key_config_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(56, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(56, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/key_config_button"
	},
	"key_config_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(56, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(56, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/key_config_button_pressed"
	},
	"load_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/load_button"
	},
	"load_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/load_button_pressed"
	},
	"menu_bottom" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 4)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_bottom"
	},
	"menu_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_left"
	},
	"menu_ll" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 3)], [Vector2(1, 3), Vector2(15, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_ll"
	},
	"menu_lr" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 3)], [Vector2(0, 3), Vector2(15, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_lr"
	},
	"menu_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_right"
	},
	"menu_sel_off" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(208, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(208, 8)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_sel_off"
	},
	"menu_sel_on" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(208, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(208, 8)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_sel_on"
	},
	"menu_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 5), Vector2(16, 11)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_top"
	},
	"menu_ul" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 5), Vector2(15, 11)], [Vector2(0, 7), Vector2(1, 9)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_ul"
	},
	"menu_ur" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 5), Vector2(15, 11)], [Vector2(15, 6), Vector2(1, 10)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/menu_ur"
	},
	"new_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/new_button"
	},
	"new_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/new_button_pressed"
	},
	"ok_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(24, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/ok_button"
	},
	"ok_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(24, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(24, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/ok_button_pressed"
	},
	"page_down" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(7, 2)], [Vector2(2, 3), Vector2(5, 2)], [Vector2(3, 5), Vector2(3, 2)], [Vector2(4, 7), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/page_down"
	},
	"page_up" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 0), Vector2(1, 7)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(5, 1), Vector2(1, 6)], [Vector2(2, 3), Vector2(1, 4)], [Vector2(6, 3), Vector2(1, 4)], [Vector2(1, 5), Vector2(1, 2)], [Vector2(7, 5), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/page_up"
	},
	"rim" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/rim"
	},
	"rim_deflect" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(1, 4)], [Vector2(14, 0), Vector2(1, 4)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(15, 1), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/rim_deflect"
	},
	"slider" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : [Vector2(2, 0), Vector2(4, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/slider"
	},
	"slider_bg" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(144, 8)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(144, 8)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/slider_bg"
	},
	"test_button" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/test_button"
	},
	"test_button_pressed" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(32, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/test_button_pressed"
	},
	"big_chest" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(5, 17), Vector2(37, 31)], [Vector2(3, 18), Vector2(2, 30)], [Vector2(42, 18), Vector2(2, 30)], [Vector2(2, 19), Vector2(1, 29)], [Vector2(44, 19), Vector2(1, 29)], [Vector2(45, 20), Vector2(1, 28)], [Vector2(1, 21), Vector2(1, 27)], [Vector2(46, 22), Vector2(1, 26)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/big_chest"
	},
	"big_chest_open" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(64, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(21, 11), Vector2(37, 22)], [Vector2(58, 12), Vector2(3, 19)], [Vector2(61, 13), Vector2(1, 17)], [Vector2(62, 14), Vector2(1, 14)], [Vector2(58, 31), Vector2(2, 1)], [Vector2(1, 33), Vector2(49, 2)], [Vector2(1, 35), Vector2(48, 1)], [Vector2(1, 36), Vector2(47, 1)], [Vector2(1, 37), Vector2(46, 11)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/big_chest_open"
	},
	"big_treasure" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(10, 2), Vector2(12, 30)], [Vector2(8, 3), Vector2(2, 29)], [Vector2(22, 3), Vector2(2, 29)], [Vector2(7, 4), Vector2(1, 28)], [Vector2(24, 4), Vector2(1, 28)], [Vector2(6, 5), Vector2(1, 26)], [Vector2(25, 5), Vector2(1, 26)], [Vector2(5, 6), Vector2(1, 20)], [Vector2(26, 7), Vector2(1, 19)], [Vector2(4, 11), Vector2(1, 10)], [Vector2(27, 11), Vector2(1, 10)], [Vector2(3, 13), Vector2(1, 6)], [Vector2(28, 13), Vector2(1, 6)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/big_treasure"
	},
	"end2_bg" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(320, 240)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(320, 240)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/end2_bg"
	},
	"end_wall" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(160, 144)],
			"collision_rectangles" : {
				0 : [[Vector2(33, 0), Vector2(14, 144)], [Vector2(32, 1), Vector2(1, 143)], [Vector2(47, 1), Vector2(1, 143)], [Vector2(31, 2), Vector2(1, 142)], [Vector2(48, 2), Vector2(1, 142)], [Vector2(29, 7), Vector2(2, 137)], [Vector2(49, 7), Vector2(2, 137)], [Vector2(27, 8), Vector2(2, 136)], [Vector2(51, 8), Vector2(2, 136)], [Vector2(25, 9), Vector2(2, 135)], [Vector2(53, 9), Vector2(2, 135)], [Vector2(7, 10), Vector2(5, 134)], [Vector2(23, 10), Vector2(2, 134)], [Vector2(55, 10), Vector2(2, 134)], [Vector2(68, 10), Vector2(5, 134)], [Vector2(6, 11), Vector2(1, 51)], [Vector2(12, 11), Vector2(1, 5)], [Vector2(21, 11), Vector2(2, 133)], [Vector2(57, 11), Vector2(2, 133)], [Vector2(67, 11), Vector2(1, 5)], [Vector2(73, 11), Vector2(1, 133)], [Vector2(5, 12), Vector2(1, 25)], [Vector2(13, 12), Vector2(1, 3)], [Vector2(20, 12), Vector2(1, 132)], [Vector2(59, 12), Vector2(1, 132)], [Vector2(66, 12), Vector2(1, 3)], [Vector2(74, 12), Vector2(1, 132)], [Vector2(19, 13), Vector2(1, 131)], [Vector2(60, 13), Vector2(1, 131)], [Vector2(4, 14), Vector2(1, 23)], [Vector2(18, 14), Vector2(1, 130)], [Vector2(61, 14), Vector2(1, 130)], [Vector2(75, 14), Vector2(1, 130)], [Vector2(17, 15), Vector2(1, 129)], [Vector2(62, 15), Vector2(1, 129)], [Vector2(16, 16), Vector2(1, 128)], [Vector2(63, 16), Vector2(1, 128)], [Vector2(12, 17), Vector2(1, 127)], [Vector2(15, 17), Vector2(1, 127)], [Vector2(64, 17), Vector2(1, 127)], [Vector2(67, 17), Vector2(1, 127)], [Vector2(13, 18), Vector2(2, 126)], [Vector2(65, 18), Vector2(2, 126)], [Vector2(3, 20), Vector2(1, 16)], [Vector2(76, 20), Vector2(1, 124)], [Vector2(2, 21), Vector2(1, 14)], [Vector2(77, 21), Vector2(1, 123)], [Vector2(106, 21), Vector2(3, 123)], [Vector2(111, 21), Vector2(3, 123)], [Vector2(1, 22), Vector2(1, 12)], [Vector2(78, 22), Vector2(1, 122)], [Vector2(80, 22), Vector2(4, 122)], [Vector2(103, 22), Vector2(3, 122)], [Vector2(109, 22), Vector2(2, 122)], [Vector2(114, 22), Vector2(1, 122)], [Vector2(118, 22), Vector2(2, 122)], [Vector2(79, 23), Vector2(1, 121)], [Vector2(84, 23), Vector2(1, 121)], [Vector2(101, 23), Vector2(2, 121)], [Vector2(117, 23), Vector2(1, 121)], [Vector2(120, 23), Vector2(1, 121)], [Vector2(0, 24), Vector2(1, 8)], [Vector2(85, 24), Vector2(16, 120)], [Vector2(115, 24), Vector2(2, 120)], [Vector2(121, 24), Vector2(2, 120)], [Vector2(123, 26), Vector2(1, 118)], [Vector2(124, 59), Vector2(2, 85)], [Vector2(126, 60), Vector2(1, 84)], [Vector2(6, 65), Vector2(1, 79)], [Vector2(5, 66), Vector2(1, 78)], [Vector2(4, 67), Vector2(1, 77)], [Vector2(3, 69), Vector2(1, 75)], [Vector2(2, 71), Vector2(1, 73)], [Vector2(0, 72), Vector2(2, 71)], [Vector2(138, 83), Vector2(4, 61)], [Vector2(137, 84), Vector2(1, 60)], [Vector2(142, 84), Vector2(1, 60)], [Vector2(127, 85), Vector2(3, 59)], [Vector2(136, 85), Vector2(1, 59)], [Vector2(143, 85), Vector2(1, 59)], [Vector2(130, 86), Vector2(2, 58)], [Vector2(132, 87), Vector2(1, 57)], [Vector2(135, 87), Vector2(1, 57)], [Vector2(144, 87), Vector2(1, 57)], [Vector2(133, 88), Vector2(2, 56)], [Vector2(145, 90), Vector2(14, 54)], [Vector2(159, 91), Vector2(1, 53)], [Vector2(1, 143), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/end_wall"
	},
	"lava_spray" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(80, 256)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(2, 9)], [Vector2(13, 0), Vector2(4, 256)], [Vector2(20, 0), Vector2(7, 256)], [Vector2(31, 0), Vector2(7, 256)], [Vector2(42, 0), Vector2(6, 256)], [Vector2(53, 0), Vector2(6, 256)], [Vector2(63, 0), Vector2(4, 256)], [Vector2(1, 1), Vector2(2, 7)], [Vector2(5, 1), Vector2(2, 8)], [Vector2(9, 1), Vector2(4, 13)], [Vector2(17, 1), Vector2(3, 255)], [Vector2(27, 1), Vector2(4, 255)], [Vector2(38, 1), Vector2(4, 255)], [Vector2(48, 1), Vector2(5, 255)], [Vector2(59, 1), Vector2(4, 255)], [Vector2(67, 1), Vector2(2, 255)], [Vector2(71, 1), Vector2(3, 8)], [Vector2(0, 2), Vector2(1, 6)], [Vector2(3, 2), Vector2(2, 7)], [Vector2(69, 2), Vector2(2, 14)], [Vector2(74, 2), Vector2(1, 7)], [Vector2(77, 2), Vector2(2, 6)], [Vector2(75, 3), Vector2(2, 6)], [Vector2(79, 3), Vector2(1, 5)], [Vector2(2, 8), Vector2(1, 1)], [Vector2(77, 8), Vector2(1, 1)], [Vector2(8, 9), Vector2(1, 2)], [Vector2(71, 9), Vector2(2, 2)], [Vector2(71, 11), Vector2(1, 2)], [Vector2(10, 14), Vector2(3, 242)], [Vector2(69, 16), Vector2(1, 98)], [Vector2(9, 18), Vector2(1, 15)], [Vector2(70, 18), Vector2(1, 15)], [Vector2(8, 21), Vector2(1, 9)], [Vector2(71, 21), Vector2(1, 9)], [Vector2(7, 23), Vector2(1, 5)], [Vector2(72, 23), Vector2(1, 5)], [Vector2(9, 37), Vector2(1, 15)], [Vector2(70, 37), Vector2(1, 15)], [Vector2(8, 40), Vector2(1, 9)], [Vector2(71, 40), Vector2(1, 9)], [Vector2(7, 42), Vector2(1, 5)], [Vector2(72, 42), Vector2(1, 5)], [Vector2(9, 56), Vector2(1, 15)], [Vector2(70, 56), Vector2(1, 15)], [Vector2(8, 59), Vector2(1, 9)], [Vector2(71, 59), Vector2(1, 9)], [Vector2(7, 61), Vector2(1, 5)], [Vector2(72, 61), Vector2(1, 5)], [Vector2(9, 75), Vector2(1, 15)], [Vector2(70, 75), Vector2(1, 15)], [Vector2(8, 78), Vector2(1, 9)], [Vector2(71, 78), Vector2(1, 9)], [Vector2(7, 80), Vector2(1, 5)], [Vector2(72, 80), Vector2(1, 5)], [Vector2(9, 94), Vector2(1, 15)], [Vector2(70, 94), Vector2(1, 15)], [Vector2(8, 97), Vector2(1, 9)], [Vector2(71, 97), Vector2(1, 9)], [Vector2(7, 99), Vector2(1, 5)], [Vector2(72, 99), Vector2(1, 5)], [Vector2(9, 113), Vector2(1, 143)], [Vector2(70, 113), Vector2(1, 1)], [Vector2(8, 116), Vector2(1, 15)], [Vector2(69, 116), Vector2(1, 15)], [Vector2(7, 119), Vector2(1, 9)], [Vector2(70, 119), Vector2(1, 9)], [Vector2(6, 121), Vector2(1, 5)], [Vector2(71, 121), Vector2(1, 5)], [Vector2(8, 135), Vector2(1, 15)], [Vector2(69, 135), Vector2(1, 15)], [Vector2(7, 138), Vector2(1, 9)], [Vector2(70, 138), Vector2(1, 9)], [Vector2(6, 140), Vector2(1, 5)], [Vector2(71, 140), Vector2(1, 5)], [Vector2(8, 154), Vector2(1, 15)], [Vector2(69, 154), Vector2(1, 15)], [Vector2(7, 157), Vector2(1, 9)], [Vector2(70, 157), Vector2(1, 9)], [Vector2(6, 159), Vector2(1, 5)], [Vector2(71, 159), Vector2(1, 5)], [Vector2(8, 173), Vector2(1, 15)], [Vector2(69, 173), Vector2(1, 15)], [Vector2(7, 176), Vector2(1, 9)], [Vector2(70, 176), Vector2(1, 9)], [Vector2(6, 178), Vector2(1, 5)], [Vector2(71, 178), Vector2(1, 5)], [Vector2(8, 192), Vector2(1, 15)], [Vector2(69, 192), Vector2(1, 15)], [Vector2(7, 195), Vector2(1, 9)], [Vector2(70, 195), Vector2(1, 9)], [Vector2(6, 197), Vector2(1, 5)], [Vector2(71, 197), Vector2(1, 5)], [Vector2(8, 211), Vector2(1, 15)], [Vector2(69, 211), Vector2(1, 15)], [Vector2(7, 214), Vector2(1, 9)], [Vector2(70, 214), Vector2(1, 9)], [Vector2(6, 216), Vector2(1, 5)], [Vector2(71, 216), Vector2(1, 5)], [Vector2(8, 230), Vector2(1, 15)], [Vector2(69, 230), Vector2(1, 15)], [Vector2(7, 233), Vector2(1, 9)], [Vector2(70, 233), Vector2(1, 9)], [Vector2(6, 235), Vector2(1, 5)], [Vector2(71, 235), Vector2(1, 5)], [Vector2(8, 249), Vector2(1, 7)], [Vector2(69, 249), Vector2(1, 7)], [Vector2(7, 252), Vector2(1, 4)], [Vector2(70, 252), Vector2(1, 4)], [Vector2(6, 254), Vector2(1, 2)], [Vector2(71, 254), Vector2(1, 2)]],
		1 : [[Vector2(7, 0), Vector2(2, 9)], [Vector2(13, 0), Vector2(4, 254)], [Vector2(20, 0), Vector2(7, 254)], [Vector2(31, 0), Vector2(7, 254)], [Vector2(42, 0), Vector2(6, 254)], [Vector2(53, 0), Vector2(6, 254)], [Vector2(63, 0), Vector2(4, 254)], [Vector2(1, 1), Vector2(2, 7)], [Vector2(5, 1), Vector2(2, 8)], [Vector2(9, 1), Vector2(4, 13)], [Vector2(17, 1), Vector2(3, 253)], [Vector2(27, 1), Vector2(4, 253)], [Vector2(38, 1), Vector2(4, 253)], [Vector2(48, 1), Vector2(5, 253)], [Vector2(59, 1), Vector2(4, 253)], [Vector2(67, 1), Vector2(2, 253)], [Vector2(71, 1), Vector2(3, 8)], [Vector2(0, 2), Vector2(1, 6)], [Vector2(3, 2), Vector2(2, 7)], [Vector2(69, 2), Vector2(2, 14)], [Vector2(74, 2), Vector2(1, 7)], [Vector2(77, 2), Vector2(2, 6)], [Vector2(75, 3), Vector2(2, 6)], [Vector2(79, 3), Vector2(1, 5)], [Vector2(2, 8), Vector2(1, 1)], [Vector2(77, 8), Vector2(1, 1)], [Vector2(8, 9), Vector2(1, 2)], [Vector2(71, 9), Vector2(2, 2)], [Vector2(71, 11), Vector2(1, 2)], [Vector2(10, 14), Vector2(3, 240)], [Vector2(69, 16), Vector2(1, 96)], [Vector2(9, 17), Vector2(1, 14)], [Vector2(70, 17), Vector2(1, 14)], [Vector2(8, 19), Vector2(1, 9)], [Vector2(71, 19), Vector2(1, 9)], [Vector2(7, 21), Vector2(1, 5)], [Vector2(72, 21), Vector2(1, 5)], [Vector2(9, 35), Vector2(1, 15)], [Vector2(70, 35), Vector2(1, 15)], [Vector2(8, 38), Vector2(1, 9)], [Vector2(71, 38), Vector2(1, 9)], [Vector2(7, 40), Vector2(1, 5)], [Vector2(72, 40), Vector2(1, 5)], [Vector2(9, 54), Vector2(1, 15)], [Vector2(70, 54), Vector2(1, 15)], [Vector2(8, 57), Vector2(1, 9)], [Vector2(71, 57), Vector2(1, 9)], [Vector2(7, 59), Vector2(1, 5)], [Vector2(72, 59), Vector2(1, 5)], [Vector2(9, 73), Vector2(1, 15)], [Vector2(70, 73), Vector2(1, 15)], [Vector2(8, 76), Vector2(1, 9)], [Vector2(71, 76), Vector2(1, 9)], [Vector2(7, 78), Vector2(1, 5)], [Vector2(72, 78), Vector2(1, 5)], [Vector2(9, 92), Vector2(1, 15)], [Vector2(70, 92), Vector2(1, 15)], [Vector2(8, 95), Vector2(1, 9)], [Vector2(71, 95), Vector2(1, 9)], [Vector2(7, 97), Vector2(1, 5)], [Vector2(72, 97), Vector2(1, 5)], [Vector2(9, 111), Vector2(1, 143)], [Vector2(70, 111), Vector2(1, 1)], [Vector2(8, 114), Vector2(1, 15)], [Vector2(69, 114), Vector2(1, 15)], [Vector2(7, 117), Vector2(1, 9)], [Vector2(70, 117), Vector2(1, 9)], [Vector2(6, 119), Vector2(1, 5)], [Vector2(71, 119), Vector2(1, 5)], [Vector2(8, 133), Vector2(1, 15)], [Vector2(69, 133), Vector2(1, 15)], [Vector2(7, 136), Vector2(1, 9)], [Vector2(70, 136), Vector2(1, 9)], [Vector2(6, 138), Vector2(1, 5)], [Vector2(71, 138), Vector2(1, 5)], [Vector2(8, 152), Vector2(1, 15)], [Vector2(69, 152), Vector2(1, 15)], [Vector2(7, 155), Vector2(1, 9)], [Vector2(70, 155), Vector2(1, 9)], [Vector2(6, 157), Vector2(1, 5)], [Vector2(71, 157), Vector2(1, 5)], [Vector2(8, 171), Vector2(1, 15)], [Vector2(69, 171), Vector2(1, 15)], [Vector2(7, 174), Vector2(1, 9)], [Vector2(70, 174), Vector2(1, 9)], [Vector2(6, 176), Vector2(1, 5)], [Vector2(71, 176), Vector2(1, 5)], [Vector2(8, 190), Vector2(1, 15)], [Vector2(69, 190), Vector2(1, 15)], [Vector2(7, 193), Vector2(1, 9)], [Vector2(70, 193), Vector2(1, 9)], [Vector2(6, 195), Vector2(1, 5)], [Vector2(71, 195), Vector2(1, 5)], [Vector2(8, 209), Vector2(1, 15)], [Vector2(69, 209), Vector2(1, 15)], [Vector2(7, 212), Vector2(1, 9)], [Vector2(70, 212), Vector2(1, 9)], [Vector2(6, 214), Vector2(1, 5)], [Vector2(71, 214), Vector2(1, 5)], [Vector2(8, 228), Vector2(1, 15)], [Vector2(69, 228), Vector2(1, 15)], [Vector2(7, 231), Vector2(1, 9)], [Vector2(70, 231), Vector2(1, 9)], [Vector2(6, 233), Vector2(1, 5)], [Vector2(71, 233), Vector2(1, 5)], [Vector2(8, 247), Vector2(1, 7)], [Vector2(69, 247), Vector2(1, 7)], [Vector2(7, 250), Vector2(1, 4)], [Vector2(70, 250), Vector2(1, 4)], [Vector2(6, 252), Vector2(1, 2)], [Vector2(71, 252), Vector2(1, 2)]],
		2 : [[Vector2(7, 0), Vector2(2, 9)], [Vector2(13, 0), Vector2(4, 251)], [Vector2(20, 0), Vector2(7, 251)], [Vector2(31, 0), Vector2(7, 251)], [Vector2(42, 0), Vector2(6, 251)], [Vector2(53, 0), Vector2(6, 251)], [Vector2(63, 0), Vector2(4, 251)], [Vector2(1, 1), Vector2(2, 7)], [Vector2(5, 1), Vector2(2, 8)], [Vector2(9, 1), Vector2(4, 13)], [Vector2(17, 1), Vector2(3, 250)], [Vector2(27, 1), Vector2(4, 250)], [Vector2(38, 1), Vector2(4, 250)], [Vector2(48, 1), Vector2(5, 250)], [Vector2(59, 1), Vector2(4, 250)], [Vector2(67, 1), Vector2(2, 250)], [Vector2(71, 1), Vector2(3, 8)], [Vector2(0, 2), Vector2(1, 6)], [Vector2(3, 2), Vector2(2, 7)], [Vector2(69, 2), Vector2(2, 26)], [Vector2(74, 2), Vector2(1, 7)], [Vector2(77, 2), Vector2(2, 6)], [Vector2(75, 3), Vector2(2, 6)], [Vector2(79, 3), Vector2(1, 5)], [Vector2(2, 8), Vector2(1, 1)], [Vector2(77, 8), Vector2(1, 1)], [Vector2(8, 9), Vector2(1, 2)], [Vector2(71, 9), Vector2(2, 2)], [Vector2(71, 11), Vector2(1, 2)], [Vector2(10, 14), Vector2(3, 237)], [Vector2(9, 15), Vector2(1, 13)], [Vector2(8, 16), Vector2(1, 9)], [Vector2(71, 16), Vector2(1, 9)], [Vector2(7, 18), Vector2(1, 5)], [Vector2(72, 18), Vector2(1, 5)], [Vector2(69, 28), Vector2(1, 81)], [Vector2(9, 32), Vector2(1, 15)], [Vector2(70, 32), Vector2(1, 15)], [Vector2(8, 35), Vector2(1, 9)], [Vector2(71, 35), Vector2(1, 9)], [Vector2(7, 37), Vector2(1, 5)], [Vector2(72, 37), Vector2(1, 5)], [Vector2(9, 51), Vector2(1, 15)], [Vector2(70, 51), Vector2(1, 15)], [Vector2(8, 54), Vector2(1, 9)], [Vector2(71, 54), Vector2(1, 9)], [Vector2(7, 56), Vector2(1, 5)], [Vector2(72, 56), Vector2(1, 5)], [Vector2(9, 70), Vector2(1, 15)], [Vector2(70, 70), Vector2(1, 15)], [Vector2(8, 73), Vector2(1, 9)], [Vector2(71, 73), Vector2(1, 9)], [Vector2(7, 75), Vector2(1, 5)], [Vector2(72, 75), Vector2(1, 5)], [Vector2(9, 89), Vector2(1, 15)], [Vector2(70, 89), Vector2(1, 15)], [Vector2(8, 92), Vector2(1, 9)], [Vector2(71, 92), Vector2(1, 9)], [Vector2(7, 94), Vector2(1, 5)], [Vector2(72, 94), Vector2(1, 5)], [Vector2(9, 108), Vector2(1, 143)], [Vector2(70, 108), Vector2(1, 1)], [Vector2(8, 111), Vector2(1, 15)], [Vector2(69, 111), Vector2(1, 15)], [Vector2(7, 114), Vector2(1, 9)], [Vector2(70, 114), Vector2(1, 9)], [Vector2(6, 116), Vector2(1, 5)], [Vector2(71, 116), Vector2(1, 5)], [Vector2(8, 130), Vector2(1, 15)], [Vector2(69, 130), Vector2(1, 15)], [Vector2(7, 133), Vector2(1, 9)], [Vector2(70, 133), Vector2(1, 9)], [Vector2(6, 135), Vector2(1, 5)], [Vector2(71, 135), Vector2(1, 5)], [Vector2(8, 149), Vector2(1, 15)], [Vector2(69, 149), Vector2(1, 15)], [Vector2(7, 152), Vector2(1, 9)], [Vector2(70, 152), Vector2(1, 9)], [Vector2(6, 154), Vector2(1, 5)], [Vector2(71, 154), Vector2(1, 5)], [Vector2(8, 168), Vector2(1, 15)], [Vector2(69, 168), Vector2(1, 15)], [Vector2(7, 171), Vector2(1, 9)], [Vector2(70, 171), Vector2(1, 9)], [Vector2(6, 173), Vector2(1, 5)], [Vector2(71, 173), Vector2(1, 5)], [Vector2(8, 187), Vector2(1, 15)], [Vector2(69, 187), Vector2(1, 15)], [Vector2(7, 190), Vector2(1, 9)], [Vector2(70, 190), Vector2(1, 9)], [Vector2(6, 192), Vector2(1, 5)], [Vector2(71, 192), Vector2(1, 5)], [Vector2(8, 206), Vector2(1, 15)], [Vector2(69, 206), Vector2(1, 15)], [Vector2(7, 209), Vector2(1, 9)], [Vector2(70, 209), Vector2(1, 9)], [Vector2(6, 211), Vector2(1, 5)], [Vector2(71, 211), Vector2(1, 5)], [Vector2(8, 225), Vector2(1, 15)], [Vector2(69, 225), Vector2(1, 15)], [Vector2(7, 228), Vector2(1, 9)], [Vector2(70, 228), Vector2(1, 9)], [Vector2(6, 230), Vector2(1, 5)], [Vector2(71, 230), Vector2(1, 5)], [Vector2(8, 244), Vector2(1, 7)], [Vector2(69, 244), Vector2(1, 7)], [Vector2(7, 247), Vector2(1, 4)], [Vector2(70, 247), Vector2(1, 4)], [Vector2(6, 249), Vector2(1, 2)], [Vector2(71, 249), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/end/lava_spray"
	},
	"player_sil" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 7)], [Vector2(0, 1), Vector2(2, 1)], [Vector2(6, 1), Vector2(2, 1)], [Vector2(1, 4), Vector2(1, 1)], [Vector2(6, 4), Vector2(1, 1)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(6, 7), Vector2(1, 1)]],
		1 : [[Vector2(1, 0), Vector2(2, 5)], [Vector2(4, 0), Vector2(1, 8)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 1)], [Vector2(5, 2), Vector2(1, 5)], [Vector2(6, 3), Vector2(1, 3)], [Vector2(0, 4), Vector2(1, 1)], [Vector2(2, 5), Vector2(1, 1)], [Vector2(7, 5), Vector2(1, 1)], [Vector2(1, 6), Vector2(1, 1)]],
		2 : [[Vector2(1, 0), Vector2(1, 8)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 1)], [Vector2(2, 2), Vector2(2, 4)], [Vector2(5, 2), Vector2(2, 4)], [Vector2(0, 3), Vector2(1, 3)], [Vector2(7, 6), Vector2(1, 1)]],
		3 : [[Vector2(5, 0), Vector2(1, 6)], [Vector2(1, 1), Vector2(1, 1)], [Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 6)], [Vector2(6, 2), Vector2(1, 3)], [Vector2(0, 3), Vector2(2, 1)], [Vector2(7, 3), Vector2(1, 1)], [Vector2(1, 4), Vector2(1, 4)], [Vector2(0, 5), Vector2(1, 2)], [Vector2(6, 6), Vector2(1, 1)], [Vector2(4, 7), Vector2(1, 1)]],
		4 : [[Vector2(1, 0), Vector2(1, 1)], [Vector2(6, 0), Vector2(1, 1)], [Vector2(2, 1), Vector2(4, 7)], [Vector2(1, 3), Vector2(1, 1)], [Vector2(6, 3), Vector2(1, 1)], [Vector2(0, 6), Vector2(2, 1)], [Vector2(6, 6), Vector2(2, 1)]],
		5 : [[Vector2(3, 0), Vector2(1, 8)], [Vector2(2, 1), Vector2(1, 5)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(6, 1), Vector2(1, 1)], [Vector2(0, 2), Vector2(2, 1)], [Vector2(5, 2), Vector2(1, 6)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(2, 1)], [Vector2(6, 4), Vector2(1, 4)], [Vector2(7, 5), Vector2(1, 2)], [Vector2(1, 6), Vector2(1, 1)]],
		6 : [[Vector2(6, 0), Vector2(1, 8)], [Vector2(0, 1), Vector2(1, 1)], [Vector2(3, 1), Vector2(1, 6)], [Vector2(1, 2), Vector2(2, 4)], [Vector2(4, 2), Vector2(2, 4)], [Vector2(7, 2), Vector2(1, 4)], [Vector2(0, 6), Vector2(1, 1)]],
		7 : [[Vector2(3, 0), Vector2(1, 7)], [Vector2(5, 0), Vector2(2, 5)], [Vector2(1, 1), Vector2(1, 1)], [Vector2(4, 1), Vector2(1, 6)], [Vector2(7, 1), Vector2(1, 2)], [Vector2(2, 2), Vector2(1, 6)], [Vector2(1, 3), Vector2(1, 3)], [Vector2(0, 4), Vector2(1, 1)], [Vector2(7, 4), Vector2(1, 1)], [Vector2(5, 5), Vector2(1, 1)], [Vector2(6, 6), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/end/player_sil"
	},
	"sprite1112" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(480, 240)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(480, 240)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/prite1112"
	},
	"treasure_sil" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(2, 0), Vector2(4, 2)], [Vector2(1, 1), Vector2(1, 7)], [Vector2(6, 1), Vector2(1, 7)], [Vector2(3, 2), Vector2(2, 2)], [Vector2(2, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(1, 1)], [Vector2(2, 5), Vector2(4, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/end/treasure_sil"
	},
	"volcano_flame" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 6), Vector2(2, 4)], [Vector2(6, 7), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 2)]],
		1 : [[Vector2(7, 5), Vector2(2, 5)], [Vector2(6, 6), Vector2(1, 4)], [Vector2(9, 6), Vector2(1, 3)], [Vector2(5, 7), Vector2(1, 2)]],
		2 : [[Vector2(6, 6), Vector2(4, 4)], [Vector2(5, 7), Vector2(1, 3)], [Vector2(6, 10), Vector2(3, 1)]],
		3 : [[Vector2(7, 6), Vector2(1, 5)], [Vector2(6, 7), Vector2(1, 3)], [Vector2(8, 7), Vector2(1, 3)], [Vector2(9, 8), Vector2(1, 1)]],
		4 : [[Vector2(6, 6), Vector2(3, 4)], [Vector2(5, 7), Vector2(1, 2)], [Vector2(9, 7), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/end/volcano_flame"
	},
	"bg_end3" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(480, 112)],
			"collision_rectangles" : {
				0 : [[Vector2(183, 3), Vector2(6, 109)], [Vector2(175, 4), Vector2(8, 108)], [Vector2(189, 4), Vector2(1, 108)], [Vector2(171, 5), Vector2(4, 107)], [Vector2(190, 5), Vector2(1, 107)], [Vector2(167, 6), Vector2(4, 106)], [Vector2(191, 6), Vector2(1, 106)], [Vector2(164, 7), Vector2(3, 105)], [Vector2(161, 8), Vector2(3, 104)], [Vector2(192, 8), Vector2(1, 104)], [Vector2(159, 9), Vector2(2, 103)], [Vector2(193, 9), Vector2(1, 103)], [Vector2(157, 10), Vector2(2, 102)], [Vector2(194, 10), Vector2(2, 102)], [Vector2(154, 11), Vector2(3, 101)], [Vector2(196, 11), Vector2(1, 101)], [Vector2(54, 12), Vector2(4, 100)], [Vector2(153, 12), Vector2(1, 100)], [Vector2(197, 12), Vector2(2, 100)], [Vector2(50, 13), Vector2(4, 99)], [Vector2(58, 13), Vector2(2, 99)], [Vector2(151, 13), Vector2(2, 99)], [Vector2(199, 13), Vector2(2, 99)], [Vector2(47, 14), Vector2(3, 98)], [Vector2(60, 14), Vector2(1, 98)], [Vector2(149, 14), Vector2(2, 98)], [Vector2(201, 14), Vector2(2, 98)], [Vector2(44, 15), Vector2(3, 97)], [Vector2(61, 15), Vector2(2, 97)], [Vector2(147, 15), Vector2(2, 97)], [Vector2(203, 15), Vector2(2, 97)], [Vector2(345, 15), Vector2(7, 97)], [Vector2(42, 16), Vector2(2, 96)], [Vector2(63, 16), Vector2(2, 96)], [Vector2(145, 16), Vector2(2, 96)], [Vector2(205, 16), Vector2(1, 96)], [Vector2(342, 16), Vector2(3, 96)], [Vector2(352, 16), Vector2(3, 96)], [Vector2(39, 17), Vector2(3, 95)], [Vector2(65, 17), Vector2(2, 95)], [Vector2(144, 17), Vector2(1, 95)], [Vector2(206, 17), Vector2(2, 95)], [Vector2(340, 17), Vector2(2, 95)], [Vector2(355, 17), Vector2(2, 95)], [Vector2(37, 18), Vector2(2, 94)], [Vector2(67, 18), Vector2(4, 94)], [Vector2(142, 18), Vector2(2, 94)], [Vector2(208, 18), Vector2(2, 94)], [Vector2(339, 18), Vector2(1, 94)], [Vector2(357, 18), Vector2(2, 94)], [Vector2(35, 19), Vector2(2, 93)], [Vector2(71, 19), Vector2(3, 93)], [Vector2(140, 19), Vector2(2, 93)], [Vector2(210, 19), Vector2(1, 93)], [Vector2(336, 19), Vector2(3, 93)], [Vector2(359, 19), Vector2(2, 93)], [Vector2(32, 20), Vector2(3, 92)], [Vector2(74, 20), Vector2(3, 92)], [Vector2(138, 20), Vector2(2, 92)], [Vector2(211, 20), Vector2(1, 92)], [Vector2(334, 20), Vector2(2, 92)], [Vector2(361, 20), Vector2(3, 92)], [Vector2(29, 21), Vector2(3, 91)], [Vector2(77, 21), Vector2(3, 91)], [Vector2(136, 21), Vector2(2, 91)], [Vector2(212, 21), Vector2(1, 91)], [Vector2(268, 21), Vector2(8, 91)], [Vector2(332, 21), Vector2(2, 91)], [Vector2(364, 21), Vector2(1, 91)], [Vector2(27, 22), Vector2(2, 90)], [Vector2(80, 22), Vector2(3, 90)], [Vector2(134, 22), Vector2(2, 90)], [Vector2(213, 22), Vector2(2, 90)], [Vector2(264, 22), Vector2(4, 90)], [Vector2(276, 22), Vector2(3, 90)], [Vector2(330, 22), Vector2(2, 90)], [Vector2(365, 22), Vector2(2, 90)], [Vector2(21, 23), Vector2(6, 89)], [Vector2(83, 23), Vector2(2, 89)], [Vector2(132, 23), Vector2(2, 89)], [Vector2(215, 23), Vector2(1, 89)], [Vector2(259, 23), Vector2(5, 89)], [Vector2(279, 23), Vector2(2, 89)], [Vector2(328, 23), Vector2(2, 89)], [Vector2(367, 23), Vector2(1, 89)], [Vector2(19, 24), Vector2(2, 88)], [Vector2(85, 24), Vector2(3, 88)], [Vector2(129, 24), Vector2(3, 88)], [Vector2(216, 24), Vector2(1, 88)], [Vector2(256, 24), Vector2(3, 88)], [Vector2(281, 24), Vector2(2, 88)], [Vector2(326, 24), Vector2(2, 88)], [Vector2(368, 24), Vector2(1, 88)], [Vector2(15, 25), Vector2(4, 87)], [Vector2(88, 25), Vector2(1, 87)], [Vector2(126, 25), Vector2(3, 87)], [Vector2(217, 25), Vector2(2, 87)], [Vector2(254, 25), Vector2(2, 87)], [Vector2(283, 25), Vector2(2, 87)], [Vector2(324, 25), Vector2(2, 87)], [Vector2(369, 25), Vector2(1, 87)], [Vector2(12, 26), Vector2(3, 86)], [Vector2(89, 26), Vector2(3, 86)], [Vector2(124, 26), Vector2(2, 86)], [Vector2(219, 26), Vector2(1, 86)], [Vector2(251, 26), Vector2(3, 86)], [Vector2(285, 26), Vector2(2, 86)], [Vector2(321, 26), Vector2(3, 86)], [Vector2(370, 26), Vector2(2, 86)], [Vector2(415, 26), Vector2(11, 86)], [Vector2(9, 27), Vector2(3, 85)], [Vector2(92, 27), Vector2(4, 85)], [Vector2(120, 27), Vector2(4, 85)], [Vector2(220, 27), Vector2(2, 85)], [Vector2(248, 27), Vector2(3, 85)], [Vector2(287, 27), Vector2(2, 85)], [Vector2(315, 27), Vector2(6, 85)], [Vector2(372, 27), Vector2(3, 85)], [Vector2(405, 27), Vector2(10, 85)], [Vector2(426, 27), Vector2(9, 85)], [Vector2(0, 28), Vector2(9, 83)], [Vector2(96, 28), Vector2(9, 84)], [Vector2(113, 28), Vector2(7, 84)], [Vector2(222, 28), Vector2(1, 84)], [Vector2(245, 28), Vector2(3, 84)], [Vector2(289, 28), Vector2(2, 84)], [Vector2(312, 28), Vector2(3, 84)], [Vector2(375, 28), Vector2(3, 84)], [Vector2(401, 28), Vector2(4, 84)], [Vector2(435, 28), Vector2(7, 84)], [Vector2(445, 28), Vector2(10, 84)], [Vector2(105, 29), Vector2(8, 83)], [Vector2(223, 29), Vector2(3, 83)], [Vector2(240, 29), Vector2(5, 83)], [Vector2(291, 29), Vector2(4, 83)], [Vector2(307, 29), Vector2(5, 83)], [Vector2(378, 29), Vector2(5, 83)], [Vector2(395, 29), Vector2(6, 83)], [Vector2(442, 29), Vector2(3, 83)], [Vector2(455, 29), Vector2(11, 83)], [Vector2(226, 30), Vector2(4, 82)], [Vector2(237, 30), Vector2(3, 82)], [Vector2(295, 30), Vector2(12, 82)], [Vector2(383, 30), Vector2(3, 82)], [Vector2(392, 30), Vector2(3, 82)], [Vector2(466, 30), Vector2(8, 82)], [Vector2(230, 31), Vector2(7, 81)], [Vector2(386, 31), Vector2(6, 81)], [Vector2(474, 31), Vector2(6, 81)], [Vector2(1, 111), Vector2(8, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/bg_end3"
	},
	"camel" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(21, 3), Vector2(6, 38)], [Vector2(20, 4), Vector2(1, 7)], [Vector2(27, 4), Vector2(1, 31)], [Vector2(18, 6), Vector2(2, 2)], [Vector2(28, 6), Vector2(1, 3)], [Vector2(29, 7), Vector2(1, 2)], [Vector2(19, 12), Vector2(2, 23)], [Vector2(28, 12), Vector2(3, 24)], [Vector2(18, 13), Vector2(1, 2)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 20)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 20)], [Vector2(39, 21), Vector2(1, 27)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 26)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 15)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 24)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 23)], [Vector2(44, 26), Vector2(1, 22)], [Vector2(45, 27), Vector2(1, 21)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 8)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(20, 35), Vector2(1, 3)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(27, 39), Vector2(1, 9)], [Vector2(22, 41), Vector2(5, 2)], [Vector2(22, 43), Vector2(2, 5)], [Vector2(25, 43), Vector2(2, 5)], [Vector2(28, 43), Vector2(1, 5)], [Vector2(21, 46), Vector2(1, 2)], [Vector2(24, 46), Vector2(1, 2)], [Vector2(38, 46), Vector2(1, 2)], [Vector2(41, 46), Vector2(1, 2)], [Vector2(37, 47), Vector2(1, 1)]],
		1 : [[Vector2(21, 4), Vector2(6, 35)], [Vector2(20, 5), Vector2(1, 7)], [Vector2(27, 5), Vector2(1, 43)], [Vector2(18, 7), Vector2(2, 2)], [Vector2(28, 7), Vector2(1, 3)], [Vector2(29, 8), Vector2(1, 2)], [Vector2(19, 13), Vector2(2, 22)], [Vector2(28, 13), Vector2(3, 24)], [Vector2(18, 14), Vector2(1, 2)], [Vector2(31, 14), Vector2(2, 23)], [Vector2(33, 15), Vector2(1, 23)], [Vector2(5, 16), Vector2(5, 7)], [Vector2(34, 16), Vector2(2, 21)], [Vector2(3, 17), Vector2(2, 7)], [Vector2(10, 17), Vector2(3, 2)], [Vector2(36, 17), Vector2(1, 21)], [Vector2(1, 18), Vector2(2, 6)], [Vector2(37, 18), Vector2(1, 20)], [Vector2(0, 19), Vector2(1, 4)], [Vector2(10, 19), Vector2(2, 12)], [Vector2(38, 20), Vector2(1, 24)], [Vector2(39, 22), Vector2(1, 20)], [Vector2(5, 23), Vector2(1, 8)], [Vector2(7, 23), Vector2(3, 3)], [Vector2(40, 23), Vector2(1, 18)], [Vector2(2, 24), Vector2(2, 1)], [Vector2(12, 24), Vector2(1, 9)], [Vector2(41, 24), Vector2(1, 15)], [Vector2(18, 25), Vector2(1, 9)], [Vector2(42, 25), Vector2(1, 16)], [Vector2(8, 26), Vector2(2, 3)], [Vector2(13, 26), Vector2(1, 7)], [Vector2(17, 26), Vector2(1, 7)], [Vector2(43, 26), Vector2(1, 22)], [Vector2(14, 27), Vector2(3, 7)], [Vector2(44, 27), Vector2(1, 21)], [Vector2(45, 28), Vector2(1, 20)], [Vector2(9, 29), Vector2(1, 1)], [Vector2(46, 30), Vector2(1, 8)], [Vector2(6, 31), Vector2(1, 2)], [Vector2(11, 31), Vector2(1, 1)], [Vector2(7, 33), Vector2(1, 1)], [Vector2(8, 34), Vector2(1, 1)], [Vector2(15, 34), Vector2(1, 1)], [Vector2(47, 34), Vector2(1, 2)], [Vector2(9, 35), Vector2(6, 1)], [Vector2(20, 35), Vector2(1, 7)], [Vector2(32, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(19, 38), Vector2(1, 9)], [Vector2(21, 39), Vector2(2, 1)], [Vector2(24, 39), Vector2(3, 2)], [Vector2(18, 41), Vector2(1, 6)], [Vector2(25, 41), Vector2(2, 2)], [Vector2(28, 41), Vector2(1, 7)], [Vector2(37, 41), Vector2(1, 4)], [Vector2(46, 41), Vector2(1, 7)], [Vector2(26, 43), Vector2(1, 5)], [Vector2(29, 43), Vector2(1, 5)], [Vector2(36, 43), Vector2(1, 3)], [Vector2(20, 44), Vector2(1, 3)], [Vector2(34, 44), Vector2(2, 3)], [Vector2(25, 46), Vector2(1, 2)], [Vector2(42, 46), Vector2(1, 2)], [Vector2(41, 47), Vector2(1, 1)]],
		2 : [[Vector2(21, 4), Vector2(6, 34)], [Vector2(20, 5), Vector2(1, 7)], [Vector2(27, 5), Vector2(1, 31)], [Vector2(18, 7), Vector2(2, 2)], [Vector2(28, 7), Vector2(1, 3)], [Vector2(29, 8), Vector2(1, 2)], [Vector2(19, 13), Vector2(2, 27)], [Vector2(28, 13), Vector2(3, 24)], [Vector2(18, 14), Vector2(1, 2)], [Vector2(31, 14), Vector2(2, 23)], [Vector2(33, 15), Vector2(1, 23)], [Vector2(34, 16), Vector2(2, 21)], [Vector2(5, 17), Vector2(5, 7)], [Vector2(36, 17), Vector2(1, 21)], [Vector2(4, 18), Vector2(1, 7)], [Vector2(10, 18), Vector2(3, 2)], [Vector2(37, 18), Vector2(1, 26)], [Vector2(2, 19), Vector2(2, 7)], [Vector2(1, 20), Vector2(1, 5)], [Vector2(10, 20), Vector2(2, 11)], [Vector2(38, 20), Vector2(1, 23)], [Vector2(0, 21), Vector2(1, 3)], [Vector2(39, 22), Vector2(1, 19)], [Vector2(40, 23), Vector2(1, 16)], [Vector2(5, 24), Vector2(1, 7)], [Vector2(7, 24), Vector2(3, 2)], [Vector2(41, 24), Vector2(1, 15)], [Vector2(12, 25), Vector2(1, 8)], [Vector2(17, 25), Vector2(2, 8)], [Vector2(42, 25), Vector2(1, 15)], [Vector2(8, 26), Vector2(2, 3)], [Vector2(13, 26), Vector2(4, 7)], [Vector2(43, 26), Vector2(1, 16)], [Vector2(44, 27), Vector2(1, 21)], [Vector2(45, 28), Vector2(1, 20)], [Vector2(9, 29), Vector2(1, 1)], [Vector2(46, 30), Vector2(1, 18)], [Vector2(6, 31), Vector2(1, 2)], [Vector2(11, 31), Vector2(1, 1)], [Vector2(7, 33), Vector2(1, 1)], [Vector2(16, 33), Vector2(1, 1)], [Vector2(18, 33), Vector2(1, 1)], [Vector2(8, 34), Vector2(1, 1)], [Vector2(15, 34), Vector2(1, 1)], [Vector2(47, 34), Vector2(1, 2)], [Vector2(9, 35), Vector2(6, 1)], [Vector2(27, 37), Vector2(1, 11)], [Vector2(32, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(18, 38), Vector2(1, 5)], [Vector2(21, 38), Vector2(1, 1)], [Vector2(24, 38), Vector2(3, 1)], [Vector2(28, 38), Vector2(1, 10)], [Vector2(25, 39), Vector2(2, 2)], [Vector2(17, 40), Vector2(1, 7)], [Vector2(19, 40), Vector2(1, 1)], [Vector2(36, 40), Vector2(1, 6)], [Vector2(26, 41), Vector2(1, 2)], [Vector2(29, 41), Vector2(1, 7)], [Vector2(16, 42), Vector2(1, 6)], [Vector2(35, 42), Vector2(1, 6)], [Vector2(47, 42), Vector2(1, 6)], [Vector2(30, 43), Vector2(1, 5)], [Vector2(34, 44), Vector2(1, 4)], [Vector2(15, 45), Vector2(1, 3)], [Vector2(26, 46), Vector2(1, 2)], [Vector2(33, 46), Vector2(1, 2)], [Vector2(43, 46), Vector2(1, 2)], [Vector2(42, 47), Vector2(1, 1)]],
		3 : [[Vector2(21, 2), Vector2(6, 35)], [Vector2(20, 3), Vector2(1, 6)], [Vector2(27, 3), Vector2(1, 32)], [Vector2(19, 4), Vector2(1, 2)], [Vector2(28, 4), Vector2(1, 3)], [Vector2(18, 5), Vector2(1, 2)], [Vector2(29, 6), Vector2(1, 2)], [Vector2(19, 10), Vector2(2, 5)], [Vector2(28, 10), Vector2(1, 26)], [Vector2(18, 11), Vector2(1, 2)], [Vector2(29, 12), Vector2(2, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(20, 15), Vector2(1, 31)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(4, 16), Vector2(1, 7)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(19, 16), Vector2(1, 32)], [Vector2(36, 16), Vector2(1, 21)], [Vector2(2, 17), Vector2(2, 7)], [Vector2(37, 17), Vector2(1, 31)], [Vector2(1, 18), Vector2(1, 5)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(0, 19), Vector2(1, 3)], [Vector2(38, 19), Vector2(1, 29)], [Vector2(39, 21), Vector2(1, 22)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 18)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 18)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 20)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 20)], [Vector2(44, 26), Vector2(1, 20)], [Vector2(45, 27), Vector2(1, 10)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 8)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(21, 37), Vector2(1, 4)], [Vector2(23, 37), Vector2(4, 4)], [Vector2(24, 41), Vector2(4, 4)], [Vector2(45, 41), Vector2(1, 6)], [Vector2(46, 43), Vector2(1, 4)], [Vector2(18, 44), Vector2(1, 4)], [Vector2(28, 44), Vector2(1, 2)], [Vector2(36, 44), Vector2(1, 4)], [Vector2(47, 44), Vector2(1, 3)], [Vector2(25, 45), Vector2(3, 1)], [Vector2(17, 46), Vector2(1, 2)], [Vector2(26, 46), Vector2(2, 1)], [Vector2(16, 47), Vector2(1, 1)], [Vector2(35, 47), Vector2(1, 1)]],
		4 : [[Vector2(21, 1), Vector2(6, 36)], [Vector2(20, 2), Vector2(1, 8)], [Vector2(27, 2), Vector2(1, 33)], [Vector2(18, 3), Vector2(2, 2)], [Vector2(29, 3), Vector2(1, 3)], [Vector2(28, 4), Vector2(1, 4)], [Vector2(19, 5), Vector2(1, 1)], [Vector2(19, 11), Vector2(2, 24)], [Vector2(28, 11), Vector2(1, 25)], [Vector2(18, 12), Vector2(1, 2)], [Vector2(29, 12), Vector2(2, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 20)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 28)], [Vector2(39, 21), Vector2(1, 27)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 26)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 25)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 16)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 13)], [Vector2(44, 26), Vector2(1, 10)], [Vector2(45, 27), Vector2(1, 9)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 7)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(20, 35), Vector2(1, 13)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(21, 37), Vector2(5, 5)], [Vector2(19, 39), Vector2(1, 8)], [Vector2(37, 39), Vector2(1, 7)], [Vector2(18, 41), Vector2(1, 5)], [Vector2(21, 42), Vector2(1, 6)], [Vector2(23, 42), Vector2(3, 1)], [Vector2(23, 43), Vector2(2, 5)], [Vector2(22, 44), Vector2(1, 4)], [Vector2(42, 44), Vector2(1, 4)], [Vector2(25, 46), Vector2(1, 2)]],
		5 : [[Vector2(21, 4), Vector2(6, 33)], [Vector2(20, 5), Vector2(1, 6)], [Vector2(27, 5), Vector2(1, 30)], [Vector2(18, 6), Vector2(1, 2)], [Vector2(19, 7), Vector2(1, 2)], [Vector2(28, 7), Vector2(2, 2)], [Vector2(28, 9), Vector2(1, 1)], [Vector2(19, 12), Vector2(2, 23)], [Vector2(28, 12), Vector2(3, 24)], [Vector2(18, 13), Vector2(1, 2)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 31)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 29)], [Vector2(39, 21), Vector2(1, 26)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 20)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 17)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 17)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 23)], [Vector2(44, 26), Vector2(1, 22)], [Vector2(45, 27), Vector2(1, 9)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 7)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(20, 35), Vector2(1, 11)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(21, 37), Vector2(5, 5)], [Vector2(19, 38), Vector2(1, 10)], [Vector2(36, 39), Vector2(1, 9)], [Vector2(18, 40), Vector2(1, 8)], [Vector2(21, 42), Vector2(1, 2)], [Vector2(23, 42), Vector2(3, 6)], [Vector2(17, 43), Vector2(1, 5)], [Vector2(42, 44), Vector2(1, 4)], [Vector2(35, 45), Vector2(1, 3)], [Vector2(16, 46), Vector2(1, 2)], [Vector2(26, 46), Vector2(1, 2)], [Vector2(15, 47), Vector2(1, 1)], [Vector2(34, 47), Vector2(1, 1)], [Vector2(41, 47), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/intro/camel"
	},
	"camel_damsel" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(20, 3), Vector2(7, 35)], [Vector2(19, 4), Vector2(1, 31)], [Vector2(27, 4), Vector2(1, 31)], [Vector2(18, 5), Vector2(1, 3)], [Vector2(28, 5), Vector2(1, 31)], [Vector2(29, 6), Vector2(1, 2)], [Vector2(18, 10), Vector2(1, 7)], [Vector2(29, 10), Vector2(1, 26)], [Vector2(30, 12), Vector2(1, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(17, 15), Vector2(1, 2)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 20)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 20)], [Vector2(39, 21), Vector2(1, 27)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 26)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 15)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 24)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 23)], [Vector2(44, 26), Vector2(1, 22)], [Vector2(45, 27), Vector2(1, 21)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 8)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(21, 38), Vector2(6, 3)], [Vector2(27, 39), Vector2(1, 9)], [Vector2(22, 41), Vector2(5, 2)], [Vector2(22, 43), Vector2(2, 5)], [Vector2(25, 43), Vector2(2, 5)], [Vector2(28, 43), Vector2(1, 5)], [Vector2(21, 46), Vector2(1, 2)], [Vector2(24, 46), Vector2(1, 2)], [Vector2(38, 46), Vector2(1, 2)], [Vector2(41, 46), Vector2(1, 2)], [Vector2(37, 47), Vector2(1, 1)]],
		1 : [[Vector2(20, 4), Vector2(7, 35)], [Vector2(19, 5), Vector2(1, 30)], [Vector2(27, 5), Vector2(1, 43)], [Vector2(18, 6), Vector2(1, 3)], [Vector2(28, 6), Vector2(1, 31)], [Vector2(29, 7), Vector2(1, 2)], [Vector2(18, 11), Vector2(1, 7)], [Vector2(29, 11), Vector2(1, 26)], [Vector2(30, 13), Vector2(1, 24)], [Vector2(31, 14), Vector2(2, 23)], [Vector2(33, 15), Vector2(1, 23)], [Vector2(5, 16), Vector2(5, 7)], [Vector2(17, 16), Vector2(1, 2)], [Vector2(34, 16), Vector2(2, 21)], [Vector2(3, 17), Vector2(2, 7)], [Vector2(10, 17), Vector2(3, 2)], [Vector2(36, 17), Vector2(1, 21)], [Vector2(1, 18), Vector2(2, 6)], [Vector2(37, 18), Vector2(1, 20)], [Vector2(0, 19), Vector2(1, 4)], [Vector2(10, 19), Vector2(2, 12)], [Vector2(38, 20), Vector2(1, 24)], [Vector2(39, 22), Vector2(1, 20)], [Vector2(5, 23), Vector2(1, 8)], [Vector2(7, 23), Vector2(3, 3)], [Vector2(40, 23), Vector2(1, 18)], [Vector2(2, 24), Vector2(2, 1)], [Vector2(12, 24), Vector2(1, 9)], [Vector2(41, 24), Vector2(1, 15)], [Vector2(18, 25), Vector2(1, 9)], [Vector2(42, 25), Vector2(1, 16)], [Vector2(8, 26), Vector2(2, 3)], [Vector2(13, 26), Vector2(1, 7)], [Vector2(17, 26), Vector2(1, 7)], [Vector2(43, 26), Vector2(1, 22)], [Vector2(14, 27), Vector2(3, 7)], [Vector2(44, 27), Vector2(1, 21)], [Vector2(45, 28), Vector2(1, 20)], [Vector2(9, 29), Vector2(1, 1)], [Vector2(46, 30), Vector2(1, 8)], [Vector2(6, 31), Vector2(1, 2)], [Vector2(11, 31), Vector2(1, 1)], [Vector2(7, 33), Vector2(1, 1)], [Vector2(8, 34), Vector2(1, 1)], [Vector2(15, 34), Vector2(1, 1)], [Vector2(47, 34), Vector2(1, 2)], [Vector2(9, 35), Vector2(6, 1)], [Vector2(32, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(19, 38), Vector2(1, 9)], [Vector2(20, 39), Vector2(3, 1)], [Vector2(24, 39), Vector2(3, 2)], [Vector2(20, 40), Vector2(1, 2)], [Vector2(18, 41), Vector2(1, 6)], [Vector2(25, 41), Vector2(2, 2)], [Vector2(28, 41), Vector2(1, 7)], [Vector2(37, 41), Vector2(1, 4)], [Vector2(46, 41), Vector2(1, 7)], [Vector2(26, 43), Vector2(1, 5)], [Vector2(29, 43), Vector2(1, 5)], [Vector2(36, 43), Vector2(1, 3)], [Vector2(20, 44), Vector2(1, 3)], [Vector2(34, 44), Vector2(2, 3)], [Vector2(25, 46), Vector2(1, 2)], [Vector2(42, 46), Vector2(1, 2)], [Vector2(41, 47), Vector2(1, 1)]],
		2 : [[Vector2(20, 4), Vector2(7, 34)], [Vector2(19, 5), Vector2(1, 36)], [Vector2(27, 5), Vector2(1, 31)], [Vector2(18, 6), Vector2(1, 3)], [Vector2(28, 6), Vector2(1, 31)], [Vector2(29, 7), Vector2(1, 2)], [Vector2(18, 11), Vector2(1, 7)], [Vector2(29, 11), Vector2(1, 26)], [Vector2(30, 13), Vector2(1, 24)], [Vector2(31, 14), Vector2(2, 23)], [Vector2(33, 15), Vector2(1, 23)], [Vector2(17, 16), Vector2(1, 2)], [Vector2(34, 16), Vector2(2, 21)], [Vector2(5, 17), Vector2(5, 7)], [Vector2(36, 17), Vector2(1, 21)], [Vector2(4, 18), Vector2(1, 7)], [Vector2(10, 18), Vector2(3, 2)], [Vector2(37, 18), Vector2(1, 26)], [Vector2(2, 19), Vector2(2, 7)], [Vector2(1, 20), Vector2(1, 5)], [Vector2(10, 20), Vector2(2, 11)], [Vector2(38, 20), Vector2(1, 23)], [Vector2(0, 21), Vector2(1, 3)], [Vector2(39, 22), Vector2(1, 19)], [Vector2(40, 23), Vector2(1, 16)], [Vector2(5, 24), Vector2(1, 7)], [Vector2(7, 24), Vector2(3, 2)], [Vector2(41, 24), Vector2(1, 15)], [Vector2(12, 25), Vector2(1, 8)], [Vector2(17, 25), Vector2(2, 8)], [Vector2(42, 25), Vector2(1, 15)], [Vector2(8, 26), Vector2(2, 3)], [Vector2(13, 26), Vector2(4, 7)], [Vector2(43, 26), Vector2(1, 16)], [Vector2(44, 27), Vector2(1, 21)], [Vector2(45, 28), Vector2(1, 20)], [Vector2(9, 29), Vector2(1, 1)], [Vector2(46, 30), Vector2(1, 18)], [Vector2(6, 31), Vector2(1, 2)], [Vector2(11, 31), Vector2(1, 1)], [Vector2(7, 33), Vector2(1, 1)], [Vector2(16, 33), Vector2(1, 1)], [Vector2(18, 33), Vector2(1, 1)], [Vector2(8, 34), Vector2(1, 1)], [Vector2(15, 34), Vector2(1, 1)], [Vector2(47, 34), Vector2(1, 2)], [Vector2(9, 35), Vector2(6, 1)], [Vector2(27, 37), Vector2(1, 11)], [Vector2(32, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(18, 38), Vector2(1, 5)], [Vector2(20, 38), Vector2(2, 1)], [Vector2(24, 38), Vector2(3, 1)], [Vector2(28, 38), Vector2(1, 10)], [Vector2(20, 39), Vector2(1, 1)], [Vector2(25, 39), Vector2(2, 2)], [Vector2(17, 40), Vector2(1, 7)], [Vector2(36, 40), Vector2(1, 6)], [Vector2(26, 41), Vector2(1, 2)], [Vector2(29, 41), Vector2(1, 7)], [Vector2(16, 42), Vector2(1, 6)], [Vector2(35, 42), Vector2(1, 6)], [Vector2(47, 42), Vector2(1, 6)], [Vector2(30, 43), Vector2(1, 5)], [Vector2(34, 44), Vector2(1, 4)], [Vector2(15, 45), Vector2(1, 3)], [Vector2(26, 46), Vector2(1, 2)], [Vector2(33, 46), Vector2(1, 2)], [Vector2(43, 46), Vector2(1, 2)], [Vector2(42, 47), Vector2(1, 1)]],
		3 : [[Vector2(20, 1), Vector2(7, 36)], [Vector2(19, 2), Vector2(1, 13)], [Vector2(27, 2), Vector2(1, 33)], [Vector2(18, 3), Vector2(1, 3)], [Vector2(28, 3), Vector2(1, 33)], [Vector2(29, 4), Vector2(1, 2)], [Vector2(18, 8), Vector2(1, 7)], [Vector2(29, 8), Vector2(1, 2)], [Vector2(29, 11), Vector2(1, 25)], [Vector2(30, 12), Vector2(1, 24)], [Vector2(17, 13), Vector2(1, 2)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(4, 16), Vector2(1, 7)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(19, 16), Vector2(1, 32)], [Vector2(36, 16), Vector2(1, 21)], [Vector2(2, 17), Vector2(2, 7)], [Vector2(37, 17), Vector2(1, 31)], [Vector2(1, 18), Vector2(1, 5)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(0, 19), Vector2(1, 3)], [Vector2(38, 19), Vector2(1, 29)], [Vector2(39, 21), Vector2(1, 22)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 18)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 18)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 20)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 20)], [Vector2(44, 26), Vector2(1, 20)], [Vector2(45, 27), Vector2(1, 10)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 8)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(2, 4)], [Vector2(23, 37), Vector2(4, 4)], [Vector2(20, 41), Vector2(1, 5)], [Vector2(24, 41), Vector2(4, 4)], [Vector2(45, 41), Vector2(1, 6)], [Vector2(46, 43), Vector2(1, 4)], [Vector2(18, 44), Vector2(1, 4)], [Vector2(28, 44), Vector2(1, 2)], [Vector2(36, 44), Vector2(1, 4)], [Vector2(47, 44), Vector2(1, 3)], [Vector2(25, 45), Vector2(3, 1)], [Vector2(17, 46), Vector2(1, 2)], [Vector2(26, 46), Vector2(2, 1)], [Vector2(16, 47), Vector2(1, 1)], [Vector2(35, 47), Vector2(1, 1)]],
		4 : [[Vector2(20, 2), Vector2(7, 35)], [Vector2(19, 3), Vector2(1, 32)], [Vector2(27, 3), Vector2(1, 32)], [Vector2(18, 4), Vector2(1, 3)], [Vector2(28, 4), Vector2(1, 32)], [Vector2(29, 5), Vector2(1, 2)], [Vector2(18, 9), Vector2(1, 7)], [Vector2(29, 9), Vector2(1, 27)], [Vector2(30, 12), Vector2(1, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(17, 14), Vector2(1, 2)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 20)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 28)], [Vector2(39, 21), Vector2(1, 27)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 26)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 25)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 16)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 13)], [Vector2(44, 26), Vector2(1, 10)], [Vector2(45, 27), Vector2(1, 9)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 7)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(6, 5)], [Vector2(19, 39), Vector2(1, 8)], [Vector2(37, 39), Vector2(1, 7)], [Vector2(18, 41), Vector2(1, 5)], [Vector2(20, 42), Vector2(2, 6)], [Vector2(23, 42), Vector2(3, 1)], [Vector2(23, 43), Vector2(2, 5)], [Vector2(22, 44), Vector2(1, 4)], [Vector2(42, 44), Vector2(1, 4)], [Vector2(25, 46), Vector2(1, 2)]],
		5 : [[Vector2(20, 3), Vector2(7, 34)], [Vector2(19, 4), Vector2(1, 31)], [Vector2(27, 4), Vector2(1, 31)], [Vector2(18, 5), Vector2(1, 3)], [Vector2(28, 5), Vector2(1, 31)], [Vector2(29, 6), Vector2(1, 2)], [Vector2(18, 10), Vector2(1, 7)], [Vector2(29, 10), Vector2(1, 26)], [Vector2(30, 12), Vector2(1, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(17, 15), Vector2(1, 2)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 31)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 29)], [Vector2(39, 21), Vector2(1, 26)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 20)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 17)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 17)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 23)], [Vector2(44, 26), Vector2(1, 22)], [Vector2(45, 27), Vector2(1, 9)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 7)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(6, 5)], [Vector2(19, 38), Vector2(1, 10)], [Vector2(36, 39), Vector2(1, 9)], [Vector2(18, 40), Vector2(1, 8)], [Vector2(20, 42), Vector2(2, 2)], [Vector2(23, 42), Vector2(3, 6)], [Vector2(17, 43), Vector2(1, 5)], [Vector2(20, 44), Vector2(1, 2)], [Vector2(42, 44), Vector2(1, 4)], [Vector2(35, 45), Vector2(1, 3)], [Vector2(16, 46), Vector2(1, 2)], [Vector2(26, 46), Vector2(1, 2)], [Vector2(15, 47), Vector2(1, 1)], [Vector2(34, 47), Vector2(1, 1)], [Vector2(41, 47), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/intro/camel_damsel"
	},
	"camel_tunnel" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 48)],
			"collision_rectangles" : {
				0 : [[Vector2(19, 3), Vector2(8, 32)], [Vector2(18, 4), Vector2(1, 6)], [Vector2(27, 4), Vector2(1, 7)], [Vector2(28, 5), Vector2(1, 5)], [Vector2(27, 12), Vector2(4, 23)], [Vector2(18, 13), Vector2(1, 2)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 20)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 20)], [Vector2(39, 21), Vector2(1, 27)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 26)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 15)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 24)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 23)], [Vector2(44, 26), Vector2(1, 22)], [Vector2(45, 27), Vector2(1, 21)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 8)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(20, 35), Vector2(7, 3)], [Vector2(28, 35), Vector2(3, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(21, 38), Vector2(6, 3)], [Vector2(27, 39), Vector2(1, 9)], [Vector2(22, 41), Vector2(5, 2)], [Vector2(22, 43), Vector2(2, 5)], [Vector2(25, 43), Vector2(2, 5)], [Vector2(28, 43), Vector2(1, 5)], [Vector2(21, 46), Vector2(1, 2)], [Vector2(24, 46), Vector2(1, 2)], [Vector2(38, 46), Vector2(1, 2)], [Vector2(41, 46), Vector2(1, 2)], [Vector2(37, 47), Vector2(1, 1)]],
		1 : [[Vector2(19, 4), Vector2(8, 31)], [Vector2(18, 5), Vector2(1, 6)], [Vector2(27, 5), Vector2(1, 7)], [Vector2(28, 6), Vector2(1, 5)], [Vector2(27, 13), Vector2(4, 24)], [Vector2(18, 14), Vector2(1, 2)], [Vector2(31, 14), Vector2(2, 23)], [Vector2(33, 15), Vector2(1, 23)], [Vector2(5, 16), Vector2(5, 7)], [Vector2(34, 16), Vector2(2, 21)], [Vector2(3, 17), Vector2(2, 7)], [Vector2(10, 17), Vector2(3, 2)], [Vector2(36, 17), Vector2(1, 21)], [Vector2(1, 18), Vector2(2, 6)], [Vector2(37, 18), Vector2(1, 20)], [Vector2(0, 19), Vector2(1, 4)], [Vector2(10, 19), Vector2(2, 12)], [Vector2(38, 20), Vector2(1, 24)], [Vector2(39, 22), Vector2(1, 20)], [Vector2(5, 23), Vector2(1, 8)], [Vector2(7, 23), Vector2(3, 3)], [Vector2(40, 23), Vector2(1, 18)], [Vector2(2, 24), Vector2(2, 1)], [Vector2(12, 24), Vector2(1, 9)], [Vector2(41, 24), Vector2(1, 15)], [Vector2(18, 25), Vector2(1, 9)], [Vector2(42, 25), Vector2(1, 16)], [Vector2(8, 26), Vector2(2, 3)], [Vector2(13, 26), Vector2(1, 7)], [Vector2(17, 26), Vector2(1, 7)], [Vector2(43, 26), Vector2(1, 22)], [Vector2(14, 27), Vector2(3, 7)], [Vector2(44, 27), Vector2(1, 21)], [Vector2(45, 28), Vector2(1, 20)], [Vector2(9, 29), Vector2(1, 1)], [Vector2(46, 30), Vector2(1, 8)], [Vector2(6, 31), Vector2(1, 2)], [Vector2(11, 31), Vector2(1, 1)], [Vector2(7, 33), Vector2(1, 1)], [Vector2(8, 34), Vector2(1, 1)], [Vector2(15, 34), Vector2(1, 1)], [Vector2(47, 34), Vector2(1, 2)], [Vector2(9, 35), Vector2(6, 1)], [Vector2(20, 35), Vector2(7, 4)], [Vector2(27, 37), Vector2(1, 11)], [Vector2(32, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(19, 38), Vector2(1, 9)], [Vector2(20, 39), Vector2(3, 1)], [Vector2(24, 39), Vector2(3, 2)], [Vector2(20, 40), Vector2(1, 2)], [Vector2(18, 41), Vector2(1, 6)], [Vector2(25, 41), Vector2(2, 2)], [Vector2(28, 41), Vector2(1, 7)], [Vector2(37, 41), Vector2(1, 4)], [Vector2(46, 41), Vector2(1, 7)], [Vector2(26, 43), Vector2(1, 5)], [Vector2(29, 43), Vector2(1, 5)], [Vector2(36, 43), Vector2(1, 3)], [Vector2(20, 44), Vector2(1, 3)], [Vector2(34, 44), Vector2(2, 3)], [Vector2(25, 46), Vector2(1, 2)], [Vector2(42, 46), Vector2(1, 2)], [Vector2(41, 47), Vector2(1, 1)]],
		2 : [[Vector2(19, 4), Vector2(8, 34)], [Vector2(18, 5), Vector2(1, 6)], [Vector2(27, 5), Vector2(1, 7)], [Vector2(28, 6), Vector2(1, 5)], [Vector2(27, 13), Vector2(4, 23)], [Vector2(18, 14), Vector2(1, 2)], [Vector2(31, 14), Vector2(2, 23)], [Vector2(33, 15), Vector2(1, 23)], [Vector2(34, 16), Vector2(2, 21)], [Vector2(5, 17), Vector2(5, 7)], [Vector2(36, 17), Vector2(1, 21)], [Vector2(4, 18), Vector2(1, 7)], [Vector2(10, 18), Vector2(3, 2)], [Vector2(37, 18), Vector2(1, 26)], [Vector2(2, 19), Vector2(2, 7)], [Vector2(1, 20), Vector2(1, 5)], [Vector2(10, 20), Vector2(2, 11)], [Vector2(38, 20), Vector2(1, 23)], [Vector2(0, 21), Vector2(1, 3)], [Vector2(39, 22), Vector2(1, 19)], [Vector2(40, 23), Vector2(1, 16)], [Vector2(5, 24), Vector2(1, 7)], [Vector2(7, 24), Vector2(3, 2)], [Vector2(41, 24), Vector2(1, 15)], [Vector2(12, 25), Vector2(1, 8)], [Vector2(17, 25), Vector2(2, 8)], [Vector2(42, 25), Vector2(1, 15)], [Vector2(8, 26), Vector2(2, 3)], [Vector2(13, 26), Vector2(4, 7)], [Vector2(43, 26), Vector2(1, 16)], [Vector2(44, 27), Vector2(1, 21)], [Vector2(45, 28), Vector2(1, 20)], [Vector2(9, 29), Vector2(1, 1)], [Vector2(46, 30), Vector2(1, 18)], [Vector2(6, 31), Vector2(1, 2)], [Vector2(11, 31), Vector2(1, 1)], [Vector2(7, 33), Vector2(1, 1)], [Vector2(16, 33), Vector2(1, 1)], [Vector2(18, 33), Vector2(1, 1)], [Vector2(8, 34), Vector2(1, 1)], [Vector2(15, 34), Vector2(1, 1)], [Vector2(47, 34), Vector2(1, 2)], [Vector2(9, 35), Vector2(6, 1)], [Vector2(28, 36), Vector2(3, 1)], [Vector2(27, 37), Vector2(1, 11)], [Vector2(32, 37), Vector2(1, 1)], [Vector2(34, 37), Vector2(1, 1)], [Vector2(18, 38), Vector2(4, 1)], [Vector2(24, 38), Vector2(3, 1)], [Vector2(28, 38), Vector2(1, 10)], [Vector2(18, 39), Vector2(3, 1)], [Vector2(25, 39), Vector2(2, 2)], [Vector2(17, 40), Vector2(3, 1)], [Vector2(36, 40), Vector2(1, 6)], [Vector2(17, 41), Vector2(2, 2)], [Vector2(26, 41), Vector2(1, 2)], [Vector2(29, 41), Vector2(1, 7)], [Vector2(16, 42), Vector2(1, 6)], [Vector2(35, 42), Vector2(1, 6)], [Vector2(47, 42), Vector2(1, 6)], [Vector2(17, 43), Vector2(1, 4)], [Vector2(30, 43), Vector2(1, 5)], [Vector2(34, 44), Vector2(1, 4)], [Vector2(15, 45), Vector2(1, 3)], [Vector2(26, 46), Vector2(1, 2)], [Vector2(33, 46), Vector2(1, 2)], [Vector2(43, 46), Vector2(1, 2)], [Vector2(42, 47), Vector2(1, 1)]],
		3 : [[Vector2(19, 2), Vector2(9, 7)], [Vector2(18, 3), Vector2(1, 5)], [Vector2(28, 3), Vector2(1, 5)], [Vector2(17, 4), Vector2(1, 3)], [Vector2(29, 4), Vector2(1, 3)], [Vector2(19, 9), Vector2(8, 6)], [Vector2(27, 10), Vector2(1, 25)], [Vector2(18, 11), Vector2(1, 2)], [Vector2(28, 11), Vector2(1, 25)], [Vector2(29, 12), Vector2(2, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(20, 15), Vector2(7, 22)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(4, 16), Vector2(1, 7)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(19, 16), Vector2(1, 32)], [Vector2(36, 16), Vector2(1, 21)], [Vector2(2, 17), Vector2(2, 7)], [Vector2(37, 17), Vector2(1, 31)], [Vector2(1, 18), Vector2(1, 5)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(0, 19), Vector2(1, 3)], [Vector2(38, 19), Vector2(1, 29)], [Vector2(39, 21), Vector2(1, 22)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 18)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 18)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 20)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 20)], [Vector2(44, 26), Vector2(1, 20)], [Vector2(45, 27), Vector2(1, 10)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 8)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(2, 4)], [Vector2(23, 37), Vector2(4, 4)], [Vector2(20, 41), Vector2(1, 5)], [Vector2(24, 41), Vector2(4, 4)], [Vector2(45, 41), Vector2(1, 6)], [Vector2(46, 43), Vector2(1, 4)], [Vector2(18, 44), Vector2(1, 4)], [Vector2(28, 44), Vector2(1, 2)], [Vector2(36, 44), Vector2(1, 4)], [Vector2(47, 44), Vector2(1, 3)], [Vector2(25, 45), Vector2(3, 1)], [Vector2(17, 46), Vector2(1, 2)], [Vector2(26, 46), Vector2(2, 1)], [Vector2(16, 47), Vector2(1, 1)], [Vector2(35, 47), Vector2(1, 1)]],
		4 : [[Vector2(19, 1), Vector2(8, 34)], [Vector2(18, 2), Vector2(1, 7)], [Vector2(27, 2), Vector2(1, 8)], [Vector2(28, 3), Vector2(1, 6)], [Vector2(27, 11), Vector2(1, 24)], [Vector2(18, 12), Vector2(1, 2)], [Vector2(28, 12), Vector2(3, 24)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 20)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 28)], [Vector2(39, 21), Vector2(1, 27)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 26)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 25)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 16)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 13)], [Vector2(44, 26), Vector2(1, 10)], [Vector2(45, 27), Vector2(1, 9)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 7)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(20, 35), Vector2(7, 2)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(6, 5)], [Vector2(19, 39), Vector2(1, 8)], [Vector2(37, 39), Vector2(1, 7)], [Vector2(18, 41), Vector2(1, 5)], [Vector2(20, 42), Vector2(2, 6)], [Vector2(23, 42), Vector2(3, 1)], [Vector2(23, 43), Vector2(2, 5)], [Vector2(22, 44), Vector2(1, 4)], [Vector2(42, 44), Vector2(1, 4)], [Vector2(25, 46), Vector2(1, 2)]],
		5 : [[Vector2(19, 4), Vector2(8, 31)], [Vector2(18, 5), Vector2(1, 6)], [Vector2(27, 5), Vector2(1, 30)], [Vector2(28, 6), Vector2(1, 5)], [Vector2(28, 12), Vector2(3, 24)], [Vector2(18, 13), Vector2(1, 2)], [Vector2(31, 13), Vector2(2, 23)], [Vector2(33, 14), Vector2(1, 23)], [Vector2(5, 15), Vector2(5, 7)], [Vector2(34, 15), Vector2(2, 21)], [Vector2(2, 16), Vector2(3, 6)], [Vector2(10, 16), Vector2(3, 2)], [Vector2(36, 16), Vector2(1, 20)], [Vector2(1, 17), Vector2(1, 5)], [Vector2(37, 17), Vector2(1, 31)], [Vector2(0, 18), Vector2(1, 3)], [Vector2(10, 18), Vector2(2, 12)], [Vector2(38, 19), Vector2(1, 29)], [Vector2(39, 21), Vector2(1, 26)], [Vector2(2, 22), Vector2(2, 1)], [Vector2(5, 22), Vector2(1, 8)], [Vector2(7, 22), Vector2(3, 3)], [Vector2(40, 22), Vector2(1, 20)], [Vector2(12, 23), Vector2(1, 9)], [Vector2(41, 23), Vector2(1, 17)], [Vector2(17, 24), Vector2(2, 8)], [Vector2(42, 24), Vector2(1, 17)], [Vector2(8, 25), Vector2(2, 3)], [Vector2(13, 25), Vector2(4, 7)], [Vector2(43, 25), Vector2(1, 23)], [Vector2(44, 26), Vector2(1, 22)], [Vector2(45, 27), Vector2(1, 9)], [Vector2(9, 28), Vector2(1, 1)], [Vector2(46, 29), Vector2(1, 7)], [Vector2(6, 30), Vector2(1, 2)], [Vector2(11, 30), Vector2(1, 1)], [Vector2(7, 32), Vector2(1, 1)], [Vector2(16, 32), Vector2(1, 1)], [Vector2(18, 32), Vector2(1, 1)], [Vector2(8, 33), Vector2(1, 1)], [Vector2(15, 33), Vector2(1, 1)], [Vector2(47, 33), Vector2(1, 2)], [Vector2(9, 34), Vector2(6, 1)], [Vector2(20, 35), Vector2(7, 2)], [Vector2(32, 36), Vector2(1, 1)], [Vector2(34, 36), Vector2(1, 1)], [Vector2(20, 37), Vector2(6, 5)], [Vector2(19, 38), Vector2(1, 10)], [Vector2(36, 39), Vector2(1, 9)], [Vector2(18, 40), Vector2(1, 8)], [Vector2(20, 42), Vector2(2, 2)], [Vector2(23, 42), Vector2(3, 6)], [Vector2(17, 43), Vector2(1, 5)], [Vector2(20, 44), Vector2(1, 2)], [Vector2(42, 44), Vector2(1, 4)], [Vector2(35, 45), Vector2(1, 3)], [Vector2(16, 46), Vector2(1, 2)], [Vector2(26, 46), Vector2(1, 2)], [Vector2(15, 47), Vector2(1, 1)], [Vector2(34, 47), Vector2(1, 1)], [Vector2(41, 47), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/intro/camel_tunnel"
	},
	"desert" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/desert"
	},
	"desert2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/desert2"
	},
	"desert_night" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/desert_night"
	},
	"desert_night2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/desert_night2"
	},
	"desert_top" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 13), Vector2(3, 3)], [Vector2(2, 14), Vector2(2, 2)], [Vector2(7, 14), Vector2(4, 2)], [Vector2(0, 15), Vector2(2, 1)], [Vector2(11, 15), Vector2(5, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/desert_top"
	},
	"desert_top_night" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 17)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 13), Vector2(3, 3)], [Vector2(2, 14), Vector2(2, 2)], [Vector2(7, 14), Vector2(4, 2)], [Vector2(0, 15), Vector2(2, 1)], [Vector2(11, 15), Vector2(5, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/desert_top_night"
	},
	"flare" : {
		"origin" : Vector2(4, 4),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(8, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 0), Vector2(2, 8)], [Vector2(1, 1), Vector2(2, 6)], [Vector2(5, 1), Vector2(2, 6)], [Vector2(0, 3), Vector2(1, 2)], [Vector2(7, 3), Vector2(1, 2)]],
		1 : [[Vector2(3, 1), Vector2(2, 6)], [Vector2(2, 2), Vector2(1, 4)], [Vector2(5, 2), Vector2(1, 4)], [Vector2(1, 3), Vector2(1, 2)], [Vector2(6, 3), Vector2(1, 2)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/intro/flare"
	},
	"flare_spark" : {
		"origin" : Vector2(2, 2),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(4, 4)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(2, 4)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 2)]],
		1 : [[Vector2(1, 0), Vector2(2, 4)], [Vector2(0, 1), Vector2(1, 2)], [Vector2(3, 1), Vector2(1, 2)]],
		2 : [[Vector2(1, 1), Vector2(2, 2)]],
		3 : [[Vector2(1, 1), Vector2(2, 1)]],
		4 : [[Vector2(0, 0), Vector2(1, 1)], [Vector2(3, 0), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/other/intro/flare_spark"
	},
	"intro_bg" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(480, 112)],
			"collision_rectangles" : {
				0 : [[Vector2(183, 3), Vector2(6, 109)], [Vector2(175, 4), Vector2(8, 108)], [Vector2(189, 4), Vector2(1, 108)], [Vector2(171, 5), Vector2(4, 107)], [Vector2(190, 5), Vector2(1, 107)], [Vector2(167, 6), Vector2(4, 106)], [Vector2(191, 6), Vector2(1, 106)], [Vector2(164, 7), Vector2(3, 105)], [Vector2(161, 8), Vector2(3, 104)], [Vector2(192, 8), Vector2(1, 104)], [Vector2(159, 9), Vector2(2, 103)], [Vector2(193, 9), Vector2(1, 103)], [Vector2(157, 10), Vector2(2, 102)], [Vector2(194, 10), Vector2(2, 102)], [Vector2(154, 11), Vector2(3, 101)], [Vector2(196, 11), Vector2(1, 101)], [Vector2(54, 12), Vector2(4, 100)], [Vector2(153, 12), Vector2(1, 100)], [Vector2(197, 12), Vector2(2, 100)], [Vector2(50, 13), Vector2(4, 99)], [Vector2(58, 13), Vector2(2, 99)], [Vector2(151, 13), Vector2(2, 99)], [Vector2(199, 13), Vector2(2, 99)], [Vector2(47, 14), Vector2(3, 98)], [Vector2(60, 14), Vector2(1, 98)], [Vector2(149, 14), Vector2(2, 98)], [Vector2(201, 14), Vector2(2, 98)], [Vector2(44, 15), Vector2(3, 97)], [Vector2(61, 15), Vector2(2, 97)], [Vector2(147, 15), Vector2(2, 97)], [Vector2(203, 15), Vector2(2, 97)], [Vector2(345, 15), Vector2(7, 97)], [Vector2(42, 16), Vector2(2, 96)], [Vector2(63, 16), Vector2(2, 96)], [Vector2(145, 16), Vector2(2, 96)], [Vector2(205, 16), Vector2(1, 96)], [Vector2(342, 16), Vector2(3, 96)], [Vector2(352, 16), Vector2(3, 96)], [Vector2(39, 17), Vector2(3, 95)], [Vector2(65, 17), Vector2(2, 95)], [Vector2(144, 17), Vector2(1, 95)], [Vector2(206, 17), Vector2(2, 95)], [Vector2(340, 17), Vector2(2, 95)], [Vector2(355, 17), Vector2(2, 95)], [Vector2(37, 18), Vector2(2, 94)], [Vector2(67, 18), Vector2(4, 94)], [Vector2(142, 18), Vector2(2, 94)], [Vector2(208, 18), Vector2(2, 94)], [Vector2(339, 18), Vector2(1, 94)], [Vector2(357, 18), Vector2(2, 94)], [Vector2(35, 19), Vector2(2, 93)], [Vector2(71, 19), Vector2(3, 93)], [Vector2(140, 19), Vector2(2, 93)], [Vector2(210, 19), Vector2(1, 93)], [Vector2(336, 19), Vector2(3, 93)], [Vector2(359, 19), Vector2(2, 93)], [Vector2(32, 20), Vector2(3, 92)], [Vector2(74, 20), Vector2(3, 92)], [Vector2(138, 20), Vector2(2, 92)], [Vector2(211, 20), Vector2(1, 92)], [Vector2(334, 20), Vector2(2, 92)], [Vector2(361, 20), Vector2(3, 92)], [Vector2(29, 21), Vector2(3, 91)], [Vector2(77, 21), Vector2(3, 91)], [Vector2(136, 21), Vector2(2, 91)], [Vector2(212, 21), Vector2(1, 91)], [Vector2(268, 21), Vector2(8, 91)], [Vector2(332, 21), Vector2(2, 91)], [Vector2(364, 21), Vector2(1, 91)], [Vector2(27, 22), Vector2(2, 90)], [Vector2(80, 22), Vector2(3, 90)], [Vector2(134, 22), Vector2(2, 90)], [Vector2(213, 22), Vector2(2, 90)], [Vector2(264, 22), Vector2(4, 90)], [Vector2(276, 22), Vector2(3, 90)], [Vector2(330, 22), Vector2(2, 90)], [Vector2(365, 22), Vector2(2, 90)], [Vector2(24, 23), Vector2(3, 89)], [Vector2(83, 23), Vector2(2, 89)], [Vector2(132, 23), Vector2(2, 89)], [Vector2(215, 23), Vector2(1, 89)], [Vector2(259, 23), Vector2(5, 89)], [Vector2(279, 23), Vector2(2, 89)], [Vector2(328, 23), Vector2(2, 89)], [Vector2(367, 23), Vector2(1, 89)], [Vector2(22, 24), Vector2(2, 88)], [Vector2(85, 24), Vector2(3, 88)], [Vector2(129, 24), Vector2(3, 88)], [Vector2(216, 24), Vector2(1, 88)], [Vector2(256, 24), Vector2(3, 88)], [Vector2(281, 24), Vector2(2, 88)], [Vector2(326, 24), Vector2(2, 88)], [Vector2(368, 24), Vector2(1, 88)], [Vector2(15, 25), Vector2(3, 1)], [Vector2(20, 25), Vector2(2, 87)], [Vector2(88, 25), Vector2(1, 87)], [Vector2(126, 25), Vector2(3, 87)], [Vector2(217, 25), Vector2(2, 87)], [Vector2(254, 25), Vector2(2, 87)], [Vector2(283, 25), Vector2(2, 87)], [Vector2(324, 25), Vector2(2, 87)], [Vector2(369, 25), Vector2(1, 87)], [Vector2(12, 26), Vector2(5, 1)], [Vector2(19, 26), Vector2(1, 86)], [Vector2(89, 26), Vector2(3, 86)], [Vector2(124, 26), Vector2(2, 86)], [Vector2(219, 26), Vector2(1, 86)], [Vector2(251, 26), Vector2(3, 86)], [Vector2(285, 26), Vector2(2, 86)], [Vector2(321, 26), Vector2(3, 86)], [Vector2(370, 26), Vector2(2, 86)], [Vector2(415, 26), Vector2(11, 86)], [Vector2(9, 27), Vector2(5, 1)], [Vector2(17, 27), Vector2(2, 85)], [Vector2(92, 27), Vector2(4, 85)], [Vector2(123, 27), Vector2(1, 85)], [Vector2(220, 27), Vector2(2, 85)], [Vector2(248, 27), Vector2(3, 85)], [Vector2(287, 27), Vector2(2, 85)], [Vector2(315, 27), Vector2(6, 85)], [Vector2(372, 27), Vector2(3, 6)], [Vector2(405, 27), Vector2(10, 85)], [Vector2(426, 27), Vector2(9, 85)], [Vector2(0, 28), Vector2(11, 1)], [Vector2(14, 28), Vector2(3, 84)], [Vector2(96, 28), Vector2(9, 84)], [Vector2(113, 28), Vector2(5, 1)], [Vector2(121, 28), Vector2(2, 84)], [Vector2(222, 28), Vector2(1, 84)], [Vector2(245, 28), Vector2(3, 84)], [Vector2(289, 28), Vector2(2, 84)], [Vector2(312, 28), Vector2(3, 84)], [Vector2(375, 28), Vector2(3, 4)], [Vector2(401, 28), Vector2(4, 84)], [Vector2(435, 28), Vector2(7, 84)], [Vector2(445, 28), Vector2(10, 84)], [Vector2(0, 29), Vector2(9, 1)], [Vector2(11, 29), Vector2(3, 83)], [Vector2(105, 29), Vector2(12, 1)], [Vector2(119, 29), Vector2(2, 83)], [Vector2(223, 29), Vector2(3, 83)], [Vector2(242, 29), Vector2(3, 83)], [Vector2(291, 29), Vector2(4, 83)], [Vector2(309, 29), Vector2(3, 83)], [Vector2(378, 29), Vector2(5, 2)], [Vector2(395, 29), Vector2(6, 83)], [Vector2(442, 29), Vector2(3, 83)], [Vector2(455, 29), Vector2(11, 83)], [Vector2(0, 30), Vector2(7, 1)], [Vector2(9, 30), Vector2(2, 82)], [Vector2(105, 30), Vector2(10, 1)], [Vector2(118, 30), Vector2(1, 82)], [Vector2(226, 30), Vector2(4, 5)], [Vector2(240, 30), Vector2(2, 82)], [Vector2(295, 30), Vector2(11, 82)], [Vector2(307, 30), Vector2(2, 82)], [Vector2(383, 30), Vector2(3, 1)], [Vector2(392, 30), Vector2(3, 82)], [Vector2(466, 30), Vector2(8, 82)], [Vector2(0, 31), Vector2(5, 80)], [Vector2(7, 31), Vector2(2, 81)], [Vector2(105, 31), Vector2(8, 1)], [Vector2(116, 31), Vector2(2, 81)], [Vector2(230, 31), Vector2(6, 1)], [Vector2(238, 31), Vector2(2, 81)], [Vector2(306, 31), Vector2(1, 81)], [Vector2(378, 31), Vector2(3, 1)], [Vector2(386, 31), Vector2(6, 81)], [Vector2(474, 31), Vector2(6, 81)], [Vector2(5, 32), Vector2(2, 80)], [Vector2(105, 32), Vector2(5, 1)], [Vector2(114, 32), Vector2(2, 80)], [Vector2(230, 32), Vector2(4, 1)], [Vector2(237, 32), Vector2(1, 80)], [Vector2(375, 32), Vector2(2, 1)], [Vector2(382, 32), Vector2(4, 80)], [Vector2(105, 33), Vector2(1, 79)], [Vector2(111, 33), Vector2(3, 79)], [Vector2(230, 33), Vector2(2, 1)], [Vector2(235, 33), Vector2(2, 79)], [Vector2(377, 33), Vector2(5, 79)], [Vector2(106, 34), Vector2(5, 78)], [Vector2(233, 34), Vector2(2, 78)], [Vector2(372, 34), Vector2(5, 78)], [Vector2(226, 35), Vector2(1, 77)], [Vector2(230, 35), Vector2(3, 77)], [Vector2(227, 36), Vector2(3, 76)], [Vector2(1, 111), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/intro_bg"
	},
	"moon" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(96, 96)],
			"collision_rectangles" : {
				0 : [[Vector2(43, 2), Vector2(11, 92)], [Vector2(37, 3), Vector2(6, 90)], [Vector2(54, 3), Vector2(6, 90)], [Vector2(33, 4), Vector2(4, 88)], [Vector2(60, 4), Vector2(4, 88)], [Vector2(30, 5), Vector2(3, 86)], [Vector2(64, 5), Vector2(3, 86)], [Vector2(28, 6), Vector2(2, 84)], [Vector2(67, 6), Vector2(2, 84)], [Vector2(26, 7), Vector2(2, 82)], [Vector2(69, 7), Vector2(2, 82)], [Vector2(24, 8), Vector2(2, 80)], [Vector2(71, 8), Vector2(2, 80)], [Vector2(22, 9), Vector2(2, 78)], [Vector2(73, 9), Vector2(2, 78)], [Vector2(21, 10), Vector2(1, 76)], [Vector2(75, 10), Vector2(1, 76)], [Vector2(19, 11), Vector2(2, 74)], [Vector2(76, 11), Vector2(2, 74)], [Vector2(18, 12), Vector2(1, 72)], [Vector2(78, 12), Vector2(1, 72)], [Vector2(17, 13), Vector2(1, 71)], [Vector2(79, 13), Vector2(1, 70)], [Vector2(16, 14), Vector2(1, 69)], [Vector2(80, 14), Vector2(1, 68)], [Vector2(15, 15), Vector2(1, 67)], [Vector2(81, 15), Vector2(2, 65)], [Vector2(14, 16), Vector2(1, 65)], [Vector2(83, 16), Vector2(1, 63)], [Vector2(13, 17), Vector2(1, 63)], [Vector2(84, 17), Vector2(1, 61)], [Vector2(12, 18), Vector2(1, 60)], [Vector2(11, 19), Vector2(1, 58)], [Vector2(85, 19), Vector2(2, 57)], [Vector2(10, 20), Vector2(1, 56)], [Vector2(9, 21), Vector2(1, 54)], [Vector2(87, 21), Vector2(1, 54)], [Vector2(8, 22), Vector2(1, 52)], [Vector2(88, 22), Vector2(1, 52)], [Vector2(7, 24), Vector2(1, 48)], [Vector2(89, 24), Vector2(1, 48)], [Vector2(6, 26), Vector2(1, 44)], [Vector2(90, 26), Vector2(1, 44)], [Vector2(5, 27), Vector2(1, 42)], [Vector2(91, 27), Vector2(1, 42)], [Vector2(4, 29), Vector2(1, 38)], [Vector2(92, 29), Vector2(1, 38)], [Vector2(3, 31), Vector2(1, 34)], [Vector2(93, 31), Vector2(1, 34)], [Vector2(2, 34), Vector2(1, 28)], [Vector2(94, 34), Vector2(1, 28)], [Vector2(1, 37), Vector2(1, 22)], [Vector2(95, 38), Vector2(1, 20)], [Vector2(0, 41), Vector2(1, 13)], [Vector2(85, 76), Vector2(1, 1)], [Vector2(81, 80), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/moon"
	},
	"palm_tree" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 128)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 3), Vector2(7, 2)], [Vector2(7, 4), Vector2(1, 4)], [Vector2(15, 4), Vector2(2, 1)], [Vector2(8, 5), Vector2(5, 13)], [Vector2(13, 6), Vector2(5, 5)], [Vector2(18, 7), Vector2(3, 3)], [Vector2(3, 8), Vector2(4, 4)], [Vector2(21, 8), Vector2(3, 2)], [Vector2(2, 9), Vector2(1, 7)], [Vector2(7, 9), Vector2(1, 12)], [Vector2(24, 9), Vector2(2, 2)], [Vector2(1, 10), Vector2(1, 8)], [Vector2(18, 10), Vector2(1, 1)], [Vector2(26, 10), Vector2(1, 1)], [Vector2(13, 11), Vector2(4, 15)], [Vector2(0, 12), Vector2(1, 7)], [Vector2(3, 12), Vector2(2, 1)], [Vector2(17, 12), Vector2(2, 6)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(19, 13), Vector2(2, 6)], [Vector2(6, 14), Vector2(1, 8)], [Vector2(21, 14), Vector2(1, 5)], [Vector2(5, 15), Vector2(1, 10)], [Vector2(22, 15), Vector2(1, 5)], [Vector2(4, 16), Vector2(1, 13)], [Vector2(23, 16), Vector2(1, 4)], [Vector2(3, 17), Vector2(1, 10)], [Vector2(24, 17), Vector2(1, 3)], [Vector2(8, 18), Vector2(1, 2)], [Vector2(10, 18), Vector2(3, 1)], [Vector2(17, 18), Vector2(1, 10)], [Vector2(25, 18), Vector2(1, 3)], [Vector2(2, 19), Vector2(1, 6)], [Vector2(11, 19), Vector2(2, 4)], [Vector2(26, 19), Vector2(1, 2)], [Vector2(18, 21), Vector2(1, 12)], [Vector2(12, 23), Vector2(1, 3)], [Vector2(19, 24), Vector2(1, 16)], [Vector2(13, 26), Vector2(3, 2)], [Vector2(20, 27), Vector2(1, 19)], [Vector2(14, 28), Vector2(2, 2)], [Vector2(21, 29), Vector2(1, 24)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(22, 33), Vector2(1, 31)], [Vector2(23, 34), Vector2(1, 94)], [Vector2(24, 39), Vector2(1, 89)], [Vector2(25, 43), Vector2(1, 85)], [Vector2(26, 47), Vector2(1, 81)], [Vector2(27, 55), Vector2(1, 73)], [Vector2(28, 64), Vector2(1, 64)], [Vector2(29, 72), Vector2(1, 56)], [Vector2(30, 84), Vector2(1, 44)], [Vector2(22, 92), Vector2(1, 36)], [Vector2(31, 96), Vector2(1, 32)], [Vector2(21, 123), Vector2(1, 5)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/palm_tree"
	},
	"palm_tree_dark" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 128)],
			"collision_rectangles" : {
				0 : [[Vector2(8, 3), Vector2(7, 2)], [Vector2(15, 4), Vector2(2, 1)], [Vector2(7, 5), Vector2(5, 2)], [Vector2(12, 6), Vector2(6, 5)], [Vector2(8, 7), Vector2(4, 10)], [Vector2(18, 7), Vector2(3, 3)], [Vector2(3, 8), Vector2(4, 4)], [Vector2(21, 8), Vector2(3, 2)], [Vector2(2, 9), Vector2(1, 6)], [Vector2(7, 9), Vector2(1, 11)], [Vector2(24, 9), Vector2(2, 1)], [Vector2(1, 10), Vector2(1, 6)], [Vector2(18, 10), Vector2(1, 1)], [Vector2(25, 10), Vector2(2, 1)], [Vector2(12, 11), Vector2(5, 15)], [Vector2(0, 12), Vector2(1, 7)], [Vector2(3, 12), Vector2(2, 1)], [Vector2(17, 12), Vector2(2, 6)], [Vector2(3, 13), Vector2(1, 1)], [Vector2(19, 13), Vector2(2, 6)], [Vector2(6, 14), Vector2(1, 7)], [Vector2(21, 14), Vector2(1, 5)], [Vector2(5, 15), Vector2(1, 8)], [Vector2(22, 15), Vector2(1, 4)], [Vector2(4, 16), Vector2(1, 13)], [Vector2(23, 16), Vector2(1, 4)], [Vector2(3, 17), Vector2(1, 10)], [Vector2(8, 17), Vector2(1, 1)], [Vector2(10, 17), Vector2(2, 2)], [Vector2(24, 17), Vector2(1, 3)], [Vector2(17, 18), Vector2(1, 10)], [Vector2(25, 18), Vector2(1, 3)], [Vector2(2, 19), Vector2(1, 6)], [Vector2(11, 19), Vector2(1, 4)], [Vector2(18, 21), Vector2(1, 12)], [Vector2(19, 24), Vector2(1, 16)], [Vector2(13, 26), Vector2(3, 2)], [Vector2(20, 27), Vector2(1, 19)], [Vector2(14, 28), Vector2(2, 2)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(21, 30), Vector2(1, 23)], [Vector2(22, 33), Vector2(1, 27)], [Vector2(23, 36), Vector2(1, 36)], [Vector2(24, 42), Vector2(1, 86)], [Vector2(25, 45), Vector2(1, 83)], [Vector2(26, 52), Vector2(1, 76)], [Vector2(27, 59), Vector2(1, 69)], [Vector2(28, 67), Vector2(1, 61)], [Vector2(29, 74), Vector2(1, 54)], [Vector2(30, 85), Vector2(1, 43)], [Vector2(23, 91), Vector2(1, 37)], [Vector2(31, 107), Vector2(1, 20)], [Vector2(22, 123), Vector2(1, 5)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/palm_tree_dark"
	},
	"shrub" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(2, 2)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(9, 1), Vector2(1, 15)], [Vector2(13, 1), Vector2(2, 2)], [Vector2(0, 2), Vector2(1, 1)], [Vector2(3, 2), Vector2(2, 2)], [Vector2(11, 2), Vector2(2, 2)], [Vector2(15, 2), Vector2(1, 1)], [Vector2(2, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(1, 13)], [Vector2(10, 3), Vector2(1, 13)], [Vector2(4, 4), Vector2(1, 12)], [Vector2(7, 4), Vector2(2, 12)], [Vector2(11, 4), Vector2(1, 12)], [Vector2(1, 5), Vector2(3, 2)], [Vector2(13, 5), Vector2(2, 2)], [Vector2(0, 6), Vector2(1, 1)], [Vector2(12, 6), Vector2(1, 10)], [Vector2(15, 6), Vector2(1, 1)], [Vector2(3, 7), Vector2(1, 9)], [Vector2(2, 8), Vector2(1, 7)], [Vector2(13, 8), Vector2(1, 7)], [Vector2(1, 9), Vector2(1, 1)], [Vector2(14, 9), Vector2(1, 1)], [Vector2(1, 11), Vector2(1, 3)], [Vector2(14, 11), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/shrub"
	},
	"shrub_dark" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(2, 2)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(9, 1), Vector2(1, 15)], [Vector2(13, 1), Vector2(2, 2)], [Vector2(0, 2), Vector2(1, 1)], [Vector2(3, 2), Vector2(2, 2)], [Vector2(11, 2), Vector2(2, 2)], [Vector2(15, 2), Vector2(1, 1)], [Vector2(2, 3), Vector2(1, 1)], [Vector2(5, 3), Vector2(1, 13)], [Vector2(10, 3), Vector2(1, 13)], [Vector2(4, 4), Vector2(1, 12)], [Vector2(7, 4), Vector2(2, 12)], [Vector2(11, 4), Vector2(1, 1)], [Vector2(1, 5), Vector2(3, 2)], [Vector2(13, 5), Vector2(2, 2)], [Vector2(0, 6), Vector2(1, 1)], [Vector2(11, 6), Vector2(2, 10)], [Vector2(15, 6), Vector2(1, 1)], [Vector2(3, 7), Vector2(1, 9)], [Vector2(2, 8), Vector2(1, 7)], [Vector2(13, 8), Vector2(1, 7)], [Vector2(1, 9), Vector2(1, 1)], [Vector2(14, 9), Vector2(1, 1)], [Vector2(1, 11), Vector2(1, 3)], [Vector2(14, 11), Vector2(1, 3)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/intro/shrub_dark"
	},
	"bronze_trophy" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(4, 4), Vector2(8, 7)], [Vector2(5, 11), Vector2(6, 1)], [Vector2(6, 12), Vector2(4, 4)], [Vector2(5, 14), Vector2(1, 2)], [Vector2(10, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/bronze_trophy"
	},
	"changing_door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/changing_door"
	},
	"copy" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(144, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(144, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/copy"
	},
	"gold_trophy" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(14, 11)], [Vector2(0, 5), Vector2(1, 5)], [Vector2(15, 5), Vector2(1, 5)], [Vector2(2, 11), Vector2(3, 1)], [Vector2(6, 11), Vector2(4, 5)], [Vector2(11, 11), Vector2(3, 1)], [Vector2(4, 13), Vector2(2, 3)], [Vector2(10, 13), Vector2(2, 3)], [Vector2(3, 14), Vector2(1, 2)], [Vector2(12, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/gold_trophy"
	},
	"level13_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(14, 16)], [Vector2(22, 0), Vector2(17, 15)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(21, 1), Vector2(1, 15)], [Vector2(39, 1), Vector2(4, 15)], [Vector2(4, 2), Vector2(2, 13)], [Vector2(43, 2), Vector2(3, 12)], [Vector2(3, 3), Vector2(1, 12)], [Vector2(46, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 10)], [Vector2(1, 5), Vector2(1, 8)], [Vector2(43, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(22, 15), Vector2(4, 1)], [Vector2(29, 15), Vector2(10, 1)], [Vector2(43, 15), Vector2(1, 1)], [Vector2(8, 16), Vector2(8, 1)], [Vector2(32, 16), Vector2(8, 1)], [Vector2(9, 17), Vector2(6, 15)], [Vector2(33, 17), Vector2(6, 15)], [Vector2(8, 30), Vector2(1, 2)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(32, 30), Vector2(1, 2)], [Vector2(39, 30), Vector2(1, 2)], [Vector2(31, 31), Vector2(1, 1)], [Vector2(40, 31), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/level13_sign"
	},
	"level5_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(14, 16)], [Vector2(22, 0), Vector2(17, 15)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(21, 1), Vector2(1, 15)], [Vector2(39, 1), Vector2(4, 15)], [Vector2(4, 2), Vector2(2, 13)], [Vector2(43, 2), Vector2(3, 12)], [Vector2(3, 3), Vector2(1, 12)], [Vector2(46, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 10)], [Vector2(1, 5), Vector2(1, 8)], [Vector2(43, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(22, 15), Vector2(4, 1)], [Vector2(29, 15), Vector2(10, 1)], [Vector2(43, 15), Vector2(1, 1)], [Vector2(8, 16), Vector2(8, 1)], [Vector2(32, 16), Vector2(8, 1)], [Vector2(9, 17), Vector2(6, 15)], [Vector2(33, 17), Vector2(6, 15)], [Vector2(8, 30), Vector2(1, 2)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(32, 30), Vector2(1, 2)], [Vector2(39, 30), Vector2(1, 2)], [Vector2(31, 31), Vector2(1, 1)], [Vector2(40, 31), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/level5_sign"
	},
	"level9_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(14, 16)], [Vector2(22, 0), Vector2(17, 15)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(21, 1), Vector2(1, 15)], [Vector2(39, 1), Vector2(4, 15)], [Vector2(4, 2), Vector2(2, 13)], [Vector2(43, 2), Vector2(3, 12)], [Vector2(3, 3), Vector2(1, 12)], [Vector2(46, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 10)], [Vector2(1, 5), Vector2(1, 8)], [Vector2(43, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(22, 15), Vector2(4, 1)], [Vector2(29, 15), Vector2(10, 1)], [Vector2(43, 15), Vector2(1, 1)], [Vector2(8, 16), Vector2(8, 1)], [Vector2(32, 16), Vector2(8, 1)], [Vector2(9, 17), Vector2(6, 15)], [Vector2(33, 17), Vector2(6, 15)], [Vector2(8, 30), Vector2(1, 2)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(32, 30), Vector2(1, 2)], [Vector2(39, 30), Vector2(1, 2)], [Vector2(31, 31), Vector2(1, 1)], [Vector2(40, 31), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/level9_sign"
	},
	"moon_door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/moon_door"
	},
	"multi_gold" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 1), Vector2(6, 5)], [Vector2(9, 1), Vector2(6, 5)], [Vector2(2, 6), Vector2(4, 2)], [Vector2(10, 6), Vector2(4, 2)], [Vector2(1, 7), Vector2(1, 1)], [Vector2(6, 7), Vector2(1, 1)], [Vector2(9, 7), Vector2(1, 1)], [Vector2(14, 7), Vector2(1, 1)], [Vector2(1, 9), Vector2(6, 5)], [Vector2(9, 9), Vector2(6, 5)], [Vector2(2, 14), Vector2(4, 2)], [Vector2(10, 14), Vector2(4, 2)], [Vector2(1, 15), Vector2(1, 1)], [Vector2(6, 15), Vector2(1, 1)], [Vector2(9, 15), Vector2(1, 1)], [Vector2(14, 15), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/multi_gold"
	},
	"new" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 8)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 7)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/new"
	},
	"quit_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(32, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/quit_sign"
	},
	"reset_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(48, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/reset_sign"
	},
	"scores_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(14, 16)], [Vector2(22, 0), Vector2(17, 15)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(21, 1), Vector2(1, 15)], [Vector2(39, 1), Vector2(4, 15)], [Vector2(4, 2), Vector2(2, 13)], [Vector2(43, 2), Vector2(3, 12)], [Vector2(3, 3), Vector2(1, 12)], [Vector2(46, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 10)], [Vector2(1, 5), Vector2(1, 8)], [Vector2(43, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(22, 15), Vector2(4, 1)], [Vector2(29, 15), Vector2(10, 1)], [Vector2(43, 15), Vector2(1, 1)], [Vector2(8, 16), Vector2(8, 1)], [Vector2(32, 16), Vector2(8, 1)], [Vector2(9, 17), Vector2(6, 15)], [Vector2(33, 17), Vector2(6, 15)], [Vector2(8, 30), Vector2(1, 2)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(32, 30), Vector2(1, 2)], [Vector2(39, 30), Vector2(1, 2)], [Vector2(31, 31), Vector2(1, 1)], [Vector2(40, 31), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/scores_sign"
	},
	"silver_trophy" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(3, 1), Vector2(10, 6)], [Vector2(4, 7), Vector2(8, 2)], [Vector2(5, 9), Vector2(6, 1)], [Vector2(6, 10), Vector2(4, 6)], [Vector2(5, 13), Vector2(1, 3)], [Vector2(10, 13), Vector2(1, 3)], [Vector2(4, 14), Vector2(1, 2)], [Vector2(11, 14), Vector2(1, 2)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/silver_trophy"
	},
	"star_door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/star_door"
	},
	"start_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(48, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(7, 0), Vector2(14, 16)], [Vector2(22, 0), Vector2(17, 15)], [Vector2(6, 1), Vector2(1, 15)], [Vector2(21, 1), Vector2(1, 15)], [Vector2(39, 1), Vector2(4, 15)], [Vector2(4, 2), Vector2(2, 13)], [Vector2(43, 2), Vector2(3, 12)], [Vector2(3, 3), Vector2(1, 12)], [Vector2(46, 3), Vector2(1, 10)], [Vector2(2, 4), Vector2(1, 10)], [Vector2(1, 5), Vector2(1, 8)], [Vector2(43, 14), Vector2(2, 1)], [Vector2(5, 15), Vector2(1, 1)], [Vector2(22, 15), Vector2(4, 1)], [Vector2(29, 15), Vector2(10, 1)], [Vector2(43, 15), Vector2(1, 1)], [Vector2(8, 16), Vector2(8, 1)], [Vector2(32, 16), Vector2(8, 1)], [Vector2(9, 17), Vector2(6, 15)], [Vector2(33, 17), Vector2(6, 15)], [Vector2(8, 30), Vector2(1, 2)], [Vector2(15, 30), Vector2(1, 2)], [Vector2(32, 30), Vector2(1, 2)], [Vector2(39, 30), Vector2(1, 2)], [Vector2(31, 31), Vector2(1, 1)], [Vector2(40, 31), Vector2(1, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/start_sign"
	},
	"sun_door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(16, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/sun_door"
	},
	"title" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(128, 16)],
			"collision_rectangles" : {
				0 : [[Vector2(0, 0), Vector2(128, 16)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/title"
	},
	"title_bg" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(192, 80)],
			"collision_rectangles" : {
				0 : [[Vector2(38, 0), Vector2(15, 75)], [Vector2(53, 1), Vector2(2, 76)], [Vector2(163, 1), Vector2(8, 59)], [Vector2(19, 2), Vector2(11, 74)], [Vector2(55, 2), Vector2(1, 75)], [Vector2(171, 2), Vector2(1, 62)], [Vector2(16, 3), Vector2(3, 76)], [Vector2(30, 3), Vector2(2, 74)], [Vector2(172, 3), Vector2(1, 61)], [Vector2(6, 4), Vector2(5, 75)], [Vector2(14, 4), Vector2(2, 74)], [Vector2(32, 4), Vector2(4, 74)], [Vector2(173, 4), Vector2(1, 61)], [Vector2(5, 5), Vector2(1, 70)], [Vector2(11, 5), Vector2(1, 75)], [Vector2(13, 5), Vector2(1, 73)], [Vector2(36, 5), Vector2(1, 75)], [Vector2(174, 5), Vector2(1, 60)], [Vector2(4, 6), Vector2(1, 68)], [Vector2(12, 6), Vector2(1, 73)], [Vector2(37, 6), Vector2(1, 74)], [Vector2(56, 6), Vector2(8, 69)], [Vector2(70, 6), Vector2(5, 73)], [Vector2(162, 6), Vector2(1, 54)], [Vector2(175, 6), Vector2(1, 59)], [Vector2(64, 7), Vector2(6, 70)], [Vector2(75, 7), Vector2(1, 72)], [Vector2(139, 7), Vector2(8, 2)], [Vector2(158, 7), Vector2(4, 52)], [Vector2(176, 7), Vector2(1, 58)], [Vector2(3, 8), Vector2(1, 65)], [Vector2(76, 8), Vector2(1, 70)], [Vector2(136, 8), Vector2(3, 2)], [Vector2(147, 8), Vector2(1, 56)], [Vector2(157, 8), Vector2(1, 55)], [Vector2(177, 8), Vector2(1, 56)], [Vector2(133, 9), Vector2(3, 2)], [Vector2(139, 9), Vector2(1, 1)], [Vector2(144, 9), Vector2(3, 1)], [Vector2(148, 9), Vector2(3, 56)], [Vector2(154, 9), Vector2(3, 56)], [Vector2(178, 9), Vector2(1, 50)], [Vector2(2, 10), Vector2(1, 8)], [Vector2(77, 10), Vector2(1, 67)], [Vector2(94, 10), Vector2(4, 55)], [Vector2(132, 10), Vector2(1, 2)], [Vector2(146, 10), Vector2(1, 2)], [Vector2(151, 10), Vector2(3, 57)], [Vector2(179, 10), Vector2(1, 48)], [Vector2(85, 11), Vector2(4, 59)], [Vector2(93, 11), Vector2(1, 63)], [Vector2(98, 11), Vector2(1, 54)], [Vector2(131, 11), Vector2(1, 2)], [Vector2(180, 11), Vector2(1, 47)], [Vector2(78, 12), Vector2(2, 63)], [Vector2(81, 12), Vector2(4, 60)], [Vector2(89, 12), Vector2(2, 59)], [Vector2(92, 12), Vector2(1, 62)], [Vector2(130, 12), Vector2(1, 1)], [Vector2(80, 13), Vector2(1, 61)], [Vector2(91, 13), Vector2(1, 61)], [Vector2(99, 13), Vector2(1, 8)], [Vector2(144, 13), Vector2(3, 42)], [Vector2(181, 13), Vector2(1, 44)], [Vector2(142, 14), Vector2(2, 40)], [Vector2(182, 14), Vector2(1, 42)], [Vector2(100, 15), Vector2(1, 4)], [Vector2(141, 15), Vector2(1, 40)], [Vector2(183, 15), Vector2(1, 46)], [Vector2(140, 17), Vector2(1, 38)], [Vector2(184, 17), Vector2(1, 48)], [Vector2(132, 18), Vector2(8, 29)], [Vector2(130, 19), Vector2(2, 31)], [Vector2(129, 20), Vector2(1, 30)], [Vector2(185, 20), Vector2(1, 46)], [Vector2(2, 21), Vector2(1, 51)], [Vector2(128, 22), Vector2(1, 28)], [Vector2(1, 23), Vector2(1, 13)], [Vector2(99, 24), Vector2(4, 42)], [Vector2(186, 24), Vector2(1, 43)], [Vector2(103, 25), Vector2(4, 45)], [Vector2(107, 26), Vector2(3, 43)], [Vector2(110, 27), Vector2(2, 40)], [Vector2(118, 27), Vector2(4, 6)], [Vector2(112, 28), Vector2(1, 32)], [Vector2(115, 28), Vector2(3, 22)], [Vector2(122, 28), Vector2(2, 3)], [Vector2(187, 28), Vector2(1, 39)], [Vector2(113, 29), Vector2(2, 23)], [Vector2(188, 30), Vector2(1, 15)], [Vector2(122, 31), Vector2(1, 1)], [Vector2(124, 32), Vector2(3, 18)], [Vector2(118, 33), Vector2(2, 11)], [Vector2(127, 33), Vector2(1, 16)], [Vector2(189, 33), Vector2(1, 9)], [Vector2(120, 36), Vector2(1, 12)], [Vector2(121, 38), Vector2(1, 12)], [Vector2(1, 39), Vector2(1, 12)], [Vector2(122, 40), Vector2(1, 10)], [Vector2(123, 42), Vector2(1, 8)], [Vector2(119, 44), Vector2(1, 2)], [Vector2(132, 47), Vector2(1, 3)], [Vector2(135, 47), Vector2(5, 1)], [Vector2(136, 48), Vector2(4, 6)], [Vector2(188, 48), Vector2(1, 19)], [Vector2(135, 49), Vector2(1, 4)], [Vector2(189, 49), Vector2(1, 17)], [Vector2(115, 50), Vector2(2, 1)], [Vector2(115, 51), Vector2(1, 1)], [Vector2(190, 51), Vector2(1, 8)], [Vector2(113, 52), Vector2(1, 11)], [Vector2(1, 53), Vector2(1, 17)], [Vector2(114, 54), Vector2(2, 10)], [Vector2(137, 54), Vector2(3, 1)], [Vector2(116, 55), Vector2(1, 15)], [Vector2(145, 55), Vector2(2, 5)], [Vector2(117, 56), Vector2(1, 16)], [Vector2(118, 57), Vector2(1, 8)], [Vector2(0, 58), Vector2(1, 9)], [Vector2(119, 59), Vector2(1, 4)], [Vector2(158, 59), Vector2(1, 3)], [Vector2(146, 60), Vector2(1, 2)], [Vector2(165, 60), Vector2(6, 2)], [Vector2(166, 62), Vector2(5, 2)], [Vector2(115, 64), Vector2(1, 2)], [Vector2(167, 64), Vector2(4, 1)], [Vector2(94, 65), Vector2(3, 7)], [Vector2(149, 65), Vector2(2, 1)], [Vector2(154, 65), Vector2(2, 1)], [Vector2(168, 65), Vector2(2, 1)], [Vector2(97, 66), Vector2(1, 5)], [Vector2(100, 66), Vector2(3, 3)], [Vector2(118, 66), Vector2(1, 7)], [Vector2(150, 66), Vector2(1, 1)], [Vector2(98, 67), Vector2(1, 3)], [Vector2(110, 67), Vector2(1, 1)], [Vector2(119, 68), Vector2(1, 5)], [Vector2(101, 69), Vector2(2, 1)], [Vector2(107, 69), Vector2(2, 1)], [Vector2(85, 70), Vector2(2, 1)], [Vector2(102, 70), Vector2(4, 1)], [Vector2(120, 70), Vector2(1, 4)], [Vector2(85, 71), Vector2(1, 1)], [Vector2(90, 71), Vector2(1, 2)], [Vector2(121, 71), Vector2(1, 3)], [Vector2(81, 72), Vector2(3, 1)], [Vector2(94, 72), Vector2(2, 1)], [Vector2(122, 72), Vector2(1, 2)], [Vector2(128, 72), Vector2(3, 1)], [Vector2(123, 73), Vector2(5, 1)], [Vector2(123, 74), Vector2(4, 1)], [Vector2(38, 75), Vector2(12, 3)], [Vector2(51, 75), Vector2(2, 1)], [Vector2(56, 75), Vector2(6, 1)], [Vector2(63, 75), Vector2(1, 1)], [Vector2(78, 75), Vector2(1, 1)], [Vector2(19, 76), Vector2(1, 2)], [Vector2(21, 76), Vector2(9, 1)], [Vector2(52, 76), Vector2(1, 1)], [Vector2(56, 76), Vector2(1, 1)], [Vector2(23, 77), Vector2(7, 1)], [Vector2(67, 77), Vector2(3, 1)], [Vector2(33, 78), Vector2(3, 1)], [Vector2(38, 78), Vector2(11, 1)], [Vector2(68, 78), Vector2(2, 1)], [Vector2(7, 79), Vector2(4, 1)], [Vector2(34, 79), Vector2(2, 1)], [Vector2(38, 79), Vector2(9, 1)], [Vector2(70, 79), Vector2(4, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/title_bg"
	},
	"tutorial_sign" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(32, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/other/title/tutorial_sign"
	},
	"_0" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(221, 28)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(219, 26)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/supersound/_0"
	},
	"_1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(170, 108)],
			"collision_rectangles" : [Vector2(1, 1), Vector2(168, 106)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/supersound/_1"
	},
	"arrow_trap_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/arrow_trap_left"
	},
	"arrow_trap_left_lit" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/arrow_trap_left_lit"
	},
	"arrow_trap_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/arrow_trap_right"
	},
	"arrow_trap_right_lit" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/arrow_trap_right_lit"
	},
	"boulder" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(32, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/boulder"
	},
	"boulder_rotate_l" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(10, 0), Vector2(13, 32)], [Vector2(8, 1), Vector2(2, 30)], [Vector2(23, 1), Vector2(2, 30)], [Vector2(6, 2), Vector2(2, 28)], [Vector2(25, 2), Vector2(2, 28)], [Vector2(5, 3), Vector2(1, 26)], [Vector2(27, 3), Vector2(1, 26)], [Vector2(4, 4), Vector2(1, 24)], [Vector2(28, 4), Vector2(1, 24)], [Vector2(3, 5), Vector2(1, 22)], [Vector2(29, 5), Vector2(1, 22)], [Vector2(2, 7), Vector2(1, 18)], [Vector2(30, 7), Vector2(1, 18)], [Vector2(1, 9), Vector2(1, 14)], [Vector2(31, 10), Vector2(1, 13)], [Vector2(0, 12), Vector2(1, 9)]],
		1 : [[Vector2(10, 0), Vector2(13, 31)], [Vector2(7, 1), Vector2(3, 29)], [Vector2(23, 1), Vector2(2, 29)], [Vector2(5, 2), Vector2(2, 27)], [Vector2(25, 2), Vector2(2, 27)], [Vector2(4, 3), Vector2(1, 25)], [Vector2(27, 3), Vector2(1, 25)], [Vector2(3, 4), Vector2(1, 23)], [Vector2(28, 4), Vector2(1, 23)], [Vector2(2, 5), Vector2(1, 21)], [Vector2(29, 5), Vector2(1, 21)], [Vector2(1, 7), Vector2(1, 17)], [Vector2(30, 7), Vector2(1, 17)], [Vector2(0, 9), Vector2(1, 13)], [Vector2(31, 9), Vector2(1, 13)], [Vector2(9, 30), Vector2(1, 1)], [Vector2(11, 31), Vector2(10, 1)]],
		2 : [[Vector2(9, 0), Vector2(13, 32)], [Vector2(7, 1), Vector2(2, 30)], [Vector2(22, 1), Vector2(2, 30)], [Vector2(5, 2), Vector2(2, 28)], [Vector2(24, 2), Vector2(2, 28)], [Vector2(4, 3), Vector2(1, 26)], [Vector2(26, 3), Vector2(1, 26)], [Vector2(3, 4), Vector2(1, 24)], [Vector2(27, 4), Vector2(1, 24)], [Vector2(2, 5), Vector2(1, 22)], [Vector2(28, 5), Vector2(1, 22)], [Vector2(1, 7), Vector2(1, 18)], [Vector2(29, 7), Vector2(1, 18)], [Vector2(0, 9), Vector2(1, 13)], [Vector2(30, 9), Vector2(1, 14)], [Vector2(31, 11), Vector2(1, 10)]],
		3 : [[Vector2(11, 0), Vector2(10, 32)], [Vector2(9, 1), Vector2(2, 31)], [Vector2(21, 1), Vector2(2, 30)], [Vector2(7, 2), Vector2(2, 29)], [Vector2(23, 2), Vector2(2, 29)], [Vector2(5, 3), Vector2(2, 27)], [Vector2(25, 3), Vector2(2, 27)], [Vector2(4, 4), Vector2(1, 25)], [Vector2(27, 4), Vector2(1, 25)], [Vector2(3, 5), Vector2(1, 23)], [Vector2(28, 5), Vector2(1, 23)], [Vector2(2, 6), Vector2(1, 21)], [Vector2(29, 6), Vector2(1, 21)], [Vector2(1, 8), Vector2(1, 17)], [Vector2(30, 8), Vector2(1, 17)], [Vector2(0, 10), Vector2(1, 13)], [Vector2(31, 10), Vector2(1, 13)], [Vector2(21, 31), Vector2(1, 1)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/traps/boulder_rotate_l"
	},
	"boulder_rotate_r" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(11, 0), Vector2(10, 32)], [Vector2(9, 1), Vector2(2, 31)], [Vector2(21, 1), Vector2(2, 30)], [Vector2(7, 2), Vector2(2, 29)], [Vector2(23, 2), Vector2(2, 29)], [Vector2(5, 3), Vector2(2, 27)], [Vector2(25, 3), Vector2(2, 27)], [Vector2(4, 4), Vector2(1, 25)], [Vector2(27, 4), Vector2(1, 25)], [Vector2(3, 5), Vector2(1, 23)], [Vector2(28, 5), Vector2(1, 23)], [Vector2(2, 6), Vector2(1, 21)], [Vector2(29, 6), Vector2(1, 21)], [Vector2(1, 8), Vector2(1, 17)], [Vector2(30, 8), Vector2(1, 17)], [Vector2(0, 10), Vector2(1, 13)], [Vector2(31, 10), Vector2(1, 13)], [Vector2(21, 31), Vector2(1, 1)]],
		1 : [[Vector2(9, 0), Vector2(13, 32)], [Vector2(7, 1), Vector2(2, 30)], [Vector2(22, 1), Vector2(2, 30)], [Vector2(5, 2), Vector2(2, 28)], [Vector2(24, 2), Vector2(2, 28)], [Vector2(4, 3), Vector2(1, 26)], [Vector2(26, 3), Vector2(1, 26)], [Vector2(3, 4), Vector2(1, 24)], [Vector2(27, 4), Vector2(1, 24)], [Vector2(2, 5), Vector2(1, 22)], [Vector2(28, 5), Vector2(1, 22)], [Vector2(1, 7), Vector2(1, 18)], [Vector2(29, 7), Vector2(1, 18)], [Vector2(0, 9), Vector2(1, 13)], [Vector2(30, 9), Vector2(1, 14)], [Vector2(31, 11), Vector2(1, 10)]],
		2 : [[Vector2(10, 0), Vector2(13, 31)], [Vector2(7, 1), Vector2(3, 29)], [Vector2(23, 1), Vector2(2, 29)], [Vector2(5, 2), Vector2(2, 27)], [Vector2(25, 2), Vector2(2, 27)], [Vector2(4, 3), Vector2(1, 25)], [Vector2(27, 3), Vector2(1, 25)], [Vector2(3, 4), Vector2(1, 23)], [Vector2(28, 4), Vector2(1, 23)], [Vector2(2, 5), Vector2(1, 21)], [Vector2(29, 5), Vector2(1, 21)], [Vector2(1, 7), Vector2(1, 17)], [Vector2(30, 7), Vector2(1, 17)], [Vector2(0, 9), Vector2(1, 13)], [Vector2(31, 9), Vector2(1, 13)], [Vector2(9, 30), Vector2(1, 1)], [Vector2(11, 31), Vector2(10, 1)]],
		3 : [[Vector2(10, 0), Vector2(13, 32)], [Vector2(8, 1), Vector2(2, 30)], [Vector2(23, 1), Vector2(2, 30)], [Vector2(6, 2), Vector2(2, 28)], [Vector2(25, 2), Vector2(2, 28)], [Vector2(5, 3), Vector2(1, 26)], [Vector2(27, 3), Vector2(1, 26)], [Vector2(4, 4), Vector2(1, 24)], [Vector2(28, 4), Vector2(1, 24)], [Vector2(3, 5), Vector2(1, 22)], [Vector2(29, 5), Vector2(1, 22)], [Vector2(2, 7), Vector2(1, 18)], [Vector2(30, 7), Vector2(1, 18)], [Vector2(1, 9), Vector2(1, 14)], [Vector2(31, 10), Vector2(1, 13)], [Vector2(0, 12), Vector2(1, 9)]]
			}
			},
			"preload" : true,
			"smooth_edges" : false,
			"transparent" : false,
			"folder_path" : "res://sprites/traps/boulder_rotate_r"
	},
	"ceiling_trap" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/ceiling_trap"
	},
	"ceiling_trap_s" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/ceiling_trap_s"
	},
	"door" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 32)],
			"collision_rectangles" : [Vector2(1, 0), Vector2(14, 32)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/door"
	},
	"giant_tiki_head" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(29, 29)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(30, 1), Vector2(1, 3)], [Vector2(30, 5), Vector2(2, 4)], [Vector2(0, 7), Vector2(1, 17)], [Vector2(30, 9), Vector2(1, 23)], [Vector2(31, 20), Vector2(1, 6)], [Vector2(31, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(28, 2)], [Vector2(3, 31), Vector2(27, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/giant_tiki_head"
	},
	"gth_hole" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(29, 29)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(30, 1), Vector2(1, 3)], [Vector2(30, 5), Vector2(2, 4)], [Vector2(0, 7), Vector2(1, 17)], [Vector2(30, 9), Vector2(1, 23)], [Vector2(31, 20), Vector2(1, 6)], [Vector2(31, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(28, 2)], [Vector2(3, 31), Vector2(27, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/gth_hole"
	},
	"kali_head1" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(29, 29)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(30, 1), Vector2(1, 3)], [Vector2(30, 5), Vector2(2, 4)], [Vector2(0, 7), Vector2(1, 17)], [Vector2(30, 9), Vector2(1, 23)], [Vector2(31, 20), Vector2(1, 6)], [Vector2(31, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(28, 2)], [Vector2(3, 31), Vector2(27, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/kali_head1"
	},
	"kali_head2" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(29, 29)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(30, 1), Vector2(1, 3)], [Vector2(30, 5), Vector2(2, 4)], [Vector2(0, 7), Vector2(1, 17)], [Vector2(30, 9), Vector2(1, 23)], [Vector2(31, 20), Vector2(1, 6)], [Vector2(31, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(28, 2)], [Vector2(3, 31), Vector2(27, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/kali_head2"
	},
	"kali_head3" : {
		"origin" : Vector2(16, 16),
		"mask" : {
			"separate" : true,
			"shape" : "PRECISE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(32, 32)],
			"collision_rectangles" : {
				0 : [[Vector2(1, 0), Vector2(29, 29)], [Vector2(0, 1), Vector2(1, 3)], [Vector2(30, 1), Vector2(1, 3)], [Vector2(30, 5), Vector2(2, 4)], [Vector2(0, 7), Vector2(1, 17)], [Vector2(30, 9), Vector2(1, 23)], [Vector2(31, 20), Vector2(1, 6)], [Vector2(31, 28), Vector2(1, 4)], [Vector2(2, 29), Vector2(28, 2)], [Vector2(3, 31), Vector2(27, 1)]]
			}
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/kali_head3"
	},
	"smash_trap" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/smash_trap"
	},
	"smash_trap_lit" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/smash_trap_lit"
	},
	"spears_left" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spears_left"
	},
	"spears_right" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(9, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spears_right"
	},
	"spear_trap1" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spear_trap1"
	},
	"spear_trap2" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spear_trap2"
	},
	"spear_trap_lit" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spear_trap_lit"
	},
	"spikes" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 3), Vector2(16, 13)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spikes"
	},
	"spikes_blood" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 4), Vector2(16, 12)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spikes_blood"
	},
	"spring_trap" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 12), Vector2(16, 4)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spring_trap"
	},
	"spring_trap_sprung" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 0), Vector2(16, 16)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/spring_trap_sprung"
	},
	"thwomp_trap" : {
		"origin" : Vector2(0, 0),
		"mask" : {
			"separate" : true,
			"shape" : "RECTANGLE",
			"bounds" : null,
			"bounding_box" : [Vector2(0, 0), Vector2(16, 16)],
			"collision_rectangles" : [Vector2(0, 1), Vector2(16, 15)]
		},
		"preload" : true,
		"smooth_edges" : false,
		"transparent" : false,
		"folder_path" : "res://sprites/traps/thwomp_trap"
	}
}
