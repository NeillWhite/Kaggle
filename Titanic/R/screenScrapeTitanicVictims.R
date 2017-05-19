source = "C:/Users/nk_wh/Documents/Kaggle/Titanic/listOfVictims.txt";

fid = file(source,"r");
lastLine = "";
# read header
thisLine = readLines(fid, n=1);
tokens = strsplit( thisLine, "\\s");
while( TRUE ){
  thisLine = readLines(fid, n=1);
  tokens = strsplit( thisLine, "\\s");
  if( ( length( tokens ) >= 1 ) && ( length( tokens[[1]]) > 1 ) ){
    firstToken = tokens[[1]][1];
    lastName = gsub( ",$", "", firstToken );
    firstChar = substr(lastName,1,1);
    if ( ( firstChar != '£' ) && lastName == toupper( lastName ) ){
      # must be last name!
      cat( "lastName = ", lastName, "\n" );
    }else{
      # not last name!  Concatenate last Line with this line
      #cat( "NOT lastname: ", thisLine, "; lastName = ", lastName, " toUpper = ", toupper(lastName), "\n" );
      cat( "NOT lastname: ", thisLine, "\n" );
    }
  }
  if ( length(thisLine) == 0 ){
    break;
  }
}

close( fid )
