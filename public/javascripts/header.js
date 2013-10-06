_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};
window.j = window.jQuery 

j(document).ready(function(){

	fillCarouselWithBlogEntries();

	j(window).scroll(function(){

		if(j(window).scrollTop() === 0){
			j("#myCarousel").show();
			return;
		}
		j("#myCarousel").hide();
		
	});
	 CKEDITOR.replace( 'blog_entry_html' );
});

function fillCarouselWithBlogEntries(){

	j.get('/blog_entries.json')
	.done(function(blogEntries){
		j.each(blogEntries, function(index,entry){
			var blogEntry = entry.blog_entry;
			var data = {};
			data['title'] = blogEntry.title
			data['link'] = '/blog_entries/'+blogEntry.id
			data['active_class'] = '';
			if(index === 0){
				data['active_class'] = 'active'
			}
			var template = _.template( j('#blog-item').html(), data );
			j('#blog-entries-carousel').append(template);

		});
	});

}
