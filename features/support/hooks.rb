# frozen_string_literal: true

After do
    screenshot_tmp = $driver.save_screenshot("logs/screenshot_tmp.png")
    screenshot = Base64.encode64(File.open(screenshot_tmp, "rb").read)
    embed(screenshot, "image/png", "Evidência")
end