{
	"language": "javascript",
	"_rev": "3-12d408490d65caa37718ee65c80c14ec",
	"views": {
		"by_preferredLabel": {
			"map": "function(doc) { if (doc.preferredLabel != null) emit(doc.preferredLabel, doc) }"
		},
		"by_sameAs": {
			"map": "function(doc) { if (doc.sameAs != null) emit(doc.sameAs, doc) }"
		}
	}
}
