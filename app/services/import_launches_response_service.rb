class ImportLaunchesResponseService
  def initialize(offset)
    @response = HTTParty.get("https://ll.thespacedevs.com/2.2.0/launch/?limit=100&offset=#{offset}")
  end

  def call
    @response["results"].map do|result|
      launch = Launch.new

      launch.launch_service_provider = LaunchServiceProvider.new
      launch.status = Status.new
      launch.rocket = Rocket.new
      launch.rocket.configuration = Configuration.new
      launch.mission = Mission.new
      launch.mission.orbit = Orbit.new
      launch.pad = Pad.new
      launch.pad.location = Location.new

      launch.id = result["id"]
      launch.url = result["url"]
      launch.slug = result["slug"]
      launch.name = result["name"]
      launch.net = result["net"]
      launch.window_start = result["window_start"]
      launch.window_end = result["window_end"]
      launch.inhold = result["inhold"]
      launch.tbdtime = result["tbdtime"]
      launch.tbddate = result["tbddate"]
      launch.probability = result["probability"]
      launch.holdreason = result["holdreason"]
      launch.failreason = result["failreason"]
      launch.hashtag = result["hashtag"]
      launch.webcast_live = result["webcast_live"]
      launch.infographic = result["infographic"]
      launch.orbital_launch_attempt_count = result["orbital_launch_attempt_count"],
      launch.location_launch_attempt_count = result["location_launch_attempt_count"],
      launch.pad_launch_attempt_count = result["pad_launch_attempt_count"],
      launch.agency_launch_attempt_count = result["agency_launch_attempt_count"],
      launch.orbital_launch_attempt_count_year = result["orbital_launch_attempt_count_year"],
      launch.location_launch_attempt_count_year = result["location_launch_attempt_count_year"],
      launch.pad_launch_attempt_count_year = result["pad_launch_attempt_count_year"],
      launch.agency_launch_attempt_count_year = result["agency_launch_attempt_count_year"]

      launch.launch_service_provider.id = result["launch_service_provider"]["id"]
      launch.launch_service_provider.url = result["launch_service_provider"]["url"]
      launch.launch_service_provider.name = result["launch_service_provider"]["name"]
      launch.launch_service_provider.type = result["launch_service_provider"]["type"]

      launch.status.id = result["status"]["id"]
      launch.status.name = result["status"]["name"]
      launch.status.abbrev = result["status"]["abbrev"]
      launch.status.description = result["status"]["description"]

      launch.rocket.id = result["rocket"]["id"]

      launch.rocket.configuration.id = result["rocket"]["configuration"]["id"]
      launch.rocket.configuration.url = result["rocket"]["configuration"]["url"]
      launch.rocket.configuration.name = result["rocket"]["configuration"]["name"]
      launch.rocket.configuration.family = result["rocket"]["configuration"]["family"]
      launch.rocket.configuration.full_name = result["rocket"]["configuration"]["full_name"]
      launch.rocket.configuration.variant = result["rocket"]["configuration"]["variant"]

      launch.mission.id = result["mission"]["id"]
      launch.mission.name = result["mission"]["name"]
      launch.mission.description = result["mission"]["description"]
      launch.mission.launch_designator = result["mission"]["launch_designator"]
      launch.mission.type = result["mission"]["type"]

      launch.mission.orbit.id = result["mission"]["orbit"]["id"]
      launch.mission.orbit.name = result["mission"]["orbit"]["name"]
      launch.mission.orbit.abbrev = result["mission"]["orbit"]["abbrev"]

      launch.pad.id = result["pad"]["id"]
      launch.pad.url = result["pad"]["url"]
      launch.pad.agency_id = result["pad"]["agency_id"]
      launch.pad.name = result["pad"]["name"]
      launch.pad.info_url = result["pad"]["info_url"]
      launch.pad.wiki_url = result["pad"]["wiki_url"]
      launch.pad.map_url = result["pad"]["map_url"]
      launch.pad.latitude = result["pad"]["latitude"]
      launch.pad.longitude = result["pad"]["longitude"]
      launch.pad.map_image = result["pad"]["map_image"]
      launch.pad.total_launch_count = result["pad"]["total_launch_count"]

      launch.pad.location.id = result["pad"]["location"]["id"]
      launch.pad.location.url = result["pad"]["location"]["url"]
      launch.pad.location.name = result["pad"]["location"]["name"]
      launch.pad.location.country_code = result["pad"]["location"]["country_code"]
      launch.pad.location.map_image = result["pad"]["location"]["map_image"]
      launch.pad.location.total_launch_count = result["pad"]["location"]["total_launch_count"]
      launch.pad.location.total_landing_count = result["pad"]["location"]["total_landing_count"]

      launch.save!
    end
  end

  # def launch_service_provider(launch_service_provider, result)
  # end

  def status
  end

  def rocket_configuration
  end

  def mission
  end

  def mission_orbit
  end

  def pad
  end

  def pad_location
  end
end