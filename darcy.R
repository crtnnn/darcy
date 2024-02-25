# Calculations for row A treated as a one group 
# and for the separate wells <- this one seems more plausible

# mean water levels
mean_level_dunajec <- 188.74

mean_level_rowA <- c(186.66, 187.11, 187.34, 187.08, 186.65, 186.45, 185.91)
mean_level_rowA <- mean(mean_level_rowA)

mean_level_30 <- 186.66
mean_level_31 <- 187.11
mean_level_32 <- 187.34
mean_level_33 <- 187.08
mean_level_34 <- 186.65
mean_level_35 <- 186.45
mean_level_36 <- 185.91

# difference in hydraulic head
delta_H_rowA <- mean_level_dunajec - mean_level_rowA
delta_H_rowA <- mean(delta_H_rowA)

delta_H_30 <- mean_level_dunajec - mean_level_30
delta_H_31 <- mean_level_dunajec - mean_level_31
delta_H_32 <- mean_level_dunajec - mean_level_32
delta_H_33 <- mean_level_dunajec - mean_level_33
delta_H_34 <- mean_level_dunajec - mean_level_34
delta_H_35 <- mean_level_dunajec - mean_level_35
delta_H_36 <- mean_level_dunajec - mean_level_36

# length along the flow path between locations where hydraulic heads are measured
s <- c(120, 125, 90, 110, 130, 155, 210)
s <- mean(s)

s_30 <- 120
s_31 <- 123
s_32 <- 90
s_33 <- 111
s_34 <- 130
s_35 <- 155
s_36 <- 210

# gradient of hydraulic head
I <- delta_H_rowA / s

I_30 <- delta_H_30 / s_30
I_31 <- delta_H_31 / s_31
I_32 <- delta_H_32 / s_32
I_33 <- delta_H_33 / s_33
I_34 <- delta_H_34 / s_34
I_35 <- delta_H_35 / s_35
I_36 <- delta_H_36 / s_36

# hydraulic conductivity
k <- c(0.00143, 0.00300, 0.00051, 0.00273, 0.00086, 0.00125, 0.000717)
k <- mean(k)

k_30 <- 0.00143
k_31 <- 0.00300
k_32 <- 0.00051
k_33 <- 0.00273
k_34 <- 0.00086
k_35 <- 0.00125
k_36 <- 0.000717

# groundwater velocity (m/s)
v = k * I

# effective porosity
ne = 0.25

# effective groundwater velocity
ve <- v/ne

m_per_day_ve <- ve * 60 * 60 * 24
m_per_day_v <- v * 60 * 60 * 24

traveltime_days_rowA_ve <- s / m_per_day_ve
traveltime_days_rowA_v <- s / m_per_day_v

# Separate wells
ve_30 <- (k_30 * I_30) / ne
ve_31 <- (k_31 * I_31) / ne
ve_32 <- (k_32 * I_32) / ne
ve_33 <- (k_33 * I_33) / ne
ve_34 <- (k_34 * I_34) / ne
ve_35 <- (k_35 * I_35) / ne
ve_36 <- (k_36 * I_36) / ne

m_per_day_ve_30 <- ve_30 * 60 * 60 * 24 
m_per_day_ve_31 <- ve_31 * 60 * 60 * 24
m_per_day_ve_32 <- ve_32 * 60 * 60 * 24
m_per_day_ve_33 <- ve_33 * 60 * 60 * 24
m_per_day_ve_34 <- ve_34 * 60 * 60 * 24
m_per_day_ve_35 <- ve_35 * 60 * 60 * 24
m_per_day_ve_36 <- ve_36 * 60 * 60 * 24

traveltime_days_30 <- s_30 / m_per_day_ve_30
traveltime_days_31 <- s_31 / m_per_day_ve_31
traveltime_days_32 <- s_32 / m_per_day_ve_32
traveltime_days_33 <- s_33 / m_per_day_ve_33
traveltime_days_34 <- s_34 / m_per_day_ve_34
traveltime_days_35 <- s_35 / m_per_day_ve_35
traveltime_days_36 <- s_36 / m_per_day_ve_36

# Mean travel time to separate wells
cat('mean travel time in days for S-30:', round(mean(traveltime_days_30), 0), '\n')
cat('mean travel time in days for S-31:', round(mean(traveltime_days_31), 0), '\n')
cat('mean travel time in days for S-32:', round(mean(traveltime_days_32), 0), '\n')
cat('mean travel time in days for S-33:', round(mean(traveltime_days_33), 0), '\n')
cat('mean travel time in days for S-34:', round(mean(traveltime_days_34), 0), '\n')
cat('mean travel time in days for S-35:', round(mean(traveltime_days_35), 0), '\n')
cat('mean travel time in days for S-36:', round(mean(traveltime_days_36), 0), '\n')

# Mean travel time to row A
cat('mean travel time to row A in days:', round(mean(c(traveltime_days_30, 
                                                       traveltime_days_31, 
                                                       traveltime_days_32, 
                                                       traveltime_days_33, 
                                                       traveltime_days_34, 
                                                       traveltime_days_35, 
                                                       traveltime_days_36)), 0))











