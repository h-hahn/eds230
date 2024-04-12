
# Create function to compute energy produced from a photovoltaic system if you know the average annual solar radiation
# E is energy (kWh),
# A is the solar panel area (m2)
# r is panel yield (0-1) (manufacture efficiency - usually around 0.2),
# PR is performance ratio (0-1) (accounting for site factors that impact efficiency usually around 0.75) 
# H is annual average solar radiation (kWh)

## Creating the function ---------------------------------------------------

# by setting r and PR equal to values, it sets default values if not specified
photovoltaic_energy <- function(A, r = 0.2, H, PR = 0.75){
  
  # save output of equation
  output <- A * r * H * PR
  
  # make the function return the equation output
  return(output)
  
}