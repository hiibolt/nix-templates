import matplotlib.pyplot as plt
import numpy as np
from math import sin, cos, radians
from sklearn.metrics import r2_score

plt.scatter( np.array(..), np.array(..) )
plt.xlabel( " ... " )
plt.ylabel( " ... " )

trendline = np.polyfit( np.array(..), np.array(..), 1 )
trendline_function = np.poly1d( velocity_trendline )
r2 = r2_score( .., .. )
plt.plot( .., trendline_function(..) )
plt.title( " ... " )
plt.savefig( f"foo{0+1}.png" )
plt.clf()
