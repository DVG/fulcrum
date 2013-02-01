require 'spec_helper'

describe Task do
  let(:project) { mock_model(Project, :suppress_notifications => true) }
  let(:story)   { mock_model(Story, :project => project) }
  subject { Factory.build :task, :story => story }

  describe "validations" do
    before { subject.task = nil }
    it { subject.should_not be_valid }
  end

  describe "relationships" do
    it { subject.story.should eq story }
  end
end
