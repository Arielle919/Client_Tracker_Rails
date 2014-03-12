Fabricator(:applicant) do
  body{ sequence(:body) { |i| "Applicant #{i}" } }
  consumers_only false
  user
end

Fabricator(:consumer_only_applicant, from: :applicant) do
  consumers_only true
end
