{
	"language": "javascript",
	"_rev": "4-cebb4999a7a4f61294ed55ae5007df50",
	"views": {
		"by_preferredLabel": {
			"map": "function(doc) { if (doc.preferredLabel != null) emit(doc.preferredLabel, doc) }"
		},
		"by_type": {
			"map": "function(doc) { if (doc.type != null) emit(doc.type, doc) }"
		},
		"by_dataset": {
			"map": "function(doc) { if (doc.dataset != null) emit(doc.dataset, doc) }"
		}
	}
}