
{:user
 {:global-vars {*warn-on-reflection* false
                *print-namespace-maps* false
                *assert* true
                *print-meta* false}}
 :profile
 {:dependencies [[com.clojure-goes-fast/clj-memory-meter "0.3.0"]]
  :jvm-opts ["-Djdk.attach.allowAttachSelf"]}
 :flowstorm
 {:dependencies [[com.github.flow-storm/clojure "1.12.0-9" #_"RELEASE"]
                 [com.github.flow-storm/flow-storm-dbg "4.4.0" #_"RELEASE"]]
  :exclusions [org.clojure/clojure]
  :jvm-opts ["-Dflowstorm.startRecording=false"
             "-Dclojure.storm.instrumentEnable=true"
             "-Dclojure.storm.instrumentAutoPrefixes=true"]}


 :1.12-storm
 {:dependencies [[com.github.flow-storm/clojure "1.12.3-1"]
                 [com.github.flow-storm/flow-storm-dbg "4.5.8"]]
  :exclusions [org.clojure/clojure]
  :jvm-opts ["-Dflowstorm.theme=dark"]}

 :fs-web-plugin
 {:dependencies [[com.github.flow-storm/flow-storm-web-plugin "1.0.3"]]
  :jvm-opts ["-Dclojure.storm.instrumentOnlyPrefixes.webPlugin=org.httpkit.server,ring.adapter.jetty,next.jdbc.result-set"
             "-Dflowstorm.plugins.namespaces.webPlugin=flow-storm.plugins.web.all"]}

 :fs-cljs-compiler-plugin
 {:dependencies [[com.github.flow-storm/flow-storm-cljs-compiler-plugin "1.0.0-beta5"]]
  :jvm-opts ["-Dclojure.storm.instrumentOnlyPrefixes.cljsCompilerPlugin=cljs."
             "-Dflowstorm.plugins.namespaces.cljsCompilerPlugin=flow-storm.plugins.cljs-compiler.all"]}

 :fs-async-flow-plugin
 {:dependencies [[com.github.flow-storm/flow-storm-async-flow-plugin "1.0.1-alpha3"]]
  :jvm-opts ["-Dclojure.storm.instrumentOnlyPrefixes.asyncFlowPlugin=clojure.core.async.flow"
             "-Dflowstorm.plugins.namespaces.asyncFlowPlugin=flow-storm.plugins.async-flow.all"]}

 :fs-flowbook-plugin
 {:dependencies [[com.github.flow-storm/flow-storm-flowbook-plugin "1.0.0-alpha1"]]
  :jvm-opts ["-Dflowstorm.plugins.namespaces.flowbookPlugin=flow-storm.plugins.flowbook.all"]}}

