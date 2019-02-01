require 'spec_helper'

describe 'ansible-cockroachdb::default' do

    describe user('cockroach') do
        it { should exist }
    end

    describe group('cockroach') do
        it { should exist }
    end

    describe file('/opt/cockroach') do
        it { should be_directory }
    end

    describe file('/opt/cockroach/bin') do
        it { should be_directory }
    end

    describe file('/opt/cockroach/bin/cockroach') do
        it { should be_file }
        it { should be_mode 755 }
        it { should be_owned_by 'cockroach' }
    end
end

