# uniguimasterdetail
Project to illustrate problems with master dataset having multiple detail datasets not refreshing in uniGUI.
## Behavior
When moving from one master record to another, the related detail datasets should refresh, obtaining a result set that consists only of records that corresond to the selected master. Thus the detail datasets display only the records that are children of the master dataset.
### Interface Components
The project interface consists of three grids, one each for Master, Detail A and Detail B. They are connected to their respective FDMemTable datasets using a standard TDataSource component. Additionally, each grid has a related DB Navigator, also connected to the respective TDataSource.

Two buttons permit the saving and loading of data to facilitate testing and experimentation.
#### Data Module Components
The data module consists of three TFDMemTable datasets and their corresponding TDataSource connections. They are configured with fields that act both as keys and as a description for each row in each table. The detail FDMemTables are related to the master via the standard FireDAC methods, referring to the master and master key by the local detail key.
#### Behavior
After launching the uniGUI server, access the web page at the customary localhost:8077. Proceed as follows:
* It is recommended that you first load the test data provided. (It is located in the project directory and consists of 3 XML files. The location of this data is hard-coded in the demo.) Simply press the *Load Data* button to load the provided test data into the demo. There should be 5 Master rows, each of which has some number of associated detail rows in both the A and B detail datasets.
* Navigate the master grid in any customary manner.  
  * The "A" child grid **always refreshes appropriately.**
  * The "B" child grid only refreshes if the **number of rows** between the old master selection and the new master selection **is different.** 
    * If the **number of rows is different,** refresh occurs normally. If the **number of rows is the same** no refresh occurs. 
    * The correct records can be loaded by using the "B" child grid Refresh button.
	
It seems odd that this behavior should be different for the "second" of two identically configured detail datasets, and I have no speculation. I have another much larger application that has two instances of this (Master/Detail/Detail) using TFDQuery components that behaves in exactly the same manner.

If you trace the execution of the server and examine the result sets of the detail components, they appear to be generated correctly. Somehow uniGUI is not detecting the change and refreshing the browser controls. This is also apparent by observing that the "spinning beach ball" does not appear on the browser interface in cases where the refresh has not been made.
#### Note
The *Load Data* and *Save Data* functions are not thread-safe. Also, if you save the contents of the FDMemTables, it overwrites the existing saved contents.
