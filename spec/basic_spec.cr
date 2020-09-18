require "./spec_helper"

describe "GObject Binding" do
  it "works" do
    subject = Test::Subject.new
    str = "test"
    subject.receive_string_and_len(str, str.bytesize).should eq("test-4")
  end

  describe "optional byte array" do
    it "works with nil" do
      subject = Test::Subject.new
      subject.receive_optional_array_and_len(nil).should eq 0
    end

    it "works with a slice" do
      subject = Test::Subject.new
      buf = Bytes[23, 42]
      subject.receive_optional_array_and_len(buf).should eq 2
    end
  end
end
