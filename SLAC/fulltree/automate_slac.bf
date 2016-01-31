/* Automates SLAC with the following input. Written 10/1/2014 AGM. */

BASEDIR = "/home/claire2/influenza_passaging_effects/SLAC/fulltree/";

datafile="nucleotide.fasta";
output="model.log";
treefile="nucleotide.tree";
sites="sites.dat";

inputRedirect = {};
inputRedirect["01"]="Universal";             //Genetic code
inputRedirect["02"]="New Analysis";          //New analysis
inputRedirect["03"]=BASEDIR+datafile;        //Fasta file, full path              
inputRedirect["04"]="Default";               //Use Default
inputRedirect["05"]=BASEDIR+treefile;        //Tree
inputRedirect["06"]=BASEDIR+output;          //Output
inputRedirect["07"]="Estimate + CI";              
inputRedirect["08"]="Single Ancestor Counting";
inputRedirect["09"]="Full tree";
inputRedirect["10"]="Averaged";
inputRedirect["11"]="Approximate";
inputRedirect["12"]="0.05";
inputRedirect["13"]="Export to File"; 
inputRedirect["14"]=BASEDIR+sites;
inputRedirect["15"]="Count";

ExecuteAFile ("QuickSelectionDetection.bf", inputRedirect);
