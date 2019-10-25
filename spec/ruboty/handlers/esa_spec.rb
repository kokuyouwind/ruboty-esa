RSpec.describe Ruboty::Handlers::Esa do
  let(:action) { double(:action) }
  let(:robot) { Ruboty::Robot.new }
  before do
    ENV['ESA_TEAM'] = 'dummy_team'
    ENV['ESA_TOKEN'] = 'dummy_token'
  end

  describe 'create_post' do
    it 'call action with post params' do
      expect(Ruboty::Esa::Actions::CreatePost).to receive(:new).and_return(action)
      expect(action).to receive(:call).with(
        name: 'path/to/post #tag',
        body_md: "# header\nline"
      )
      robot.receive(body: 'ruboty create_post { "name": "path/to/post #tag", "body_md": "# header\nline" }')
    end
  end
end
