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

  describe "nullable parameters" do
    it "can receive nil" do
      subject = Test::Subject.new
      subject.receive_nullable_object(nil).should eq(1)
    end

    it "can receive nil" do
      subject = Test::Subject.new
      subject.receive_nullable_object(subject).should eq(0)
    end
  end

  describe "parameters named using Crystal keywords" do
    it "works on gobject parameters" do
      subject = Test::Subject.new
      subject.receive_arguments_named_as_crystal_keywords(1, 2, 3, 4, 5, 6, 7, 8, 9).should eq(45)
    end

    it "works on plain structs" do
      subject = Test::Struct.new(in: 42)
      subject.in.should eq(42)
    end
  end
end
