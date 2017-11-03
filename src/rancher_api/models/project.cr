module Rancher::Api
  struct ServicesPortRange
    JSON.mapping({
      start_port: {key: "startPort", setter: false, type: Int32},
      end_port:   {key: "endPort", setter: false, type: Int32},
    })
  end

  class Project
    JSON.mapping({
      account_id:                {key: "accountId", type: String?, setter: false},
      created:                   {type: Time, setter: false},
      id:                        {type: String, setter: false},
      kind:                      {type: String, setter: false},
      removeTime:                {type: Time?, setter: false},
      removed:                   {type: Bool?, setter: false},
      transitioning:             {type: String, setter: false},
      transitioning_message:     {key: "transitioningMessage", type: String?, setter: false},
      transitioning_progress:    {key: "transitioningProgress", type: Int32?, setter: false},
      uuid:                      {type: String, setter: false},
      allow_system_role:         {key: "allowSystemRole", type: Bool},
      description:               String?,
      host_remove_delay_seconds: {key: "hostRemoveDelaySeconds", type: Int32?},
      members:                   Array(ProjectMember)?,
      name:                      String,
      project_links:             {key: "projectLinks", type: Array(self)?},
      project_template_id:       {key: "projectTemplateId", type: String},
      services_port_range:       {key: "servicesPortRange", type: ServicesPortRange},
      virtual_machine:           {key: "virtualMachine", type: Bool},
      data:                      {type: JSON::Any, setter: false},
      default_network_id:        {key: "defaultNetworkId", type: String, setter: false},
      health_state:              {key: "healthState", type: String, setter: false},
      orchestration:             {type: String, setter: false},
      version:                   {type: String, setter: false},
    })
  end
end
