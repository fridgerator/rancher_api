module Rancher::Api
  class ProjectMember
    JSON.mapping({
      description:      String,
      external_id:      {key: "externalId", type: String},
      external_id_type: {key: "externalIdType", type: String},
      role:             String,
      data:             {type: JSON::Any, setter: false},
      id:               {type: Int32, setter: false},
      name:             {type: String, setter: false},
      project_id:       {type: String, setter: false},
    })
  end
end
