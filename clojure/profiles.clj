{:user
 {:global-vars {*warn-on-reflection* false
                *print-namespace-maps* false
                *assert* true
                *print-meta* false}}
 :profile
 {:dependencies [[com.clojure-goes-fast/clj-memory-meter "0.3.0"]]
  :jvm-opts ["-Djdk.attach.allowAttachSelf"]}
 :flowstorm
 {:dependencies [[com.github.flow-storm/clojure "RELEASE"]
                 [com.github.flow-storm/flow-storm-dbg "RELEASE"]]
  :exclusions [org.clojure/clojure]
  :jvm-opts ["-Dflowstorm.startRecording=false"
             "-Dclojure.storm.instrumentEnable=true"
             "-Dclojure.storm.instrumentAutoPrefixes=true"]}}
