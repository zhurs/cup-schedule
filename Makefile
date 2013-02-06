default:
	cp index_template.html index.html
	perl -MLWP::Simple -i -pe 's!<link href="(.*?)"[^>]*>!"<style>".get($$1)."</style>"!ge' index.html
	perl -MLWP::Simple -i -pe 's!<script src="(.*?)"></script>!"<script>".get($$1)."</script>"!ge' index.html
