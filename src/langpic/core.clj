(ns langpic.core
  (:require [clojure.java.io :as io ])
  (:import [net.sourceforge.tess4j Tesseract]))


(defn get-text-from-image []
  (.doOCR (Tesseract.) (io/file "resources/test-image.png")))

