# CrimeViewer
This is one of my first programming projects. It is a Processing-2 / Java application built to visualize crime data in a temporal and spatial way. Crime Viewer is one of the prime examples of the power of Java to create dynamic and attractive interfaces for use in open-source geovisual applications. Specifically, this project was written in a very particular adaptation of Java called Processing (www.openprocessing.org). 

The Interface of Crime Viewer is designed to allow users the ability to visualize crime data in a temporal and spatial way. Attributes are pulled from a table and projected into a 2D plane (located on the right hand side), which is divided into four quadrants. Each state is visualized as a bubble, which is sized according to value, and colored according to the quadrant within which it resides. The colors in each of the bubbles are then projected back onto the map to allow users to readily identify areas of high/low values that correspond to positions within the X and Y coordinate plane. 

![Interface 1](https://github.com/atangeman/crime-viewer/blob/master/img/Interface1.PNG?raw=true)

![Interface 2](https://github.com/atangeman/crime-viewer/blob/master/img/Interface2.PNG?raw=true)

## Purpose 

The Purpose of writing the Crime Viewer application was to demonstrate the capability to interact dynamically with geovisualization in a custom and open-source environment. After working closely along-side Andre Skupin within the Department of Geography at San Diego State University, I became attached to the Processing language. Accordingly, most of the projects within this section of my portfolio were written in this language.

The Format of Crime Viewer is based entirely in .SVG image format and tabular data. Rather than relying upon shapefiles to accomplish the task, .SVG and .dbf are the preferred format. In addition, several components of Java's Swing and AWT toolkits were adapted to allow for saving on the fly. 

## Future Directions

Future directions of Crime viewer include the possibility of instant data capture using the American Community Survey's FTP site, along with pan and zoom functionality. Different iterations might include web-based development in order to reach a larger audience of end users.
