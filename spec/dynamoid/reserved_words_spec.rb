require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "reserved words" do
  let(:doc_class) do
    Class.new do
      include Dynamoid::Document
      field :type

      def self.name
        'Document'
      end
    end
  end

  it 'should be ok' do
    doc = doc_class.new(type: "something")
    expect(doc.save).to be_truthy
    expect { doc_class.all }.not_to raise_error
  end
end
