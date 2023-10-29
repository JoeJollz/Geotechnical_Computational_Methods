# -*- coding: utf-8 -*-
"""
Created on Sat Mar 18 12:41:57 2023

@author: jrjol
"""

de=1.356
F=2.728
Hdr=9.4-2.705
Ch=0.0272 #m^2/week
Cv=0.0108864 #m^2/week
s=0

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

def U_vertical(Tv, s):
    
    for m in range(0,10**4):
        q=(2/((np.pi/2)*(2*m+1))**2*np.exp(-((np.pi/2)*(2*m+1))**2*Tv))
        s+=q
           
    Uv=1-s
    s=0
    q=0
    return Uv

t_values=[]
U_values=[]

for t in range(1,100):
    Tv=Cv*t/Hdr**2
    Uv=U_vertical(Tv, s)
    
    Th=Ch*t/de**2
    Uh=1-np.exp(-8*Th/F)
    
    U=1-(1-Uv)*(1-Uh)
    
    t_values.append(t)
    U_values.append(U)

Results=pd.DataFrame({'t value': t_values, 'U value': U_values})

plt.plot(t_values, U_values)

plt.xlabel('t_values')
plt.ylabel('U_values')
plt.title('My Graph')

plt.vlines(3, ymin=0, ymax=8, linestyle='dashed', colors='gray')
plt.hlines(8, xmin=0, xmax=3, linestyle='dashed', colors='gray')

plt.show()
