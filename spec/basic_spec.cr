require "./spec_helper"

describe "GObject Binding" do
  it "works" do
    subject = Test::Subject.new
    str = "test"
    subject.receive_string_and_len(str, str.bytesize).should eq("test-4")
  end
end
