# uniguimasterdetail
Project to illustrate problems with master having multiple details not refreshing in uniGUI.
## Behavior
### Components
#### Data Module
#### Interface
#### Behavior
After launching the uniGUI server, access the web page at the customary localhost:8077. The single screen will be displayed having
* A master grid  
* Two detail grids, each referring to the master grid  
* Navigate the master grid in any customary manner.  
  * The "A" child grid allways refreshes appropriately.
  * The "B" child grid only refreshes if the number of rows between the old master selection and the new master selection is different. 
    * If the number of rows is different, no refresh occurs. 
    * The correct records can be loaded by using the "B" child grid Refresh button.
