window.logging || window.logging = {}
window.logging.level || window.logging.level = 1
methods = ["debug","warn","info","log","error"]
for method,idx in methods
  do (method,idx)->
    logging[method] = ->
      console = window.console
      return if !console || !console[method]
      return if idx < logging.level
      console[method].apply(console, arguments)
