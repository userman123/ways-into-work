class TypeOfWorkOption < Option
  def self.all
    [
      new('admin', 'Administration'),
      new('catering', 'Catering'),
      new('childcare', 'Childcare'),
      new('voluntary', 'Charities / Voluntary sector'),
      new('cleaning', 'Cleaning'),
      new('media', 'Creative / media'),
      new('engineering_construction', 'Engineering / construction'),
      new('finance', 'Finance / accounting'),
      new('health_social_care', 'Health and social care'),
      new('hospitality', 'Hospitality '),
      new('hr', 'HR'),
      new('manual_trades', 'Manual trades'),
      new('manufacturing', 'Manufacturing'),
      new('marketing', 'Marketing'),
      new('retail', 'Retail'),
      new('security', 'Security'),
      new('sport_leisure', 'Sport / leisure'),
      new('teaching', 'Teaching / teaching assistant'),
      new('tech_it', 'Tech / IT'),
      new('travel', 'Travel and transport'),
      new('youth', 'Youth work')
    ]
  end
end