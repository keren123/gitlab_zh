# frozen_string_literal: true

class MockDeploymentService < Service
  default_value_for :category, 'deployment'

  def title
    'Mock 部署'
  end

  def description
    'Mock 部署服务'
  end

  def self.to_param
    'mock_deployment'
  end

  # No terminals support
  def terminals(environment)
    []
  end

  def self.supported_events
    %w()
  end

  def predefined_variables(project:, environment_name:)
    []
  end

  def can_test?
    false
  end
end
