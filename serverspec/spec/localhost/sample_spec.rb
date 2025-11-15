require 'spec_helper'

listen_port = 80

describe package('nginx') do
  it { should be_installed }
end

describe port(listen_port) do
  it { should be_listening }
end

describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end

# pumaのUnixソケットを使ってテスト
describe command('curl --unix-socket /home/ec2-user/raisetech-live8-sample-app/tmp/sockets/puma.sock http://localhost -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end

describe command('git --version') do
  it 'git version is more than 2.47.1' do
    version = subject.stdout.match(/git version (\d+\.\d+\.\d+)/)[1]
    current = Gem::Version.new(version)
    baseline = Gem::Version.new('2.47.1')

    expect(current).to be > baseline
  end
end

describe command('node --version') do
    let(:disable_sudo) { true }
    its(:stdout) { should match /17\.9\.1/ }
end

describe command('yarn --version') do
    let(:disable_sudo) { true }
    its(:stdout) { should match /^1\.22\.22/ }
end

describe command('/home/ec2-user/.rbenv/shims/ruby -v') do
    its(:stdout) { should match /3\.2\.3/ }
end

describe package('mysql-community-client') do
    it { should be_installed }
end

# describe command('source ~/.bashrc && ruby -v 2>&1') do
#   its(:stdout) { should match(/ruby ([0-9.]+)/) }

#   it "should be version >= 3.2.3" do
#     version_output = subject.stdout.match(/ruby ([0-9.]+)/)[1]
#     current_version = Gem::Version.new(version_output)
#     required_version = Gem::Version.new('3.2.3')
#     expect(current_version).to be >= required_version
#   end
# end

# describe command('source ~/.bashrc && bundler -v 2>&1') do
#   its(:stdout) { should match(/version ([0-9.]+)/) }

#   it "should be version >= 2.3.14" do
#     version_output = subject.stdout.match(/version ([0-9.]+)/)[1]
#     current_version = Gem::Version.new(version_output)
#     required_version = Gem::Version.new('2.3.14')
#     expect(current_version).to be >= required_version
#   end
# end

# describe command('source ~/.bashrc && rails -v 2>&1') do
#   its(:stdout) { should match(/Rails ([0-9.]+)/) }

#   it "should be version >= 7.1.3.2" do
#     version_output = subject.stdout.match(/Rails ([0-9.]+)/)[1]
#     current_version = Gem::Version.new(version_output)
#     required_version = Gem::Version.new('7.1.3.2')
#     expect(current_version).to be >= required_version
#   end
# end

# describe command('node -v 2>&1') do
#   its(:stdout) { should match(/(v[0-9.]+)/) }

#   it "should be version >= 17.9.1" do
#     version_output = subject.stdout.match(/v([0-9.]+)/)[1]
#     current_version = Gem::Version.new(version_output)
#     required_version = Gem::Version.new('17.9.1')
#     expect(current_version).to be >= required_version
#   end
# end

# describe command('yarn -v 2>&1') do
#   its(:stdout) { should match(/([0-9.]+)/) }

#   it "should be version >= 1.22.19" do
#     version_output = subject.stdout.match(/([0-9.]+)/)[1]
#     current_version = Gem::Version.new(version_output)
#     required_version = Gem::Version.new('1.22.19')
#     expect(current_version).to be >= required_version
#   end
# end
