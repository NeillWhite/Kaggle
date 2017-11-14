import pandas as pd
import os

test_df = pd.read_csv( "test.csv" );

names = test_df["Name"].tolist();
names.sort();

nNames = len( names );
for x in range(0,nNames):
    thisLine = names[x];
    splitted = thisLine.split( ',' );
    lastName = splitted[0].upper();
    commandString = 'grep -a "{}" listOfSurvivors.txt listOfVictims.txt'.format( lastName );
    grepout = os.popen( commandString ).read();
    print( thisLine );
    print( grepout );
