(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	thermograph1 - mode
	spectrograph4 - mode
	thermograph5 - mode
	image3 - mode
	infrared2 - mode
	spectrograph0 - mode
	GroundStation0 - direction
	Star1 - direction
	Star3 - direction
	GroundStation4 - direction
	Star5 - direction
	GroundStation6 - direction
	GroundStation8 - direction
	Star9 - direction
	Star11 - direction
	GroundStation12 - direction
	Star13 - direction
	Star15 - direction
	GroundStation17 - direction
	GroundStation18 - direction
	Star19 - direction
	GroundStation20 - direction
	GroundStation21 - direction
	GroundStation22 - direction
	Star23 - direction
	Star24 - direction
	GroundStation25 - direction
	GroundStation26 - direction
	Star27 - direction
	GroundStation28 - direction
	GroundStation29 - direction
	Star2 - direction
	GroundStation7 - direction
	GroundStation10 - direction
	GroundStation16 - direction
	Star14 - direction
	Phenomenon30 - direction
	Star31 - direction
	Star32 - direction
	Phenomenon33 - direction
	Phenomenon34 - direction
	Star35 - direction
	Phenomenon36 - direction
	Planet37 - direction
	Star38 - direction
	Planet39 - direction
	Star40 - direction
	Planet41 - direction
	Phenomenon42 - direction
	Planet43 - direction
	Phenomenon44 - direction
	Phenomenon45 - direction
	Star46 - direction
	Star47 - direction
	Planet48 - direction
	Star49 - direction
	Planet50 - direction
	Planet51 - direction
	Planet52 - direction
	Star53 - direction
	Star54 - direction
	Phenomenon55 - direction
)
(:init
	(supports instrument0 thermograph5)
	(supports instrument0 thermograph1)
	(supports instrument0 image3)
	(supports instrument0 spectrograph0)
	(supports instrument0 infrared2)
	(supports instrument0 spectrograph4)
	(calibration_target instrument0 Star14)
	(calibration_target instrument0 GroundStation16)
	(calibration_target instrument0 GroundStation10)
	(calibration_target instrument0 GroundStation7)
	(calibration_target instrument0 Star2)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Phenomenon33)
)
(:goal (and
	(pointing satellite0 GroundStation16)
	(have_image Phenomenon30 spectrograph0)
	(have_image Star31 thermograph5)
	(have_image Star31 image3)
	(have_image Star32 spectrograph0)
	(have_image Star32 spectrograph4)
	(have_image Phenomenon33 infrared2)
	(have_image Phenomenon33 spectrograph0)
	(have_image Phenomenon34 spectrograph0)
	(have_image Star35 spectrograph4)
	(have_image Phenomenon36 thermograph1)
	(have_image Phenomenon36 image3)
	(have_image Planet37 thermograph5)
	(have_image Planet37 thermograph1)
	(have_image Star38 image3)
	(have_image Planet39 infrared2)
	(have_image Planet39 spectrograph4)
	(have_image Star40 infrared2)
	(have_image Star40 thermograph1)
	(have_image Planet41 spectrograph4)
	(have_image Phenomenon42 spectrograph0)
	(have_image Phenomenon42 spectrograph4)
	(have_image Planet43 spectrograph0)
	(have_image Phenomenon44 spectrograph0)
	(have_image Phenomenon45 thermograph1)
	(have_image Phenomenon45 thermograph5)
	(have_image Star46 spectrograph0)
	(have_image Star47 infrared2)
	(have_image Star47 spectrograph4)
	(have_image Planet48 image3)
	(have_image Star49 image3)
	(have_image Star49 spectrograph0)
	(have_image Planet50 image3)
	(have_image Planet51 image3)
	(have_image Planet52 spectrograph4)
	(have_image Star53 infrared2)
	(have_image Star53 spectrograph0)
	(have_image Star54 spectrograph4)
	(have_image Star54 thermograph5)
	(have_image Phenomenon55 infrared2)
))

)
