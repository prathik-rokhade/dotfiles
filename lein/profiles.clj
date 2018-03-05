{:user {:dependencies [[cljfmt "0.5.7"]
                       [io.aviso/pretty "0.1.34"]
                       [jonase/eastwood "0.2.5" :exclusions [org.clojure/clojure]]
                       [org.clojure/tools.namespace "0.2.11"]]  ; (refresh) in repl
        :plugins      [[cider/cider-nrepl "0.16.0" :exclusions [org.clojure/tools.nrepl]]
                       [cljfmt "0.5.7"]
                       [io.aviso/pretty "0.1.34"]
                       [lein-ancient "0.6.15" :exclusions [org.apache.httpcomponents/httpcore]]
                       [lein-auto "0.1.3"]
                       [lein-autoreload "0.1.1" :exclusions [org.clojure/clojure
                                                             org.apache.maven.wagon/wagon-provider-api
                                                             org.codehaus.plexus/plexus-utils]]
                       [lein-hiera "1.0.0"]
                       [lein-kibit "0.1.6"  :exclusions [org.clojure/clojure
                                                         org.clojure/tools.namespace
                                                         org.clojure/tools.reader]]
                       [venantius/ultra "0.5.2" :exclusions [org.clojure/clojure
                                                             instaparse]]
                       [venantius/yagni "0.1.4" :exclusions [org.clojure/tools.namespace]]]}
 :repl {:repl-options {:init (do
                               (require 'cljfmt.core)
                               (require '[clojure.string :as string])
                               (require '[clojure.java.io :as io]))}}}
