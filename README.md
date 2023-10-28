# SOPHI
A complete repository with all SOPHI code (front : c#/ back cpp).  

By default, working directory (data) isn't configured (and git doesn't save changes about this setting)  
=> In Visual studio solution, need to right-click on 'SOPHI' project > Propriete de configuration > Débogage > Repertoire de travail > type the following path : $(SolutionDir)\data

Initial Architecture  
│  
├── README.md  
├── src/ - Source files for DLL  
│   ├── ImageCouleur.cpp  
│   ├── ImageNdg.cpp   
├── include/ - Headers files  
│   ├── ImageCouleur.h  
│   ├── ImageNdg.h  
├── data/ - Data (images) to work on  
│   ├── res/ - Output data  
├── bin/ - DLLs   
│   ├── ImageProcessing.dll  
├── lib/ - Librairies from DLL  
│   ├── ImageProcessing.lib  
├── ImageProcessing/ - Visual Studio project DLL  
├── SOPHI/ - Main Visual Studio project  
│   ├── main.cpp  
├── SOPHI.sln - Visual Studio Solution  
└── .gitignore  
