class ApimozController < ApplicationController
require 'json'
  def index
    #@response = Apimoz.apimoz_response


    @url = "twitter.com"
    #report_api_domain = Semrush::Report.domain("linkedin.com", :db => 'us',
    #                                                    :limit => 10,
    #                                                    :api_key => "e888e19f9ffd1e006fad7d497a8cc92d",
    #                                                    :export_columns => "Pt,Ph,Ur,Nq,Nr,Pd,Tr,Ot")
    #:db=>"us",
    #:api_key=>"e888e19f9ffd1e006fad7d497a8cc92d",
    #:limit=>100,
    #:offset=>"",
    #:export_columns=>"Ph,Ur,Nq,Nr,Pd",
    #:display_sort=>"",
    #:display_filter=>"",
    #:request_type=>:url,
    #:request=>"http://linkedin.com/",
    #:report_type=>:domain_organic_organic

    @report_api_url = Semrush::Report.domain("twitter.com",
                                                         :limit => 5,
                                                         :api_key => "e888e19f9ffd1e006fad7d497a8cc92d",
                                                         :export_columns => 'Pd, Cr, Co, Cp, Db, Hs, Nq, Nr, Ph, Po, Pp, Qu, Rt, Tc, Tr, Ts, Ur, Vu')

    #report_api_url = Semrush::Report.url("http://swansoftwaresolutions.com/", :db => 'us',
    #                                                                          :limit => 100,
    #                                                                          :api_key => "e888e19f9ffd1e006fad7d497a8cc92d",
    #                                                                          :export_columns => "Dn,Rk")

    #@report_busic = report_api_domain.basics
    @organic = @report_api_url.organic.to_json
    #@adwords = report_api_url.adwords.to_json






    ##data = report.basics                          # main report for either a domain or a phrase
    ##data = report.organic                         # organic report for either a domain, a URL or a phrase
    ##data = report.adwords                         # adwords report for either a domain or a URL
    ##data = report.competitors_organic             # for a domain
    ##data = report.competitors_adwords             # for a domain
    ##data = report.competitors_organic_by_adwords  # for a domain
    ##data = report.competitors_adwords_by_organic  # for a domain
    ##data = report.related                         # keywords related report for a phrase
    ##data = report.history_adwords
    #
    ##api = Apimoz.semrush(domain, url, phrase)
    ##@report = api.keywords_organic
  end

  def semrush_check
    @url = params[:link]
    @report_api_url = Semrush::Report.domain(params[:link],
                                             :limit => 5,
                                             :api_key => "e888e19f9ffd1e006fad7d497a8cc92d",
                                             :export_columns => 'Pd, Cr, Co, Cp, Db, Hs, Nq, Nr, Ph, Po, Pp, Qu, Rt, Tc, Tr, Ts, Ur, Vu')

    @organic = @report_api_url.organic.to_json
    p 11111111111111111111
  end
end