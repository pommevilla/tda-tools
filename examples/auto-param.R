library('tdatools')
source('torus_sample.R')

print('Sampling points...')
points = TorusUnif(100,1,5)

print('Computing PD...')
#Compute persistence:
pd <- diagram(points, 'point-cloud', dim_max=2,threshold=1)

print('Computing PL for 1-dim cycles...')
pl <- landscape(pd$pairs[[1]], exact=TRUE, max_x=2, dx=0.1)

print(pl$getInternal()[1,,])
