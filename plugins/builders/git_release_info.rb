class Builders::GitReleaseInfo < SiteBuilder
  def build
    add_data("git_release") { latest_commit }
  end

  private

  def latest_commit
    format = "%h%x09%s%x09%aD"
    line = `git log -1 --no-merges --format="#{format}"`.strip
    sha, message, date = line.split("\t")

    {
      "sha" => sha,
      "message" => message,
      "date" => date,
    }
  rescue StandardError
    nil
  end
end
