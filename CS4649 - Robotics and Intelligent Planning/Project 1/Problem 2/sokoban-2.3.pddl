(define (problem sokoban-2.3)
	(:domain sokoban-domain)
	(:objects north south east west A1 A2 A3 B1 B3 C1 C2 C3 D1 D3 E1 E2 E3 F1 F3 G1 G2 G3 G4 G5 G6 
					H3 H6 I3 I4 I5 I6 bot block1 block2 block3)
	(:init 
		(robot bot) (block block1) (block block2) (block block3)
		 (free A1) (free A2) (free A3) 
		 (free B1) 			 (locatedAt bot B3)
		 (free C1) (free C2) (free C3)
		 (free D1) 			  (locatedAt block3 D3)
		 (free E1) (free E2) (free E3) 
		 (free F1) 			 (locatedAt block2 F3)
		 (free G1) (free G2) (free G3) (free G4) (free G5) (free G6) 
							 (locatedAt block1 H3)         (free H6) 
							(free I3) (free I4) (free I5) (free I6) 
		 (adjacent A1 A2 north) (adjacent A2 A3 north) (adjacent A2 A1 south) (adjacent A3 A2 south)  	
		 (adjacent C1 C2 north) (adjacent C2 C3 north) (adjacent C2 C1 south) (adjacent C3 C2 south)  
		 (adjacent E1 E2 north) (adjacent E2 E3 north) (adjacent E2 E1 south) (adjacent E3 E2 south) 
		 (adjacent G1 G2 north) (adjacent G2 G3 north) (adjacent G3 G4 north) (adjacent G4 G5 north) (adjacent G5 G6 north) 
		 (adjacent G6 G5 south) (adjacent G5 G4 south) (adjacent G4 G3 south) (adjacent G3 G2 south) (adjacent G2 G1 south)
		 (adjacent I3 I4 north) (adjacent I4 I5 north) (adjacent I5 I6 north) 
		 (adjacent I6 I5 south) (adjacent I5 I4 south) (adjacent I4 I3 south)

		 (adjacent A1 B1 east) (adjacent B1 C1 east) (adjacent C1 D1 east) (adjacent D1 E1 east) (adjacent E1 F1 east) (adjacent F1 G1 east) 
		 (adjacent G1 F1 west) (adjacent F1 E1 west) (adjacent E1 D1 west) (adjacent D1 C1 west) (adjacent C1 B1 west) (adjacent B1 A1 west) 

		 (adjacent A3 B3 east) (adjacent B3 C3 east) (adjacent C3 D3 east) (adjacent D3 E3 east) (adjacent E3 F3 east) (adjacent F3 G3 east) (adjacent G3 H3 east) (adjacent H3 I3 east)
		 (adjacent I3 H3 west) (adjacent H3 G3 west) (adjacent G3 F3 west) (adjacent F3 E3 west) (adjacent E3 D3 west) (adjacent D3 C3 west) (adjacent C3 B3 west) (adjacent B3 A3 west)

		 (adjacent G6 H6 east) (adjacent H6 I6 east) (adjacent I6 H6 west) (adjacent H6 G6 west)
	)
	(:goal (and (locatedAt block1 G6)
				(locatedAt block2 G5)
				(locatedAt block3 G4)
	))
)
