# Add a testclass
# run the process
# make sure the files are created
#
require 'simp-processgraph'
require_relative 'spec_helper'

describe "testing process graph with two inputs" do
  theGraph = ProcessList.new("filein", "fileout")
  theGraph.processData("filein", "fileout", "test domain")

  it "created input file [filein] given in and out names" do
     expect(File).to exist("filein")
  end

  it "created dot file [fileout] given in and out names" do
     expect(File).to exist("fileout.dot")
  end

  it "created png file given in and out names" do
     expect(File).to exist("fileout.png")
  end

end

