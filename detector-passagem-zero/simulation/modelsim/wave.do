view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 10ps -dutycycle 50 -starttime 0ps -endtime 2000ps sim:/detector_passagem_zero/clock 
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 30 -starttime 0ps -endtime 2000ps sim:/detector_passagem_zero/passagem_zero 
wave modify -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 30 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/passagem_zero 
wave modify -driver freeze -pattern clock -initialvalue U -period 1ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/clock 
wave modify -driver freeze -pattern clock -initialvalue U -period 1ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/clock 
wave modify -driver freeze -pattern clock -initialvalue U -period 10ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/clock 
wave modify -driver freeze -pattern clock -initialvalue U -period 5ps -dutycycle 50 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/clock 
wave modify -driver freeze -pattern clock -initialvalue U -period 25ps -dutycycle 30 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/passagem_zero 
wave modify -driver freeze -pattern clock -initialvalue U -period 15ps -dutycycle 30 -starttime 0ps -endtime 2000ps Edit:/detector_passagem_zero/passagem_zero 
WaveCollapseAll -1
wave clipboard restore
