from pyramid.view import view_config, view_defaults


@view_config(route_name='home', renderer='home.mako')
def home_view(request):
    return {'title': 'CROW | Centralized Remote Observations Website'}


@view_defaults(route_name='sources')
class SourcesREST(object):
    def __init__(self, request):
        self.request = request

    @view_config(request_method='GET', xhr=True, renderer='json')
    def get_sources(self):
        feed_collection = self.request.db['feeds']

        feeds = []
        for feed in feed_collection.find():
            feeds.append({
                'name': feed['name'],
                'uri': feed['uri'],
                'menu_title': feed['menu_title'],
                'group': feed['group'],
                'url': feed['url']
            })

        return feeds
