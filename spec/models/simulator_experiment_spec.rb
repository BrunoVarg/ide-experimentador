require "rails_helper"

RSpec.describe SimulatorExperiment, type: :model do
  it "is valid with valid attributes" do
    simulator = Simulator.new(name: "Simulator1", disabled: false)
    experiment = Experiment.new(name: "Experiment1", disabled: false)
    simulator_experiment = SimulatorExperiment.new(simulator: simulator, experiment: experiment)
    expect(simulator_experiment).to be_valid
  end
  it "is not valid without a simulator" do
    simulator = Simulator.new(name: "Simulator1", disabled: false)
    experiment = Experiment.new(name: "Experiment1", disabled: false)
    simulator_experiment = SimulatorExperiment.new(simulator: nil, experiment: experiment)
    expect(simulator_experiment).to_not be_valid
  end
  it "is not valid without an experiment" do
    simulator = Simulator.new(name: "Simulator1", disabled: false)
    experiment = Experiment.new(name: "Experiment1", disabled: false)
    simulator_experiment = SimulatorExperiment.new(simulator: simulator, experiment: nil)
    expect(simulator_experiment).to_not be_valid
  end
end