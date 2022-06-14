local DemoHandler = {
    VERSION  = "1.0.0",
    PRIORITY = 9999,
  }
  
function DemoHandler:init_worker()
    -- Implement logic for the init_worker phase here (http/stream)
    kong.log("init_worker")
end
  
  
function DemoHandler:preread(config)
    -- Implement logic for the preread phase here (stream)
    kong.log("preread")
end
  
  
function DemoHandler:certificate(config)
    -- Implement logic for the certificate phase here (http/stream)
    kong.log("certificate")
end
  
function DemoHandler:rewrite(config)
    -- Implement logic for the rewrite phase here (http)
    kong.log("rewrite")
end
  
function DemoHandler:access(config)
    -- Implement logic for the rewrite phase here (http)
    kong.log("access")
end
  
function DemoHandler:header_filter(config)
    -- Implement logic for the header_filter phase here (http)
    kong.log("header_filter")
end
  
function DemoHandler:body_filter(config)
    -- Implement logic for the body_filter phase here (http)
    kong.log("body_filter")
end
  
function DemoHandler:log(config)
    -- Implement logic for the log phase here (http/stream)
    kong.log("log")
end
  
-- return the created table, so that Kong can execute it
return DemoHandler