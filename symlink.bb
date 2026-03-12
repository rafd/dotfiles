#!/usr/bin/env bb

(require '[babashka.fs :as fs])
(require '[clojure.edn :as edn])
(require '[clojure.string :as str])

(def dotfiles-dir (str (fs/canonicalize (fs/parent *file*))))

(defn expand-home [path]
  (if (str/starts-with? path "~/")
    (str (fs/home) "/" (subs path 2))
    path))

(defn create-symlink! [source target-dir]
  (let [source-path (str dotfiles-dir "/" source)
        basename (fs/file-name source)
        target-path (str (expand-home target-dir) basename)
        target-parent (expand-home target-dir)]
    (when (not (fs/exists? source-path))
      (println "WARNING: source does not exist:" source-path)
      (System/exit 1))
    (fs/create-dirs target-parent)
    (cond
      (and (fs/sym-link? target-path)
           (= (str (fs/read-link target-path)) source-path))
      (println "  OK (exists)" target-path "->" source-path)

      (fs/sym-link? target-path)
      (do
        (println "  RELINK" target-path "->" source-path
                 "(was" (str (fs/read-link target-path)) ")")
        (fs/delete target-path)
        (fs/create-sym-link target-path source-path))

      (fs/exists? target-path)
      (println "  SKIP" target-path "(file already exists and is not a symlink)")

      :else
      (do
        (println "  LINK" target-path "->" source-path)
        (fs/create-sym-link target-path source-path)))))

(defn mappings []
  (edn/read-string (slurp (str dotfiles-dir "/mappings.edn"))))

(defn -main []
  (println "Dotfiles dir:" dotfiles-dir)
  (println)
  (doseq [[source target-dir] (mappings)]
    (create-symlink! source target-dir)))

#_(-main)
