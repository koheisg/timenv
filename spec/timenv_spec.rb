# frozen_string_literal: true

RSpec.describe Timenv do
  it "has a version number" do
    expect(Timenv::VERSION).not_to be nil
  end

  context 'when TIMENV is not set' do
    it { expect(Timenv::Time.now).to be_a(::Time) }
  end

  context 'when TIMENV is set' do
    before do
      allow(Timenv::Time).to receive(:envtime).and_return('2020-01-01 00:00:00')
    end

    it { expect(Timenv::Time.now).to be_a(::Time) }
  end
end
