#!/usr/bin/env julia
###############################################################################

type Student
	name::AbstractString
	surname::AbstractString
	index::AbstractString
	email::AbstractString
	points::Int
end

type Team
	members::Vector{Student}
end

typealias URL AbstractString
type Spec
	text::AbstractString
	resources::Vector{URL}
end

type Solution
	repo::URL
	# Short youtube presentation.
	youtube::URL
	# download.bit HW+SW
	# Could set URL to file in github master blob.
	release_bit::URL
	# Short project documentation.
	# Could set URL to file in github master blob.
	doc::URL
end

type Project
	name::AbstractString
	points::Int
	min_team_members::Int
	team::Team
	spec::Spec
	solution::Solution
	done::Bool
end


###############################################################################

projects = Project[
	Project(
		"麻将 – Mahjong",
		45,
		4,
		Team(
			Student[
				Student(
					"Radenko",
					"Banovic",
					"RA-38/2014",
					"banovic@protonmail.ch",
					0
				),
				Student(
					"Lana",
					"Salai",
					"RA-45/2014",
					"lanadjukanovic@gmail.com",
					0
				),
				Student(
					"Ksenija",
					"Popov",
					"RA-151/2014",
					"ksenija.popov@gmail.com",
					0
				),
				Student(
					"Nemanja",
					"Lazukic",
					"RA-228/2014",
					"nemanjal95@hotmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/suncicam/MinesweeperProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Skočko",
		40,
		3,
		Team(
			Student[
				Student(
					"Predrag",
					"Sladek",
					"RA-48/2014",
					"pedjasladek@gmail.com",
					0
				),
				Student(
					"Stefan",
					"Masalusić",
					"RA-193/20Y14",
					"masalusicstefan@gmail.com",
					0
				),
				Student(
					"Nedeljko",
					"Mutlak",
					"RA-28/2014",
					"nedeljkomutlak@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/suncicam/MinesweeperProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Super Mario",
		45,
		4,
		Team(
			Student[
				Student(
					"Jelena"
					"Jovičić"
					"RA-127/2014"
					"jjovicic13@hotmail.rs"
					0
				),
				Student(
					"Mia"
					"Stepanović"
					"RA-129/2014"
					"miastepanovic19@gmail.com"
					0
				),
				Student(
					"Aleksandar"
					"Lazić"
					"RA-104/2014"
					"lazic.aleksandar11@gmail.com"
					0
				),
				Student(
					"Stefan"
					"Vukanović"
					"RA-210/2014"
					"stefan.vukanovic@hotmail.com"
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/Una13/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"2D framebuffer-less GPU",
		45,
		3,
		Team(
			Student[
				Student(
					"Miroslav",
					"Radakovic",
					"RA-40/2014",
					"miroslav.radakovic23@gmail.com",
					0
				),
				Student(
					"Milan",
					"Djokic",
					"RA-11/2014",
					"milandjokic1995@gmail.com",
					0
				),
				
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MilosSubotic/FBless_2D_GPU"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Tap That Cat with Colors",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Pie with Rationals",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Dimmer",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Buzzer syntesizer",
		40,
		4,
		Team(
			Student[
				Student(
					"Robert",
					"Šandor",
					"RA-17/2014",
					"robert.sandor@outlook.com",
					0
				),
				Student(
					"Filip",
					"Dutina",
					"RA-43/2014",
					"filip.dutina@gmail.com",
					0
				),
				Student(
					"Aleksandar",
					"Jurica",
					"RA-47/2014",
					"jurica.aleksandar@gmail.com",
					0
				),
				Student(
					"Milan",
					"Vidić",
					"RA-241/2015",
					"milan_vidic000@yahoo.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/boza94/pizeo_buzz"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Pacman",
		40,
		3,
		Team(
			Student[
				Student(
					"Marko",
 					"Matic",
 					"RA-87/2014",
 					"maticmarko95@yahoo.com",
 					0
 				),
 				Student(
 					"Damir",
 					"Letic",
 					"RA-232/2013",
 					"cenejac94@gmail.com",
 					0
 				),
 				Student(
 					"Maja",
 					"Zerajic",
 					"RA-101/2013",
 					"majazerajic94@gmail.com",
  					0
  				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/suncicam/MinesweeperProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Bilinear Interpolation Co-processor",
		45,
		4,
		Team(
			Student[
				Student(
					"Dejan",
					"Martinov",
					"RA-94/2013",
					"dejan.martinov94@yahoo.com",
					0
				),
				Student(
					"Uros",
					"Ristanovic",
					"RA-223/2013",
					"urosristanovic@gmail.com",
					0
				),
				Student(
					"Nemanja",
					"Rotman",
					"RA-240/2013",
					"roki94ftn@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MilosSubotic/Interpol"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"I2C network – game of choice",
		45,
		4,
		Team(
			Student[
				Student(
					"Aleksa",
					"Corovic",
					"RA-54/2014",
					"aleksa.corovic@systemli.org",
					0
				),
				Student(
					"Mihailo",
					"Stojanovic",
					"RA-26/2014",
					"mihailo.stojanovic26@gmail.com",
					0
				),
				Student(
					"Stevan",
					"Stevic",
					"RA-63/2014",
					"stevan.stevic4343@gmail.com",
					0
				),
				Student(
					"Marko",
					"Dragojevic",
					"RA-74/2014",
					"marko.godra@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/LPRS2/lab5"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"DMA",
		40,
		2,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Flipper",
		45,
		3,
		Team(
			Student[
				Student(
					"Andrej",
					"Kaprocki",
					"RA-2/2014",
					"andrej149acm@gmail.com",
					0
				),
				Student(
					"Dusan",
					"Prica",
					"RA-19/2014",
					"prica.dusan16@gmail.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Breakout",
		40,
		3,
		Team(
			Student[
				Student(
					"Mila",
					"Kotur",
					"RA-128/2014",
					"milakotur@gmail.com",
					0
				),
				Student(
					"Marijana",
					"Zelic",
					"RA-208/2014",
					"makizelic@gmail.com",
					0
				),
				Student(
					"Sandra",
					"Tripkovic",
					"RA-29/2014",
					"tripkovic.s95@gmail.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Galaga",
		45,
		4,
		Team(
			Student[
				Student(
					"Milan",
					"Gvero",
					"RA-20/2014",
					"mgstivig585@gmail.com",
					0
				),
				Student(
					"Isidora",
					"Seleakovic",
					"RA-103/2014",
					"isii24sk@gmail.com",
					0
				),
				Student(
					"Srdjan",
					"Zivanic",
					"RA-204/2013",
					"srdjan.zivanic@gmail.com",
					0
				),
				Student(
					"Djordje",
					"Ramic",
					"RA-223/2014",
					"djramic@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/Una13/super_mario"),
				URL("https://www.spriters-resource.com/resources/sheets/24/26482.png")
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Tenkići",
		40,
		3,
		Team(
			Student[
				Student(
					"Vuletic",
					"Milan",
					"RA-237/2013",
					"mixa4@live.com",
					0
				),
				Student(
					"Ercegovcevic",
					"Luka",
					"RA-165/2014",
					"erceg-95@hotmail.com",
					0
				),
				Student(
					"Egelja",
					"Maksim",
					"RA-51/2014",
					"maksimdavid@gmail.com",
					0
				)
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/RELJEF/battle_city_fpga"),
				URL("http://pc.cd/lJW7")
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Asteroids",
		40,
		3,
		Team(
			Student[
				Student(
					"Vladimir",
					"Lazic",
					"RA-57/2014",
					"ironmanm72@gmail.com",
					0
				),
				Student(
					"Srdjan",
					"Suvakov",
					"RA-174/2014",
					"suvakov.srdjan@gmail.com",
					0
				),
				Student(
					"Stefan",
					"Nicetin",
					"RA-188/2014",
					"niketic95@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Dig Dug",
		40,
		4,
		Team(
			Student[
				Student(
					"Miljan",
					"Vajagic",
					"RA-229/2014",
					"miljanzr@yahoo.com",
					0
				),
				Student(
					"Milan",
					"Trkulja",
					"RA-227/2014",
					"milantrkulja995@gmail.com",
					0
				),
				Student(
					"Lara",
					"Milovanovic",
					"RA-229/2014",
					"miljanzr@yahoo.com",
					0
				),
				Student(
					"Lazar",
					"Svonja",
					"RA-229/2014",
					"miljanzr@yahoo.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/suncicam/MinesweeperProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Sudoku",
		40,
		4,
		Team(
			Student[
				Student(
					"Miloš",
					"Ivanković",
					"RA-233/2014",
					"ivankovicm02@gmail.com",
					0
				),
				Student(
					"Dragoljub",
					"Gajić",
					"RA-84/2014",
					"dragoljubgajic1994@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
]

additional = URL[
	# Making bit file.
	"https://www.youtube.com/watch?v=RBa6gx5Mx5c",
	# Presentations.
	#TODO
]

###############################################################################

function no_of_students(project::Project)
	if project.team.members[1].name == "??"
		return 0
	else
		return length(project.team.members)
	end
end
N_students = sum(map(no_of_students, projects))
@show N_students

function project_taken(project::Project)
	!any(map((member) -> member.name == "??", project.team.members))
end

for project in projects
	if !project.done && project_taken(project)
		println("Not done: ", project.name)
	end
end

###############################################################################
