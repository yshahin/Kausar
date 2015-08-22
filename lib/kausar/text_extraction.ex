defmodule Kausar.TextExtraction do
  def url_get_text(url, use_metadata \\ true, extract_links \\ false,source_text \\ "cleaned_or_raw") do
    params = [
      url: url,
      apikey: Kausar.apikey,
      useMetadata: if(use_metadata, do: 1, else: 0),
      extractLinks: if(extract_links, do: 1, else: 0),
      outputMode: "json",
      sourceText: source_text
    ]
    Kausar.request("/calls/url/URLGetText", params)
  end
end
