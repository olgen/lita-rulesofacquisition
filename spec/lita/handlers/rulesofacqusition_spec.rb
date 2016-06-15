require "spec_helper"

describe Lita::Handlers::RulesOfAcquisition, lita_handler: true do
  it { is_expected.to route_command('money').to(:rule) }
end
